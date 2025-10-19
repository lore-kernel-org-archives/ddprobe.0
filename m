Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFED238D52
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760911194; cv=none; b=cFI5iapiFDE55fBgJDoANaPM/+s0aiXuU6R9iwMhkK2UxYXZHaKPsjQBMP//iqjQClKKxd1XFvmgB1XDa8ic84v91aRcqYG+bL8boY1HkTO9I74dM2F99KWOpwc+jEbjsvEvzmU+0dbSxoIlT7pItPwfi79V1UC7Wkq8UEEDhI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760911194; c=relaxed/simple;
	bh=pAcSmqD1xAHjbZbE7HAqXsvwG3096vTaa1uwdQr3kYc=;
	h=To:Subject:From:Message-Id:Date; b=J7WuJHR+E5ChgldhqGi1IKnI10H5cBawu3Yd9wYIR92uXuJHUDzRUI5H7obMKc+8ST01j+ZUC6wU5y3ZwYX7kyTgVBllAl6g6xI8x/WJA6yfZ2aA/ELjFRvAZUevS4NZPEj3PFmVJBO603L3BsBOctzbOpkX0fDJQgYA7LIKheU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1UqYo/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1UqYo/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBDEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760911193;
	bh=pAcSmqD1xAHjbZbE7HAqXsvwG3096vTaa1uwdQr3kYc=;
	h=To:Subject:From:Date:From;
	b=e1UqYo/yRYGeLpN+0r1uXkhVYGz3CNbazMivqXpfPZ1LoVSPuvosvIeh4RMIzWcjG
	 L4vfjhc0Vh8VEy46vtsiiB21PiCx4MgEO1QyI8PCx8JY9w3QsOqkQRtCEPXok9VWq3
	 3HXjEObkAmdddPD8uh29OspBmqBYvi42+11frqESONjoDsUhjtm8NdML+t4/Q/v0DT
	 zce1dOgPLCXFPLwDnOSKMIbki0J2NtJbxQQ/GCQcp28M+/iJ4WYOGICQ5wmLbBBaC8
	 NTqe1gHdziQSDbIi1GzkxYOU85sGRz4JqO4qp9EJQ3VNrTHlnkbGyYHuyGNcp7D7i4
	 kNvgVC8AuxT0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D60CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091119357.4086.13282962964346583373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f77a7dbda7be4a79c2b0a8cb029ba7e2e122fc399e6b08f8ad1f805dc2b5cfd
Date: Sun, 19 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760911193
