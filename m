Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AB3BA2D
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753042194; cv=none; b=udhg/7mZFtRFaH3ixievO6hsud0SniIxjxMPlw/eX2RxrS5kLCT4A2orOlYN+iCXbNSNQv+W7C0MYq7h6ZPZWpA0cwfYEkn50f+LUH9LDiFO1f2F18QwpoJu/RoKi7V2sO4qlZ8d7IhK1VDaeU5SA+olaRBuKqfZKks6myyfW0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753042194; c=relaxed/simple;
	bh=v+wcLTCPaT6dbidXK/Xx3Kmfe1MqdMEGNzoUDxAtODw=;
	h=To:Subject:From:Message-Id:Date; b=RpoQHYHEoyX/+wgGJluOAwVXl5d0CZbDHIT23kjA5T6tO+xCGbFCvB1H/zzbuk4s6rtGuEVyol2QMCcl1oXS7r5iguWvckM+FP3sZ/Y11asawGApTEEezHUU0axXwOcOxp6ldf3dNycdtVVLzUDOGbylHR26yi9hC6HmAoxVFdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0YmMoqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0YmMoqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2887C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753042193;
	bh=v+wcLTCPaT6dbidXK/Xx3Kmfe1MqdMEGNzoUDxAtODw=;
	h=To:Subject:From:Date:From;
	b=Z0YmMoqELyw1mdV8//h8nr1Pb0OnOXeIIjZY5eYDP73mknFyMSoxqBQFS+jHJGLXb
	 /lzPfR1b4z0xQScvK79pPf3cKQItOEmVZMOvadLu/j/1LF4iZjyHBCTWJseeiOtr9t
	 FdxR//PUA+K8iZtVekCWCSvamanucigO26h3uJoapJbm++N9WIHasBCm/8aKNbIaqN
	 qQTfvOgiQU4bxYt0n9zT+vGEdI5DcsjsRwaRgJXHwbcWHBL/MFEt/ecSonOw4P3GcR
	 Eus6OW5CsyhMyqNSa+iV3T/MQC06xyLt2e9bqsRpLf6SktjVKWXvZkYyKSLRL1tllB
	 5sNYObhb3Dx6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBEEC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304219358.22470.13959770779788327178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11032b446de00849e64fb4d7a0131f5b37a0edb07340d8e7f167693fc31c6ef9
Date: Sun, 20 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753042193
