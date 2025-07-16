Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6E92D0C7C
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752695994; cv=none; b=eSSJsSCQt6dJ53SLsL1pqQz1Mfhb2bY3W+VFe/6tqaNNiBOh7V1slRDOmVul0OhPFgKOe4NPXfS1hi8/iHLI3D7zG8NF5XBtDcEuCHWBI3QAQ+9mFyoVREFKbh7+xXsq3JC+aeJPg1O8MlD+sP07ZNDt3erjqGMwYt7MtUvLy7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752695994; c=relaxed/simple;
	bh=WTxBUyOS65bLQ2zyEbsUpfx7xBneEgpWce0pkCr5z0I=;
	h=To:Subject:From:Message-Id:Date; b=Lvows6tCVyxePY8DyeI8EOmt1fC4zLifIMwluqLxeMpAVtNsreyPhpOoPVFxZStP7lKmbwTaU84rVfaoVgwRZ9ZRTgge+8RAAV+cClHDXR6ZXHPfnB+hoy9khKjtQfp2l9xtYTj568/rLC+wr2B1cNZdflSRwPnFdOeI5i90+QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Npdnet95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Npdnet95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6F6C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752695993;
	bh=WTxBUyOS65bLQ2zyEbsUpfx7xBneEgpWce0pkCr5z0I=;
	h=To:Subject:From:Date:From;
	b=Npdnet957qZITPAnFRsKelO8Zx+eP5Bkad5Wvg0U+qq3wKr8hqaWQ4i88ie5lZcq3
	 TFtGdG0Xfot9uD2y9VSZKPI1b2D6cTd6CWrA3uV9wDqFwW45svv+UmDCP0prD3LWJo
	 1y56AeR8cd3Ce8/+zum1EfckydRv7lCS7P+Wo1V6B7vDCureXkZq6T+EPy9qbompoL
	 scn0RayNxgnryIGXjW7FD6IaCmh9kKWlAoNo79qUNvfAGEjTbkt/nWBsEw2P1lAF4J
	 P14n1d5aONXdOGS4RyoCD7f0QdCTQptmwz3gzKSEextFHEnlOccEpPiV/LCCa67N2N
	 e6t//xDpKCD9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90079C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269599358.24663.6456038833992711427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d9e515f9ebd4d5fa77b6b1f87bcb08b345c51a34deb464ea2e6c84796594cd
Date: Wed, 16 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752695993
