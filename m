Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBE522578E
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741603134; cv=none; b=g1tCtBD/GPmb7MaDSCbxCGuHCBd3QrrOAfsMeNBBF6v0VFhq8kSf6iWlLiiJH3oIOShckoR1kmic1BOvq6A5p2dd/pCfiDD5p0E83M91qhT/1O1Bs4f+RWjwVGmGfwOGHvr/1LsShBPJisOpEaf85TyAcuJMyIDDdOqxWhOd41o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741603134; c=relaxed/simple;
	bh=vp5pzjmdSjwdJgOn/N7Q65rsX7b2iatqPgoQHv+7MnM=;
	h=To:Subject:From:Message-Id:Date; b=jaqOOe/+4Jr+JakzP3GgdKCXpE25ogNita4vvC1y0rdPL/5B5N4rwOugm3ZQfYis7a0Vqi17/VZ8dLS5Rq9/nJNtlT6TNityWYtjVgevNp9DNaY3HK/dhQkwZ0V/NWl2TCShZj/EPwu21cmRRTx884FjHqz9i5Fk8irHCD6ZJBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhm6Auwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhm6Auwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC7C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741603133;
	bh=vp5pzjmdSjwdJgOn/N7Q65rsX7b2iatqPgoQHv+7MnM=;
	h=To:Subject:From:Date:From;
	b=nhm6Auwm2+r2CTFS6fg/pXZQkDnMLqkQaZWiVAjzmzh/IK2JCPKeqlLMnEGbVuzM8
	 +O3D+0C1JHlUsC9zhLiT4gymMRUYPxo2m4xZCNvzfsyGAVtX2cZ1gvTWVwLPkL7Euj
	 XIqGoB/rvLqNbLLxGa5HuUvw3D6weREE9iIh3Rl5HFdbtKqJ8CNpQ1etcrLBX2HRmj
	 uCoehiHn3mCJWpZgK+Wg1RYPIDgwD7iDWz47cYXDraa1RiMSxrSR+lGeTVdz5s+kRf
	 dtpmL51g+46TYbPLiq5pB1P17+UrdRaOnLazrO2gMLroCRytOSwc3GseTqdGMo2NlY
	 vPZF+K8ISWnTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90629C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160313358.16744.8210137875610271716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc0e4d24e52cb9257eafc19887a6871971929554a5d962563b3effdd697501e
Date: Mon, 10 Mar 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741603133
