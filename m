Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F68D226D1F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757574594; cv=none; b=qWSPtx/xyK2WuIcFauXiONypadPE0cHVha3MBA5CN2cgP0wsYcdnMzCAsn+H8C3Qsq7CzQ7hoGZzj88i0rBIEtoviNN9XV/BwdhXynth3PrvQkIgkT9EaoTXuiAD39oWpIBEkbp2xZy+5b8V7nCmpjFkqNZHH5t3RQVVs40teY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757574594; c=relaxed/simple;
	bh=dPRxVrsFSAIuulxdKtYPRjrbjNHAqyfcmuMYizLOo2E=;
	h=To:Subject:From:Message-Id:Date; b=kB/QiXez/a1jxrxS3AY34BjO+bexokOhtcIy0qhx2NVAPQ19/q0s1zwLfkTsCYhg1LdMsRZl5i6ig412etBio1Oad/xg4fB7pQWAvtm6h9UkVLH5XQkwLOU4sJq3nXgxoEGB8KPG3Xj5c3d2xnPqHfO3X0xJOjnLZruYy8LZl6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iua1P3Tt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iua1P3Tt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6042C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757574593;
	bh=dPRxVrsFSAIuulxdKtYPRjrbjNHAqyfcmuMYizLOo2E=;
	h=To:Subject:From:Date:From;
	b=Iua1P3Tt+UzZ3XwQFNkULWWs5N0/EtsTB5H1j3ZjA/FKMOJ/xy1Ut1FSWXuU6KKqM
	 2cB8KsV1lC6HAIgamQdtffyjed23Hk//J6ZyAo517jX3j5rlH3mfkFfskRTB2KK3EG
	 4LsNYqbD1eACTG/OXOnL+HEstBY45tRikU2chyMUD1aojhXtUCA9YgFLS9k+SakCF1
	 pAjka7bxWwvXK/YVa0q8E1sVb/zqiJnP8QipqorbF10uEhUP+YgXpDJDBPC7OzsdxR
	 29F+v7LKc9fxJYD78h6ipISC4b0g/E1rkCcE5N24ubH1/rysAt/18+3s8ZuCbO+w4d
	 IS/ZPkOMd/4RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E94CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757459358.20841.17899322104267088072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5174bf2000936711d378896b1aa9e964f6091cc125f8741b53eb133f8ea3d4
Date: Thu, 11 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757574593
