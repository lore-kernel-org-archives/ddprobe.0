Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C8440B115
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791358234; cv=none; b=q9wLgxs5PRuszCvW+GxPNjmhZTcGOhqmTwmkm/rQ/62dJ89Z4f0LTF0W7KZ87w/lVzj33xXRM7I6woYh73Nq5iX3JEwtSXe466vBVv1aF3TaETpgqjX2fegTAjbgwac+cdGPp2eWplNvgbiDaY11OUwbblrZGlStV/SIRnPhpRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791358234; c=relaxed/simple;
	bh=4WDgCDsZbbR9Cx65pc8xXJSNyyX5zwzb2CtxCWRHmH0=;
	h=To:Subject:From:Message-Id:Date; b=KM8pCupMQVIV+URoi6NOBCVfkGxZz+3McuAbnIhsYceBuh/45di2I3LWOemyx7Uk7lDPAdXV9RRFnpfEcPCcWsjl3tYpDW2qpcZ0AgxJetonoImg0nsqoaYfkD/vyGdVZfDaYyroDUrMsT5GVkPdqflWuKdZnxxQE1kCpNzfr1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQM/HQmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQM/HQmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8FEC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791358233;
	bh=4WDgCDsZbbR9Cx65pc8xXJSNyyX5zwzb2CtxCWRHmH0=;
	h=To:Subject:From:Date:From;
	b=GQM/HQmyLK8zrZwM+RbxcifdZk1ls++qipRYdGxqlZbhYf2m01w0e1oIAnvk+cBke
	 7JCG+STeISgHTwNxWAWLJAooB0JSOTbzVT8fksBlhSOvDtXf3Ay4ZZpvk199nm2KHk
	 46DUZ9+oiiH66uBjRlffHYimUNwFbpQUD/TnN29qQtAUxCUS5++GeSnev7+/EQh0Em
	 z1NwawkuS5uohYcjJviBb38qms2uU0rrumLnC5QJGq0gorKkMa7J7yI+xC24s+UzW/
	 SO9OX09ywpcUhcFTjQ8GBKYWgM3O78dibm68enSdrMeBv8+zpSHOXIZbqFlF6Xd0F6
	 P0FJjpdUAUjXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A78CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135823368.7173.2454236558375577751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47514757881713e10047bf42f2f498a2e616447599d5c21ba09b7ce971081b42
Date: Wed, 07 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791358233
