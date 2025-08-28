Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05ED81D88B4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756357194; cv=none; b=c2nxyJrZJUKHAzIMQ2agHHmIaOREsFedQVfkOcGWiEqhv2UIPCL46hkq1VGBk7/uUZKue9oUZEz2JLD7UHfNDK8STaO7UVRCJ3w52/IGXBsUr3WoJDue42uabjbLaQZsW9aTUv+jS9Dw7J4smwz6GB2cL851qn5oY07dInMMiKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756357194; c=relaxed/simple;
	bh=KyJzJEEZfcY+EUl83Dn7hqjv7qg4pSPxtr6NHU22DOo=;
	h=To:Subject:From:Message-Id:Date; b=BZ6hhoNExXxSfGClMjfKjK2rtPojkaldK0YpuDBByd0DCeioHFljj+YA+/yCYkCigCteckseJlW9PpIjpdU+p+guwUCJlrm/Hao1MlUjM04fFG2PxMZuvsCWcUXNK7Rx4fs4clTjB4cPobIhx76S/ABWimo6XiJKjmLIrSSE4ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7vhe5pS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7vhe5pS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B18C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756357193;
	bh=KyJzJEEZfcY+EUl83Dn7hqjv7qg4pSPxtr6NHU22DOo=;
	h=To:Subject:From:Date:From;
	b=K7vhe5pSQZ14JEOiUJoFr/n3QkLWa37ALU/0YvAOCiQ8kgT2/B3L5wO/qkhNypOb8
	 k+Zb9/7dQdRl5jsEdIfp7vzhC792ip80hfVFmzTl6cszmuolpaqKIIxd3Ed5gkPvEl
	 CG0IOIC/dpxkoZvEqfEOZSyz65YPJIQwLa0eZkkYGMc2brYzDRfzQPU6RZ06bhk4Z/
	 dvt91Dx+QMucBVEXd0L3gn/Y8e1FSmOOn53J8LY3P48/yPGwxQVdy+L+/cA1J03hc5
	 rMKIKlhPvtzkMxySNqGnWHg9+RGceB5BgjxttQ7xBouIj6pnhxaxCNFgcTTJv/4zLe
	 PEtjN3ZpZEdQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA0CA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635719357.6018.9911330261732614500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b5e28b1b0cffc74bb3374df148a455975f7551de1c008dc50b3a6d11b7c4de6
Date: Thu, 28 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756357193
