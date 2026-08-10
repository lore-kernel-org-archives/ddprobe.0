Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A68530674C
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786387834; cv=none; b=dt3RY3NP/bgGHt43JQsFYP3taCVH4wF/FfFHn3TRrPytS5Xm87BBKyRD+aGZvgmRDgaYs9LPMy+G2LkSvf06Oa653Yat1nKtihK2rybFoQE9A6RnX9vIbGliKXaSqV9hwwDcD8EcYuyeMdYsRmIOffl7xlE0vc5sQVJ0CShDvQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786387834; c=relaxed/simple;
	bh=2BrbfQdC8pHPyrKP5gdP58Kd97lqFBanlhYUTzSST2w=;
	h=To:Subject:From:Message-Id:Date; b=hk7nBvOWN7yMAgEyk4Wux1KwTgXQul5cTm2S4aL66M7uE9RsE0YbgoQr0FO8xyKjfVpOAbgV7zti9o5EHhYRQNmewl3tMzfqAB8PkmQsskyqeSn0TYLJ2vOZbTSEuI8RckCrAArnLanwgeJcGdewqLMxNDJ6YaVw9JDf4xZkpn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKpKmLpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKpKmLpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C6EC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786387833;
	bh=2BrbfQdC8pHPyrKP5gdP58Kd97lqFBanlhYUTzSST2w=;
	h=To:Subject:From:Date:From;
	b=SKpKmLpdu0YAKsg4Iiq+EfdumjD/uYd/rLeXsz4hmKCsynKJYL3rotslaZR7IT30y
	 B4Fb/wxkbWg7q3pLewSNHFp2Q+/3fPrXX5Q+Y4yhR5cgcvdtMs0IyzO7ihYmyNVRA0
	 v06XCLz+lAYusjpMryiD2Ta324G/5jrfZNCtjPFCiel1sqK9+WVEsEhl2c2C5nhiZs
	 WiwG7uYnkoZjLH05XsJdRiRffJx9AydARYLiRfhOrkQ34kWkeY+AgSQHgig+LHOpSz
	 JxzEszpNmcb5VGbsyybicswgnKAsk5fo+FIydMkUZhqSQkLKyfz8UlHiooZHird5US
	 pa7/ePYI+7Fkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACACCC5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638783369.18142.13460681062661134227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d15c5247e32ba3b78ff6af8c4bdd66341c2d1902249481f951fe17156263054
Date: Mon, 10 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786387833
