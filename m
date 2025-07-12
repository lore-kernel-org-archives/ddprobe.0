Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BEF2749DF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752322794; cv=none; b=PKOI2q3tTDNoK2iEEbWFiwpJvteZ3xViBd7CvjJfVa5zas8Kmy55KmyKbcn1AmEhZLEpXT3zPs1Gm73qn2Yb7ZDigVb+9HBaUXJpomxYDR1i+7UsogFMd4jo+RZMlCZjbtJni615FWiZdg/Tb3xfT/5RSJM6b+SXX5EUJqa9CB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752322794; c=relaxed/simple;
	bh=zh40hTRnJ3vApyu9appTDxUm1bdWQtffaJE8Sv19E+A=;
	h=To:Subject:From:Message-Id:Date; b=bN+tE6FBDlQkt4H5wqihM9CKVu1OFWWNkwmmtcR7tM/ppSdUrvJmPidHOiWhEALigB7flsSlWIUvsnGpvsclDx8FgLxXmyR9TV3VL76BOGHwMlMhmhnEh3SPtOfEkpdcw9dbRWRsmIuQ10O9SgujwVGFAZYZjfN2JFI9HGRjtBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjYmNhFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjYmNhFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E20BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752322793;
	bh=zh40hTRnJ3vApyu9appTDxUm1bdWQtffaJE8Sv19E+A=;
	h=To:Subject:From:Date:From;
	b=rjYmNhFwITGbyTRdyorEveutpd1i/SDRsefmb+l6PqCzesMORVLQOTfTtBDVSyAFJ
	 QnMs/B65xrMfmattcCR7pVqjybXTHwrSeIU0x11fo7wRurphm1AdpInj/4donbsliX
	 VEZmpGUEOp4yhgvxaoWHS2Xc+f1Af6rjFnahu+akp6nVWe9EGMDknShVKStGmjUZIu
	 7CwBAQg3dJqxCXJuodmzWvvy6hByWzWCvstUREYq3hyXSG1xBwIXO6jn98MJ1S0eqD
	 VpEGdsqFJxY6Y7WO9SErtyuV1lpXJbeJi+vmDFEfeEdaBkZsOUpHgblt8TYEj9+bjm
	 3dnSyISDDPN/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C29C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232279357.14679.14687204391188554317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2278f8bd8ba272772c6d76bbaef62258c14037b619a4911f0fd6a29e44b77f29
Date: Sat, 12 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752322793
