Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B301E50E
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742263794; cv=none; b=NbKK+xfRGtK3rxcvBdtKhd+7D2GokdZmR/9qfts052G8xRCIsSDDfCafVnl/ad9OWKCWMPiuG841vpkw9pPEB1ljNBPSKUI66sPgEGjxjqJmFOEDKzG7R+oYdPr8ecP2wII3GrOapg9Oh0/IyfUExcZ/qEisKdu5FPBIOBohQrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742263794; c=relaxed/simple;
	bh=3Ojo0pCg5kjUMLyQmy2rqLJCgnFkLYTcsapVwoRZSkc=;
	h=To:Subject:From:Message-Id:Date; b=eUoZ2xrrWA/+A9wUVC9Ntl8HaxDAUuMj6Rtwe/A/Rmf/DsrIs0DBba8x/L+uwbyrVuL0ipNDbMW2RAlMBq03cPDkM0q1PPQ8YeHmGJHQd6zdXO2RRwM/rP0Plsn9J9RVVlhSquW6tdH7cZ7aWuNgOWagCMiFjygUr7f2u2E6vaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cghilpXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cghilpXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC34C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742263793;
	bh=3Ojo0pCg5kjUMLyQmy2rqLJCgnFkLYTcsapVwoRZSkc=;
	h=To:Subject:From:Date:From;
	b=cghilpXJbcnFXWxSvDX9mavj+YV/zbpNJKNu6TWatkOYhKQPEk4DqNkXPGRkoptvc
	 DKDzXxIZ8Jn9frYGLA7dBsCGc1ijF0sl4jqVJ0JTV5GR9G603MlU9fLqpX0cvDkbjP
	 XDmi2n1oxNFp0sghp7fuYVK2e+fsKw1h09hnlYOOzg/JGM1A6luIk+hLkcLX8jocQy
	 xOdp+deh5Y4N1biKL051t1GZmFu5cF4KD3AxniGbiSnGWenhlYmivKSLWSCs+r/F91
	 jx59TMSacYBlPsXOiZE+fcm8xmJmr4MOL+sLG7BkTXi6fvBTiQ3HAQUYMWILIKE9Ty
	 ApgMMnawPJm6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFA5C28B30
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174226379363.26579.17419388141497629529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2cbb8f22d3f46a4c6131bae333bd60e4e0adb80b04e478a4cafb0eb2cb59410
Date: Tue, 18 Mar 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742263793
