Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2B416B3B7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750276193; cv=none; b=Y9h8jHjFpvLT4+lUfrmVcwEIkwlZNrqKz7QB8Zf9aI1gA2u2Ammiu8/1U+zzvXKtRfkRKxGe0sf9gyve+r+qh9D2zH2peCtnj6T9gLGMGLRGGzM/XHxGn6aCqk86eJ5vniftGXcTIGECHKhfKJjbS29uL2lOkBpSS0thldq6s7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750276193; c=relaxed/simple;
	bh=H7HAJirQF9I9a1qZYdTdOwEJg4gVO+ZardyNPiFz66k=;
	h=To:Subject:From:Message-Id:Date; b=jSYNpQzeJe3pYQdj69s18nBdRSEyLN6N7pzHhmC/cIv+rfPFcJtbVT6ORfCPdmTQVo8JKnFJPsbXGXRk5fHsnDblMDLNfJENPpXoLfi8W6geRq/+J61wcdNJ4VBQGMZq/aQNTrztkyIbiLXtsTHQN45Yk2U1Ceom2VzEkNXDLXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ia0xkSx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ia0xkSx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14CEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750276193;
	bh=H7HAJirQF9I9a1qZYdTdOwEJg4gVO+ZardyNPiFz66k=;
	h=To:Subject:From:Date:From;
	b=Ia0xkSx0bF9F2EAoIxRySlet1JxDv4J8pbgexszRV5mlcEnjL7fVyhWJ/V0mqiA18
	 6rj2BTMxRVcwsoXu+5+kUNrn2ONtxDMmmYgux/7+jRm07nd+j9yRLkE1tl/xNZVmaV
	 oeJUaaRdkfqrGPICn2vt71y0MS1LOaIWBs7NC/+9B93i3jO7/6Icl6o8tyXQaou6Ov
	 FRcs12hJFTngarbB6v+8Rz8T2LiL8SNkr7qKdTyeK5zvbwmOAHpvBZgb9Xs+uorC20
	 8cerNQbnauDHmN6Z1bbq4WZ6cOJxRvR277lFVi5PMcnnpjB/S6waeD1XKKzZtTxr9w
	 21m+2EwdJSXgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AAEC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027619358.19187.11162706192521247034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac40ea359e9302e79aa80d860ccbbe807bf4c7f90cec3221e72f832d1cbb32e
Date: Wed, 18 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750276193
