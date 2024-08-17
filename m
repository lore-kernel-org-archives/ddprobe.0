Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3067C2AF17
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723890954; cv=none; b=PLQmA6jPu/AjfPWBA4L+VZnMNxgUg9V8/apuplEDUl77vEfXDgMfX2BEsOcpVEN12XaIxHekEOMFRCJXbuOPBMIgI94ypKoPrPGIg8c62t00Y+zD2EgYLqXY51PnI/GemVU7+yWapl8fV5BBfl04rQo+Y1g4lZkPHnMBgCSuTz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723890954; c=relaxed/simple;
	bh=q8elQUi9Mw8pxltQJA8JS8Ijepaj+qE2xJ5gCuqew5g=;
	h=To:Subject:From:Message-Id:Date; b=JY2Gvht/vaG3nSKivtwHpLjsK5k/OXwuJCrAJ/dOB+Syc42ntM4kWk3AQFOPaK1xneSfOoCqoydKnC4NXiQCucQd7spAFdNJSrTloGxvtsQQ5MuurseUTiPJn1EWpFBsT1wnLRStOO6ol9cHd8EdwmmFzOdOSYCu1DZewqep3qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cR0206IO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cR0206IO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6567C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723890953;
	bh=q8elQUi9Mw8pxltQJA8JS8Ijepaj+qE2xJ5gCuqew5g=;
	h=To:Subject:From:Date:From;
	b=cR0206IOR3J0c/91UZ+5zSqeg7KQefSJ3jZOOCDVitVA1IrPl9m2LQ+nra90VPVXr
	 UjReDGjEPoGpJig7ToDgYAnTn8k0Y4FjbLr1fPLP4zzYEyWkdENB3K3+xJa10rvMFa
	 IbVIcO++sVWpvhfWMgdpQ7SJQwknrjm4EMi4rbA6pNp5diUF9+3FVDleJ1o1xfKmip
	 Gyx/zROr5I8eltYa563majz/NZIrwjhb0ht/AEYXRghR4R0o3gLlySLpi0l1bV6GQs
	 CIgBvV15hD2BiU4Dxq9RjYWMax6gpJpH0g7Et7MCDAf6oiXJR66JhEfTiKkPqC+ngH
	 uI9LPsEQrFA6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0568C52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172389095363.24932.17125168468986939605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7852dba019266b4cf2a16e91e0e02c082eedc4ad7bfd6e1978ebfb00ebc3bc84
Date: Sat, 17 Aug 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723890953
