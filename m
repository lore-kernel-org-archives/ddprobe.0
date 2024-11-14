Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A2D18BC1D
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731580554; cv=none; b=Sa96f3ZTAwPu05hnl9mnh/0zdkt3Sk6M4WC1rEU+OUWF/ufwOxohzJlf/embGzBzPkPArJJ6YB0p+iF/UfjsM0CX4MDiUSQG+deqW7kAQWc6+kyOJJpDMMJABBlFJnEtundHOt/im2h/XPdvknfptFWoslwSvXttvQ3Nj4xVECA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731580554; c=relaxed/simple;
	bh=c1rgZr1hVGfaxVa8MKQ67QD1K8vDns8Xc97r1b0L1tE=;
	h=To:Subject:From:Message-Id:Date; b=suUu3EEMCzcgUYk5/DFCHp8vsIsTXPTV+fTh15yifCZ6Mjq0UcaHJ7qCuweN+3aZDp69uhQtzm/MwD8665IAV89Qzexduxv2B9mf1NMV+8VnxEseNReCdTQkPdyM4VRobOeZIIp4xj45aSWzsbis6YEQnuUpSTit6c3dVealG4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmF7CGwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmF7CGwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C57C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731580553;
	bh=c1rgZr1hVGfaxVa8MKQ67QD1K8vDns8Xc97r1b0L1tE=;
	h=To:Subject:From:Date:From;
	b=RmF7CGwFQs1zJEzaa/PkaxnNT2BaZJBAhWzHEkjpZMtihSWvjuibH/pRmu6DApxiC
	 Lzsi8l1xnMFG0HqfasT9fNwg9TjA8VUVuUuHrE4cubfrouCVX3+cU5U96K+rInKv7P
	 SW+XRdemRNXuWi7ucimBXsilWlVrXSRj23bEIUYTLp5J69SEXbNJe0iwOsoHIMHqCk
	 vkV7+BhWmN45kSQODiMpzaxi3EWbEw1xcEDKPphP3Mj5oMbENYQCUEZPLoORWoBsHT
	 7heYJwAu2PrDCs7oRgOgCWQPvVXyrIZ9WbXrM1kfyj6t0+z2NnAu5ZujBFrxTY1x93
	 F2WIN/uqngVkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF1BD65C6C
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173158055364.28475.15203015241264959734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fc313f8ebd7c3d74ae648a04534f6ed76fa148e639d57a3c2340f8b8bcc159
Date: Thu, 14 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731580553
