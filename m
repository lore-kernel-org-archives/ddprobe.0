Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3907614D6EB
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724832354; cv=none; b=kDAzOAKNpnyl1FLpWXLd1BI4b1dx0BOcrIzw7OLRO/6xd3jTswFP7Dv+Km0GJmitPoF0JWQpRPMF7Cfc+nMlP8Oj2Gkg/x0ZF/IDu/5a6rPghUXBiK0mtNNaVicmlVpJiZBQRSaZsLK2SU8czJDTsy2IvCRKZL7TjBGQsIIenKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724832354; c=relaxed/simple;
	bh=B0r4s+Bq3YFjIV/Tdo7RmPb6IYcPwJ8GVmrgerz+7PA=;
	h=To:Subject:From:Message-Id:Date; b=Y82kueNwqBHcv2tz94aeMHJTj2DK6dv/uI1wZ4gUDYgpS5PBuiM0gu4pVeqQKeUO1pReNVVOlNnjlbwKWENbNi1bzUPUsNBi39VRmNSUxcD2GFdlHpeVR4ES4rcHhVq3C/30lyv7z8MWZzeheq5g4e18ODK6G+TH1P057OuCnxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdk+RKSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdk+RKSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA013C4AF68
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724832353;
	bh=B0r4s+Bq3YFjIV/Tdo7RmPb6IYcPwJ8GVmrgerz+7PA=;
	h=To:Subject:From:Date:From;
	b=kdk+RKSqnNwp0pSR5ipbJotPjnpgsfL90fo0trNCunVomm3ScAsQqF0l7pw0WsGxd
	 oVop7yQhhwHtqI+4h3HN33x1k6ro7mYgGCo0unC/VCoiKX5w7ZxfODx+rRIg1DLqU9
	 kURwLNgxwXrSuBhvFuIj29PDLo1NyiacTu4djxPdBJFkaXnPTxAiaP6DYDVIlru+Ut
	 X4ICMUBDEf1TfY0C6kaN29sBt3dQhC5XhpmM8aGmgvDzRhkKtpVFbHNEQOD6aOwGpE
	 GrSM0QUn4suBzyux2eGPHS6Au7WhIaLqvCb1aybyPTZ7NLRbArJUxo6bKE4sP5LL9C
	 8PDAu+aMhmMpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A246FC54734
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172483235365.8125.2072370259737729927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 751757b1d0d756a2648a8309ff7aec867721b7cde14d1d70f2d8bcff69b6561f
Date: Wed, 28 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724832353
