Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F790EAC7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785030634; cv=none; b=AW48plgtqzyY+pimbi+mSZN2v4m2TCL84VmJg9WIavzKGqCUzuzHp62ZzR7xdcc2/luI1WSQ5FRcSIcdZJG3Ut4gDJdObA6owmi3UOh50rC/VIMkf2T1QNKCb2MtyQ8Xt5juyNU7SiCVApg3B2pz7AJTNNrm/h67h4uxsxNrd4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785030634; c=relaxed/simple;
	bh=mkrtzPUzfocvreL07cPjYEKD6gokGA9Mf+HsSdKTff8=;
	h=To:Subject:From:Message-Id:Date; b=rPO4mneyhBpdP4J0aiM3CAcjy4/Sxw/YZjWHer6gupAJkGKp8P1f+Sh1VsHpXu44n7NuYeU2CurvS1Pxmz80Gil14IWCuKC9v1uu+n1ZRv6yFzNcgChubP6btZNH3r2nBqdZH/S1h4lDfJ5eDE7fxqlesmaA90QiNf2vuGyPTNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQdDE9GW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQdDE9GW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FFCC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785030633;
	bh=mkrtzPUzfocvreL07cPjYEKD6gokGA9Mf+HsSdKTff8=;
	h=To:Subject:From:Date:From;
	b=YQdDE9GWRrE24uKinWuRidCe9wC72vKfwDMbwtH78cLW74HCuFLoIC3tQYSMgaG/M
	 FX/oMbwA8J6h/NqKehP9vFmQQ906tAhoBn1vz19HCUtZ6519x+Qio9L8jNuLo4nzz5
	 Hu8Sh2NrfLu5EW65eO1cyT+FCWRrCiU++G4Vr7BO3qQF6bQ5L0CdlcpJwGsxfwsLTt
	 w8cyTdA7SX8rkwrid1s2GJZtAicV/K+XrzbYDlAD1iB/LfQ0tWnAYNSdPQ1PolJ0CK
	 DUx1vrh2WcWxvgM4C4PAHPzPOdJOlWClJUII69Ik2J9cIukOXh1gG3JQSvIva4XH67
	 1BOVd9Ml9HGyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB6FC531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503063368.11117.10332889730768280705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b0e65af4b19ae42aa221f5aefd7ae4be16889e6b06d15751efbe459e936259
Date: Sun, 26 Jul 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785030633
