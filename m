Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D998DA5F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724494553; cv=none; b=bzhGtMcmbKIltyH8QWn4Z4zTQ8vOd4ejx5JySoqbxPF+sxEBsWUSOBTcE13qDP2Upxy35//K+WzNoD8kY+zz703dnEQMPKL/tjrxu8D6VhCRTaD+LY7WSyVG4XNvZQTxekLT90dgIZpqQrz1GgJ1TFUNLiHxBP/6hX0lwbL+lOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724494553; c=relaxed/simple;
	bh=9bw370QtdVzINqJ21j131VygrpXQ3U7NE8NzddJ9KDU=;
	h=To:Subject:From:Message-Id:Date; b=Lga19MgPOA0HyHe+ito4O9mpsklFlVSczU7si2D5LAmPlcoLsCW9+HRHEMVzag1CfxrdvZ2iPUFRwFrS6PVA9NjYCkaROoitw+5nxxetbar7AOlt6qqmaRpWaEiCfMq77pQdEftcN7mDlzL7uX/QJuFLGMCU7y995svXmb9wxD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9baNgcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9baNgcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF854C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724494553;
	bh=9bw370QtdVzINqJ21j131VygrpXQ3U7NE8NzddJ9KDU=;
	h=To:Subject:From:Date:From;
	b=j9baNgcKfsuhdzK2KaSzs161hGHDkc6CRn7X1Y9BMxb3jeISCoJZVqc3+RdakpsM5
	 HS9MpnErT5EQuKbtosUf6KhCUeS0kuyC0NuZ0Z14SOP4IWguuoRTJ+QJWwycaZo+V3
	 LvwHTIp3F1BL5lKZqlTr+QTcmEtTp3gK8ZIGhqArgyvz/6SLNfksTNHeNy4NcQ9AC5
	 A7eDo+aPuiDEGqu/ARGtSx+wy9Un5KtB2AOMgUvDCc+IVLOCgOQaVkrsuvOEZ+cXCe
	 s9UUflSlZdycO8g3kO2ElkYz2/F+XzKsePJZZP+1ndV9FsvTcBglhFA3Xca2fULmo8
	 XD5P1JGhe1IlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DFAC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172449455361.9680.12475206705687278859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 181f73fefcebad673394483eea9004a680367a000e386909c2a3cf10421a150f
Date: Sat, 24 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724494553
