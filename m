Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D63125A62E
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764117774; cv=none; b=k0k+YiBNuEQz7mRu3OHsspWR3wo1pCvMCuBYs61g1qrafan/eh1GsLX22TkYODqTZ45h4VaPCX/BExAWPTXvJN1MZZD/DDwqH0wWwLJR8mtMSUVt4gXe1Tw3VGnjonU4f1jGj7av5cHnHcJObL1vRFPY3Kf2VnlC9aEX1lK77Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764117774; c=relaxed/simple;
	bh=uzvPODOmVKSdAzlQxjeSuEm02ffMvKZVAT35D3TDBsU=;
	h=To:Subject:From:Message-Id:Date; b=sIoEdM9MBytlgEV9HZ+LBlYUr0cM4urAQQ7u6Hh2etsMIJNGkne89K/4+Nfd6aVpBOYB8pNHGjH9fxcq2TSfHrAmRhdXuEywpO4Kp+bIRlBypwMvQLI18fXq+bLbOmCPgVOR4zhlixAqLH91hymI9/v8izNwbhzmejGvsAQC9g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cABXPvdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cABXPvdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9002C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764117773;
	bh=uzvPODOmVKSdAzlQxjeSuEm02ffMvKZVAT35D3TDBsU=;
	h=To:Subject:From:Date:From;
	b=cABXPvdkM5UXpUijjQPRIfyPTe58/1gYoG7wm98TtphPKQlYKryNC8356e4ifSkxb
	 B3mgbKucV1So4DWPG1S0ej3Lv/blPbNfwR3O8ukv3QUWhGwsk6VJruujRLPcw7fjn0
	 CzKAkygIowdxwMqbBpQYBIByVEwGUg5SZtF1fJG9dIYR7r34Pn+FiVit1WyetYoE4K
	 yrz+Jl8BSQuOX45mrAdg6PMIS0AvovIs7Ez1vfmVbcbwe6WptPdFYivLYw5Bg52C+8
	 61UrAuYy3eFceD9k7qBnDy7IZ5gH2SUu4EGdvJ2+WD4IxkLorRACtK893OW858RnG3
	 l8FE44Gkk6PpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C34D10370
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411777358.5541.18386931329356989738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ec7b1e9cd1ec18ac7a4daea96debec812eced18fde0a64989279cfd9637f5a
Date: Wed, 26 Nov 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764117773
