Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279071E1308
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751395194; cv=none; b=ORdKykEbxiXjHgfHkufXkB8k5lscCw4X3Ay4xnWkeqRtjTL8aBzz9J2a8MWegBWjpIXy2Bdp9d1+ut2eBuDep7WwTWsx/s6oRZ9yjhy+OSBTqqwax5t1RwBMfhKgoxm5a/SG5w8/J0IDApfP4uvshdXj0ANr/yLhrhBpHM/5ZdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751395194; c=relaxed/simple;
	bh=3KEfiqDpv4DoTCZjPiHVQHOtWecRskHfHTKumh92tD4=;
	h=To:Subject:From:Message-Id:Date; b=AZeZkb5jhdBfRPvCVO2gyNOenXAhtK1k/1bDjWdH1vKgRymrGtq+DqoyDhGpB3lLDYoWagJ/mw9c44pGK5W01AucHYICiXkxUeT7oqAKb/8zju2L1cmbH3xM2cMQIRQxskVZ6N9H2+Makfth5imOwaf9JbldXr4raKcBaAJAsZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XykA9EP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XykA9EP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC84C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751395193;
	bh=3KEfiqDpv4DoTCZjPiHVQHOtWecRskHfHTKumh92tD4=;
	h=To:Subject:From:Date:From;
	b=XykA9EP3KRNeLfdVooCxuS5QaGJ/YwxtX6NDTtc0+SzkNnEUsE1kwTG3iVAcvLt45
	 1wpZiJxqTBzDuPuSEZu4FE0nV8LqQ/ZHhCZUrqNJ5E/SL/aulRDeacOk2ti2IuY4I4
	 4cCNDTFrSivWJ4wwqByRijdvgbKbwmk4ij69BQHMR1bZHJsIh2Yq4K+Hxpnm8Fq1CF
	 k1smzKYPHL9nRD42hhiBHpl6s2JgVuCaxbjBTbP/0nJcqdbpdb6D2bQF29JJDgMWzH
	 YL+P3j8/uKxs9WcW/kLmz6+oE0d+IHq2MfvX77FGRHoACa687QBKQckOAvxE6XDdMz
	 xB9uQtyxrsbpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCCEC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139519358.29547.12111699950777564168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448288aaf7dc84f5cb16cda2d04d48b3a8c688db11b3c71d43d8cd9960596d6b
Date: Tue, 01 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751395193
