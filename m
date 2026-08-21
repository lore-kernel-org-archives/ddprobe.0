Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6930D3B05BC
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787299834; cv=none; b=RatRIaZXxzaE/vmo/zCWj8fcxbyYnQHtDND7fCgFVBFDkfk7vsyTSMQjPM0twvE1tq+UvEoZGvGzPqKy8cRGLyV7B9Eqn3OSMhpN5rJwBaPYvY4POR2nGLNCfEIWCdWQPt4LeSmX1lCT2jhRPP+2FAPBE7oXfbCsWAT3Kv+sFv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787299834; c=relaxed/simple;
	bh=K9JVpcUeTEAzOUnbIBRAgmeL7oQDT6igxp4OD8kf5tc=;
	h=To:Subject:From:Message-Id:Date; b=GMw1RHrLoFqXBN6BPSy5JA8g4OloI91+CZmTNPbxgGCZ2JlhfJd2yPTfsxgKayXWh/Q2EWMf5VQp/1zqYnbTB8Pb+Ug4YyS33DFTiCMo4Lr37UzQcfLR0owqrm9TPbyvcsCu9Mqc1W0YhotvxEgvEEUPO9yCPxz84DMuDcyL4zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=db+PtNmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="db+PtNmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A3CC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787299833;
	bh=K9JVpcUeTEAzOUnbIBRAgmeL7oQDT6igxp4OD8kf5tc=;
	h=To:Subject:From:Date:From;
	b=db+PtNmzeVz9ImQig/bXqMoBvT6VYbXnziG/ah2bFqriH82bKzHuIcl8qm0mJSHJ4
	 cUiiScVVaRjhtiiD7ZkjYC54FPIVaGMfMOzN3S+6P6AVQpOwP6evoCy9GykUbRcnqc
	 YNKCrk2V9C86KLNq+kQL4+b54P91xrjiWOK52rx+C9fIMeTo+DyteY2xQ9TQHyaEfW
	 zYlOFYYDQLHZps4CEehrSZZlO5GLhOiKHszTljWaHG2htl5mOzXAdWGCM8AJzGTsIA
	 xuho3oJCwDxkDE6Smc3xPlQwhqQemapvhfeY7Lj2oWeZ2cUX/Sos3gPYcssNMAoloZ
	 kjA+8paUvs1tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE186C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729983370.19609.7723631750643217107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a38fd2ea1811095d9e639f0c3630a655a1d308560826a3fe2cdb36a8b7083b
Date: Fri, 21 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787299833
