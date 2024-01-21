Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B84F36AEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705837697; cv=none; b=qmdykgFlNDjiJYrAC4W91avJ2HPkRrBjQyfDY7N29txFHOquPiUFFfTRGcdmM1yKyHNHL+iGVM5T8mDO6QoNvVrKYjWtSx8Smz6bakkkx4YFpYIWkSMnaIozutvXJ7slafzQ6tqn/WPwOwi0mhQbY2MwP7LUphbqAwyazHmfVBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705837697; c=relaxed/simple;
	bh=73z8Uimg8odWCM7SyRLTqleTt9C8GxKSPfyvYC/3/20=;
	h=To:Subject:From:Message-Id:Date; b=C0L89CqBXm4O80++KC/ngtQJEeq64q5DDMFflWUcd7BK/hfpd3bLm/0Xx2i0UcRCQ2F1toBHG7kWRvun28mKnOjPP9ptFvXsUngAmneM4R5lqX/UAHZ2AwT7VrTyduNyRWutZXd4TPsr2BSY1R29Ee9oaPeDON/M1dHlJ0up854=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nS04E/a4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nS04E/a4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C76CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705837696;
	bh=73z8Uimg8odWCM7SyRLTqleTt9C8GxKSPfyvYC/3/20=;
	h=To:Subject:From:Date:From;
	b=nS04E/a40Zjs0W6bVM3QEIx+xKYgTcCWjCrtkpuZOaYbHFZ2f0yYygNPVoTnCUkK9
	 +thX53wK+Z/JnJikB1n/lsEdM8PlwUHfDLmbcmUEC6vC0s78mr14q8ZCeTA/8eWWcl
	 6Dmlso8S+eSe/l++84f0JeOFyeYtODJqO9H68gJPnkReGMl/QxbdMcY19fVMTKWnde
	 Aqwe2mP3r1ifSdOqrdw0p+/IakvndkYSr/VX1R8cPX6GvYjbgDdpxfJkVse4g0iJ6b
	 8wrFtSscs5gdEjx95dvEYbWTZS4p4K2rUliOZ/dEnW3jJY/qnKMNSoxULtoPLVQ0YS
	 ppmxm4NqMm7/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D66C47DB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170583769638.4621.9849578767094177206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89347101dbaef9f7c841e1036f274099efae563d6e148417cca6aa4b1b201943
Date: Sun, 21 Jan 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705837696
