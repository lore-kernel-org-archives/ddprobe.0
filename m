Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3D6139579
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764978174; cv=none; b=ZG3K3BBLwhdtMGStWZQlOCB62AkgY5jmlNhyp27OUF5lAXhjyv6hFfs4nWTdBfbkFf9wyjBKQR80DTGQ3bR6PS+saIfmTlCEYnNRKnybFtRoUyuwEUBDIHzb0kdr5ALG6j0Ds1Tx/m4th+3V/vhUHDUUnOADlhrUPsHuPhVmobc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764978174; c=relaxed/simple;
	bh=S8Ix7/wcr7P6mxLwCd8EgosYxS1H2gmFT87osm4D0/U=;
	h=To:Subject:From:Message-Id:Date; b=SCEbNO0XrUfZHm6Tp5okCEZZ4ajhB2WzeJinjIOgnDliHhiS7cxGMduRFCknElX3Ls1TLUtNsfZEEVrjG9mpf1p3C/DDiB99ljBzsodnQSx9kH04f2nKjmzcyLbm9ik6K8hgNAXNdOMGU9WB1+DTTl6aqtovkpuiX/VuoiDQpEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRD1Wh7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRD1Wh7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E41C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764978173;
	bh=S8Ix7/wcr7P6mxLwCd8EgosYxS1H2gmFT87osm4D0/U=;
	h=To:Subject:From:Date:From;
	b=VRD1Wh7ASQbi5zOGZnd8nzAOJQIIsOt9hmCilTkQjRSZBaWKVUwQdiOif9UA1nWAt
	 ND03Mo3aLrPDwXgrk8wqh/phZVw3i5zjf5wqsTwHN4wrFIUtfED7GLir7FeLRJlW/L
	 FuGYOLiAYD8uPDupwo5RtRRKrMzmMYz9cCupqlfMu6TfJIJAg572WeCtD8544TqeLE
	 L2aWZIU9AC4IhgiZcTAmaIqfC97K0m8gY9lo4Q5zBFKldLExXGcG7wH2Xzp1rTn9ha
	 Zg4Tp3L+U/CjQeVeemhfxPmbbNCmytc9sPOn/14gqRh05bGcd5F14fnRv8pDKLgfwK
	 63GpJa8UN36og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95453D3ABC2
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497817358.4240.2032583562287409827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58529426b0d699526368da4e424bec286bdbb3a6d4d9ce56018270be5efea1c
Date: Fri, 05 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764978173
