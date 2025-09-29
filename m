Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4BF5304989
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759146594; cv=none; b=n8jvQn8XFSrb/1XhhBYW8vKMv+iVJx8BVnReH0o0LGYdDP5gnRylsloi7TSKCqfi4fGt7+BHzJdCCeivGrvB94vDm7KhOnh8wv2HSMmfMZd1YlPJ0BsdZu9XKJpdYwlLGdf6/z1a+Vis8+LfkhU4P39aEryVI2gBWG327FMbavU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759146594; c=relaxed/simple;
	bh=zxGGeZE0F3VR/OO446NT4tsGCcw3LyvFlg5pE2iszQ4=;
	h=To:Subject:From:Message-Id:Date; b=PL8wvr/z+zLnq4Ma7d28ePRqEEAT+BErWl1GmoKPRu6cC7ApW53oipJ6JQER42moJg2OyVBupEs1e7zflnMEnFxmcO6xfIcg5ill+cAjYBTy5hwQCn5UQVSFDpbYF+iA2GjJLQmRkBCBMNB4vCTVvIaOxRa6l8Cm0nFG0D/e2W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=My6TFbjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="My6TFbjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6037C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759146593;
	bh=zxGGeZE0F3VR/OO446NT4tsGCcw3LyvFlg5pE2iszQ4=;
	h=To:Subject:From:Date:From;
	b=My6TFbjYCv7WTS4kXMOgVHZWXGgd1si0QlObYMLpxm3jte4Gm5Iro8ano9ocZYRXR
	 TJ02xNR6y03OhtHtMa7VmAxDaox9Cg4w5KgNjU+B+ET3d7mQRmP29YxehBCRvbyQeh
	 MexOIGEMGHBQHvV6U9/jWZsZpbgXSwAuWcHHEZprmi2lNVQRiQhUwLvDQ4d1jmCQJw
	 qTEB2+T8SGkKRRgN9kgyQjmQXWbtrlrY1Ez9ENsfI+G5VX5uVw/ciabcxyCAKFSpEA
	 bvEu5Vqrem4Eecc2eERs+cJkpSAIRoEpzMJUJtoZj5TntK4OCPatX0ZXUHvAZwZiPv
	 GxRRtOAyCaawg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9430BCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914659359.18021.5448338491169954960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e74fa6ddbf435b2f446df33b840ed1f9f2bda7b59e0f17fdeeb09a231804f13
Date: Mon, 29 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759146593
