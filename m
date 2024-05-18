Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498701B95B
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 11:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716030743; cv=none; b=HdY4OosHUs/m1bAb4GgLmJMfMlFILODvrWEpg+O7d0+1EEyOW+L6fvXhHhqVZwiDeULF8LdCRUSWFP3xddyYlKOzs+EGbfloul8x7iNiW77YEAanQmy/r40kAjtaKElU86BbYZYIkt7suY9CyrqDXVYCgkBU/S9nmDwiWvJKe5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716030743; c=relaxed/simple;
	bh=pt97w7Fv79RKCN7OKBvnDgLUp4YiLB85dLBjshQVdw8=;
	h=To:Subject:From:Message-Id:Date; b=QMrl+1srP9dsRRtb+CA/yDj2h6tRPglmXhXv0zQTlpccXbBUPqiLT4Zjt5W+ZfjEGUjbaUHuIlO9xZ8WGyx0XCnCdK00Oe3IMx1kKA1kKtE12rUqSpBvcg75l0MRefJNX3OnyGIwa7oxRwcThpwCMIa1Jmf0uriTdO7TehzAL1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sp7+hou6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sp7+hou6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB958C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716030742;
	bh=pt97w7Fv79RKCN7OKBvnDgLUp4YiLB85dLBjshQVdw8=;
	h=To:Subject:From:Date:From;
	b=sp7+hou6aj4Fmm/KrFP52PCgTNabgPMIPnufGQjJTXh7s6oIf1VQcQJkfayd2wIbh
	 ymqDonygx73wknVg1wSN1kaWxiyuQ4fqPkQSLDU6WdCRby/782XTLIABYrYCEe6twB
	 eYRnTiEkqFeV6bkP946Q/ZXusNQUFDTqCqKOwVhKupInPLrVO5GoSXzRq6ok/2tU3p
	 b8A9a4QZ5pvxegdfRKGKfFbeC7wl8AuZHxrchJTwBTiFwn5ldCkyXQPZjtMbzbx3Ht
	 3Qb/+1pC9V4a+bHVrBaGV7C0xr2EtshfCuRdRTXQqqKk8cvSliUNQGbcrSCx2o/0qH
	 MQTTllyGe8iWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EA3C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171603074280.20489.3059351211834247099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73681768b07e0d986a8fe3202318fa1a1cd0cf80d8c5d59ca7a753a7dce8afb8
Date: Sat, 18 May 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716030742
