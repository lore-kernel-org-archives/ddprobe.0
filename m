Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4710F29405
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749735595; cv=none; b=s8WWisalpO80dsZznPr2KYU1/cbE4bXxJi6jFP3Svh1vRG08fLtV3XPJXe5WMdYQonkKHgctDix7C5gohjN+fFj/LLkdUVg1w3+74zMvebZht1UNAD0MHYDyCDkMqU214jBsnmDru/EYJGtOmP6ac1n6ADvMZGhRcjG5L9e/iOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749735595; c=relaxed/simple;
	bh=RikIdZanXn7J/D8k6p5S3cbnWYqnsiG8txOMUdAQLLo=;
	h=To:Subject:From:Message-Id:Date; b=lHDMaGF03mCA8C6bF/YoH8syQnEYyu4eYvJTl2KJaaRJB/k3AeORu3JCLCfFfbtPchBvmufB84X/HQJZrvXlz56ezywCXgpND8IgPXwc9U0cORbIzvR/ViuIm5C7LJOwCpDIAm7hl8nGpTfxyRPZeD/O+XAPGiylhpRmWjIKie0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGmfEz/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGmfEz/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C52C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749735593;
	bh=RikIdZanXn7J/D8k6p5S3cbnWYqnsiG8txOMUdAQLLo=;
	h=To:Subject:From:Date:From;
	b=WGmfEz/KKyTwRp6pFGAZm6whQePxHSgmGZHT/kHgL4PdjlMtDxeO3EFLZ/IVtprxT
	 cDgHCOLYMO6wah0gwe0gcv5tDJbrw5mYVpB3eFLXRfpJbRJS6hKZl4oPdvrCYOFV1z
	 I7nEa0JclMlNX/hyCFxlQTSNEx/O+0EjC6v0sLtUogvDG0HerQ64uFQ8H0oFLrRUy9
	 WK1ZTxSD4HYcTcc34zausDbuBiPNiAxwjurxPuopEeFCWduc+DVwetHXIlR/D9xu7r
	 TFGsvgTQ4OtxgezW8u2VdR8DTO653u38YVMTKeDvFVD4D/BWP290X9ygaGiIUAj7Vi
	 QdES/0MOmH1mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B247C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973559362.31691.773353278047522555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4fa85b82a8f08ea581d0a89d86c3b2403bdf3df5bf537c0a8f3a452d920567b
Date: Thu, 12 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749735593
