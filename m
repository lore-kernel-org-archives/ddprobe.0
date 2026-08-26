Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3881722B594
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787751634; cv=none; b=QXc4owrLbPh9Ss/8hfgdTV6UREf3L0liaIIppiz+JihGnGdv/y4WVE5CoLHOUj0DN9ZlqeaVvwLvNNYeNs9QQUI8Bnug3ESCbXS88mQVwNzMYhVwcdPv8yi4MPe3MKEXRyr3bGdqC1nxM7/ZB8G3eAuOrxgcv9rlEFbYK+RARLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787751634; c=relaxed/simple;
	bh=dT1poCjK8FX8BcRZRHbignvtQDtR+UaQx07k6pXrakA=;
	h=To:Subject:From:Message-Id:Date; b=GKF8lZ0DD7xDHUuazPF8NLy8HBykV6nyj94hn2qFMFvo8ij67WPEXKs7Y1JnwnwobhzB7LPIYNINDDy6/HBIN26d7JfLZKAkXYfKO5513apQ9kFEzdhq5UGN3CmzciZQvm8RdtDrVpiUPiSfOZ2dJw/6WkcESi6VM8XQYMPrz2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLeTCBOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLeTCBOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1BDC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787751633;
	bh=dT1poCjK8FX8BcRZRHbignvtQDtR+UaQx07k6pXrakA=;
	h=To:Subject:From:Date:From;
	b=WLeTCBOQc/FCMPOCkcnixd0tOgP2Uc9h7RhgRMoQXDUdQq3yF1oK0RdzN8bmzH+Lm
	 7NE14dE90O7nx2o06OC9O31KnbsGfK/pQgxhoY2smo8e/40cAsKyre+A947RyHjW+M
	 9jECqa9TAza2Fj/qGH31mQwJkVgWKH3f8jBM+ERT47hv31V4+gx2sM/e9D5bStxWSH
	 jhODFTrQak7HBfdxeokBGOeK9thixU7hrJRc7XdSRjO27URFLEucLToBW/pCHaXApj
	 6hpJA3qTIY43FoI7ZvznGja8/ZbusZkqoxI7gIVjQGzYR0EKwZF9A0MRbIIMcv85te
	 MPRUwS4WZoMzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD5DC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775163369.5249.10972799187353618346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363566d98c96a41e3f8f783307bf828ecf703616d394650c2465f10b4f823d5b
Date: Wed, 26 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787751633
