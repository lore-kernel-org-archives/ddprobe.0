Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8231EB3D
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752908994; cv=none; b=uus6t0NhCSr/LHdtMvhRHtaXEwMrhWc4eJJc5Ts5u0Xh3Oell8C5JJ0+eZxGcAzGoe8nM9+XbFiZFLTp5fFadeJX3CwkobZjxeV9Vkpwg0MRcL4lkZcriUdRY99ImPUeWxgMluX9LmL2NmXMF0HiXaNgrlMYeOA4aPzoJVmjl+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752908994; c=relaxed/simple;
	bh=pcG5PKJny5ZYX58bq8hZNs4y3jPrnMVeQEDDUlMbAOc=;
	h=To:Subject:From:Message-Id:Date; b=k+eVzezdl9FNU0IoxdF8Omvq1VF0r4HdpKVSV32qaKNcmKI2Lcwk4XWfRsaYrkm73+muO9RhtvFXHos0eyj07y8qRblrKT5QFF/7gBrJgkRBaUB1M3iSvvYBGrN1vgoD+VqCCZDXz6tb2KtNnBXXk1hWJSSUi/p8xKUq1sELyAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJ2hLpKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJ2hLpKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DCCC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752908993;
	bh=pcG5PKJny5ZYX58bq8hZNs4y3jPrnMVeQEDDUlMbAOc=;
	h=To:Subject:From:Date:From;
	b=ZJ2hLpKvpuzWDImz3eeb3r5EUHr4mmmQOHHAbW4kRsOSMDYyA1tQ2DBunjUxxwV9k
	 OibpfNtzL6K1J5W2ITXZtLXzzAG1XZb9kdpD4wogVbzZV1xYXA8JhHOYTI2OfrylnW
	 TfDHE2y7jjok2kLR9s+SbTd5GIxG/Z5+uBoG3m2sEMjRQWH45m0mNzucrpFdBtVJsD
	 nhT7OGJ7xltc6D/JB3xBS825X6DX7+vDglpb/x/NbY8Y+MFyj06NHz24du7EA89xdl
	 D7vyCVx1X8nppFyFDMKAepAsKWBXiRk6IotxcpeDTUSplKg6jVMXv1rlyLFaIgUDI5
	 Mr4r2xIeuhKKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92244C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290899357.25666.4494591156190544435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52278a71aff6b60e7b6d18044c296164c4775e597c7770bc6d2c6bcd94ac7e2
Date: Sat, 19 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752908993
