Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3378D26E6FD
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754890795; cv=none; b=F3U54i7FZ519XaoiqkL5ixFj03qiCpgtW2L2VXGrKu7W4Kk5GzMJcfuEBZECw0l0uYyObTLR4Dtc+eMT8/CSgIrWEUeJYeFB4WVrN3MStAD96Fh2qjA5683m40yTyezTtqgyOku5S5bK/cbFpIwhaqE2YvtSGPZI2fH6Iw4Gee4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754890795; c=relaxed/simple;
	bh=HDSex+yd6c8RXvX1N5cky+2XB3bl/LxQ/IIkeWbBhn0=;
	h=To:Subject:From:Message-Id:Date; b=nuYyAlmfGwU9IBbqfcWj0t2dy/FpABsm7rBkIgE4CD5eDj4v4AVvAwY+uWVf4GSB/NbbgjIaGNK5UVTA0YxFDzuTKtVW4A279m0UQZUyLxs7mZO7yyRPoLMJgTEmTjVCddAvWtiI/7l4PcinanH/Yd5lPeP1L4PJb+zyrF70Bes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgskL776; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgskL776"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B95C4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754890793;
	bh=HDSex+yd6c8RXvX1N5cky+2XB3bl/LxQ/IIkeWbBhn0=;
	h=To:Subject:From:Date:From;
	b=rgskL776DIcHrctvGqJpAOuBCgwPbk/iROY0Sf6IYxvecxpESV6o6U7MELEadHf00
	 qFtH2m8gK3ZUidbKIVlCRekpRPInTSqH5c1IzIujr9aJaj7/FKI4PmGTRFivA4Xz24
	 2klcYkrfCHDSW6Qhaq/MO3hDi9P1gzp9GtObaVApot9kTC/LRm0lLgO/MCE+Ekfw3B
	 dopj6u3yKliOJFDfqmbgYcK+EM+Z87IFBjMPBShH30ZCS00rvK+RsBMyb1fYC37ykU
	 jeffCyF6ITI2WyyFix31qiXv8FGBKSWYerqFk4Ugp1ZSsTiZXrGD0Rmvg9w8v2aQgl
	 fVZgvMLqRAftg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9062EC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489079358.2288.15010352633695140561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 829e4d07669369a2884ec0281a61838146b831dc02fc442d3f07466d74584f55
Date: Mon, 11 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754890793
