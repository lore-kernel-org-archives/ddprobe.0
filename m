Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2F427462
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753055394; cv=none; b=NlP6CAwaRYdxiLjU6ka5NWglKlUY4SPbiQNVTWmwVLksDDNDExlvpV98VXqVnUi0nj5K//d/NfNCFC9p806P+z9IfGDZ1d01k+iKFkgd4pADChLsvXbQXKHLGXAmbm8u0c8ta8Cz8F6OAIydSzLyPoupRsfrB6uAoFN2d0uhROM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753055394; c=relaxed/simple;
	bh=919/3fnaj/LWX2tnn9nNNWN3Bdd4SynGH4gXlyEymBs=;
	h=To:Subject:From:Message-Id:Date; b=XqecmUs0DgkX3nWNx9/mQiyPanTZsLl5XyYBmGIuTQM2nE6nmZgiH1VrRLZDkqWpYLm+YgEKbOC0KTs/WOGNsdqw9KXAPsqw/XbXwQ/ldfA4cbi3dsZbMiAteQoM+KS5otaCP+xdOQj81NJwhrDAeAfc3EHRQDayrurqom5haQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9uUqqqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9uUqqqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37B5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753055393;
	bh=919/3fnaj/LWX2tnn9nNNWN3Bdd4SynGH4gXlyEymBs=;
	h=To:Subject:From:Date:From;
	b=B9uUqqqBKC2LeSufy8hy/vXxpCcm2By9FEReh0ua8K1lmy38cVwBPGNt2JBTv4Cr+
	 gWS/MhUVVGKrTsLHjztHjgDP+XWFBezBimgsPGI3SAD9gb/WkEIbkDBsvkCIFVFoy7
	 vgz7I4XC2w94b7PtFtVv6mFPPKPXkX99G7P0g6K7J4YbxcSgJQV0O1W82RLby5hfG1
	 UCHM1HmQdFLFGGOHqZOoVlFXECVf5bVWp+smqGINxQSPdj5VvMRlsOgFMeMHgZpEV2
	 7tf53eqTHQByYK05A13qiL9VTyYHHqFiQ1KF/F4Ibv4mcSTp6HTFTL0BLV4E+gNq2k
	 nKRAcNPISH3wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B96C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305539358.8230.9379105600286462291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ce99a366d21a3c455593b27717f7cdbbcfb25a9fb8548516619f8d1a254d9d
Date: Sun, 20 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753055393
