Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E2F2E62BF
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758729594; cv=none; b=lc17khMU6IjtM9v6bMRBFcumvNIAp38vYB1aSI7N7k50riD3dXteJhxRG4ad7qouBbar5u9b82HlrPucpnq7cd51GN3xSCCNONz0pm8LrF3A+l+fUjRCz9gFSPSZURGB8xUeuOtVEwD7sVCIwHxdwfjvor88j6wJClYkcJeq9bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758729594; c=relaxed/simple;
	bh=XSAYf0HcTfSWFsV81VRkKlcZd94FFSle91GkLabvdVo=;
	h=To:Subject:From:Message-Id:Date; b=WvokCMQvMwoCvR0XXBVsD1cFeIDZ+vxYzSyO0OpY927B6MrwWTj/FEp3FmZHQ5vbBJ590v5+nMU98/uRX/Kl7fxphC6Pa7ftplYom0W3jePHh0SSxkww2D3yhV67WtVkpAgn8fPIhQP3todFobp8eg0LN4WzaAd3aIDf7dnNTGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGhRYAvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGhRYAvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4954C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758729593;
	bh=XSAYf0HcTfSWFsV81VRkKlcZd94FFSle91GkLabvdVo=;
	h=To:Subject:From:Date:From;
	b=EGhRYAvX69xzwy7BzXlTj52JYCpzsC+wACGfAV9y4/zVW/cb2xgiE3iazh7RN24/e
	 7U8J/ksoBnTSxFNAnNh7gO0wn6L2iXQsb/n3ay2/2AyyRCpEwJAIvQpfqgtyLmKuUK
	 k8a4N8eWU9K7LgfxpVwr3/9Nex+C8fiHKCeXYFTJvNthpJ7sq0tZT59Kxd39A6E+Oe
	 Q4ziksxMLvVqKuIObDOxlKPSddzDm1PdaL768jbGK72KniKmcpbBSrZQuID5H3lRjs
	 plRclOrN53S5XuJGREzsoSv/dbUW8r+z2WgrJzfcTK+ORd9MUC429GVL5w8jzlX0EA
	 T9KzbyyFeFz4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91487CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872959358.18225.4504111028526051990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41d70a5a9cd582da54ee05bfc2da9fe08ed156c4556fb7e00fe91ed3079e130
Date: Wed, 24 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758729593
