Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D8D2C3773
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753366194; cv=none; b=QriWcadSDDQL7uZ9nKvDFt7hjVnmomRaNHdndlUFVZQJwP2ayWhagSR2W9WyZk1OAH7D8DJghQYqtI2QKbKIoz+7EmEjN3SlJAUia1I+omtatHyaRtXnpn2LXjy8vFmos+wabgz5PyYNTBdh27xZS7fMwZKGZ8F5BIsirkJqOhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753366194; c=relaxed/simple;
	bh=z11Of9zQkwmnVG7fPJNGixpnLMUIhE33aT9YZ3+loUU=;
	h=To:Subject:From:Message-Id:Date; b=e4maM/YkWbFtZzoXlplO8zUNhNa/hzuBJxuzrdvjAKtWhrOCnnx3ghtzACpVQRVBZ0zA0uripv/AsPBjqKgt8nCOxJFTVS5oeMaZ4rj7hcfITrftBHDsVNgcX+aWB/9kem8BoFXwhqDl+t45da5f5Lihk7aZ9vK9GjVZVqlMqGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YobPofWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YobPofWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E708C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753366193;
	bh=z11Of9zQkwmnVG7fPJNGixpnLMUIhE33aT9YZ3+loUU=;
	h=To:Subject:From:Date:From;
	b=YobPofWD3naF8sD4XTqxr6TXxDMXgauaGqQsh82rWZESVWrBfPLkY/AnC/+C8pcJ9
	 fjDXWHCqdGiB5yELVKQE1FpzifHusEqgxU7IPmhcQrA/GDINPg7p9C+ZoZCh/RnA7r
	 itvoDfv05WXQGGfZBEFS1NPSe+bkQRVObHlFAeImgFCDVybsKKMLttv1UtvPWxFh07
	 pm1mFDY3nOtAK/9nrEmYUz2gYT+p70V2r2shVcozIHGGHXriKyoQuypVxa1LyZl8Fs
	 m5s5K56SGcAkjiN64Vs6l7xs87zvJe3zGfthAj+YGhOsh0+GyniDS4nKPhfv9EoMaM
	 Iu1DjY1uo2GQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902ABC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336619358.7640.12373277820303519261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df61ffdcf3df89e8bc6816daa620d6298cac8e7cb9f98cf1af7983d35081293
Date: Thu, 24 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753366193
