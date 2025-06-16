Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ABD1C27
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750043394; cv=none; b=MsKKVMqNoAuswgO+CP/7OkJ8eBVoBct3wLirHoTHrZzbmfj3lzLPu022MQyaT70PsG84j2A2iaT5pDVE7oKEFbLQ3O8d2HBNG+UFuqqOC40r7M0lDdz4mmJns4QJJfhPrC54yyKZyDnZuMhv5rtA8aUp1Bb+bGP5nxQCRTU8mxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750043394; c=relaxed/simple;
	bh=9jZqwzAGUP0RkflAiJ7PTNk87nShelfalNa9TzfNY0g=;
	h=To:Subject:From:Message-Id:Date; b=uJhuciVXt4HAyytHe9m/I6FmCVnY3WE56HYLGkkFeGPY9kp4C78tT9Xf+rSay2YneosaSYPcesi4FoQeeWFmSLCB1TC3oQ1ndp17r6HLu3ZiYm1GaVrwr0bD2X4vezt39rcpYsrcx9MjYAmuFpRmnFLEPcqO6WJyNmQRxrSeR5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okTlx9B4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okTlx9B4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE18C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750043393;
	bh=9jZqwzAGUP0RkflAiJ7PTNk87nShelfalNa9TzfNY0g=;
	h=To:Subject:From:Date:From;
	b=okTlx9B414kj6hU6wUtxGsTNBsGZ8pKaQ8svAGwyQd2WOw22P7QV6zOZttT548qb1
	 gnClAJ4luA90YsUWaZW6J8dmSKm4+rfZ/EAoVKLiEwsaPyT3E7M6O92WUXOa5Ylrs7
	 /lyVrSO8UKrrEu1HVTPG1ZEaKvOM9rb4ONvlzxiVCPf+69Ngpme8Wi84Sjaq+nSlC3
	 CIuME28N1sKcJy/VRgiBF0lfH0Emx3u1upT9CfbmADTV0tHIwKo5kMKI/QjAJQgADd
	 ChGYUZID4hkKOxp+DlQOMhgIVs1J7y9hKOz5NLUuT0fBjGuPjBkWeJpuGxygzWLkZn
	 KZ/BLO4nP/ZcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AECC71157
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004339359.18729.15981891181235260827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c8289e62b6a5c9d1117ef34a20aabe9195a23dc57761952cf9491b2dc06dea
Date: Mon, 16 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750043393
