Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2252A213E89
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777568854; cv=none; b=MC2VTC+k/8K6U84D1cqGGunIhzvDkKT3dV7FscW7t+Vh7MMen393grO5nL0/nEqFSGIW687vHTCJVpkJj7mF0UcRKVUQG2Wba9RusgXA4e1ZrXXTH/LXRNjh/m9qPIFYHvhRgIdYGmcBwdfeZIPK3fNIE+r4Nam2ox64PJz8ghA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777568854; c=relaxed/simple;
	bh=8EezRgHLc3aCwj5W7w9+HWYLmUF5jlNWJATMSBchLXs=;
	h=To:Subject:From:Message-Id:Date; b=nqGlNovo5lM7bYrLkhRKLuH18IA42a4UGUmVBAd3pZTfm8dRz23RvRnpieOo3w4zK728KXwXjt/Hu9JKwFXdmMiv3P/DGPF5bNDoKubQq+u1V9cM0tJVURRTcsJPGWP70N361aDDXmYFbFoA2qt3pd+Os+VERo0xykdbGTJyFbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZReW90qR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZReW90qR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBED2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777568853;
	bh=8EezRgHLc3aCwj5W7w9+HWYLmUF5jlNWJATMSBchLXs=;
	h=To:Subject:From:Date:From;
	b=ZReW90qRznhs6goWT1dKIQep78TrW+1ONcFHQJZCxNWfvLiHp/oDOu/56DCndJEgN
	 khXPx4PdxLq14ii6cmBwYUT16NuAPxV27IOkGE8ENL7S7b4P7ilH06LyxKamP9lZFy
	 ln9bT1KxmDKqiYvlIMVGgt9xVcoD8Zjt2pFDEjTgFaUdO7IIk5z0+7xEjRj+ymOqGz
	 yoAuvU8i8WIVNd/+1ko5p1bd17bStQMJRCzEGAWym3au6QRonVUn6zQqX7o7JgtEJy
	 okutOG0T6MBIr8eHyzblfkC/EYm/vwF0PaVmRXYVoYIZDc7HKMd22mY9ARh66wWeka
	 OZGUi0+BmjOCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB90CCD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756885369.8557.5205576138699105068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ffb9a1b577c1333064f00729df747f37c669a44ed66784520721d332ca986f3
Date: Thu, 30 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777568853
