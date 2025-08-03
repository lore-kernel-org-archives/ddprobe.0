Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A2018DB01
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754220594; cv=none; b=amC9C0Jsnff60S7NRlSuXJ77G106b/XrI1SN4hLrKQbRMKDQnE4bJxLprk6NNJ/TseEXvgzeTrLdsBgQVWzmwyuyCbvpbR27s+sLIasSmGnCwtfzbKQ/bfxMPG59CF5uWW56zyJRjB2pMoQR0U79W41rhZFSJ6OpxOP5sBwvJsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754220594; c=relaxed/simple;
	bh=uCVmR5m8h9Z2iHiq8cmxRV3GGdLym647w51/m7B2y+U=;
	h=To:Subject:From:Message-Id:Date; b=HczJxVLLiXuUsbzuVcnjG0e9Bck7FWNwidSFbrp8MF2w3QHUGIrzD4Cykp3J+QLnX/ckDKREP3CAJPPFAJH2K6Z9m6eN7jlz+tMQU8JLyoCO6tgzfTuKu79fI4QrM5R2a7QyGcpk2lxHiMCBeyNo+LFOJhknAF2zakEuekMkYhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iw1R7ic1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iw1R7ic1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E5BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754220593;
	bh=uCVmR5m8h9Z2iHiq8cmxRV3GGdLym647w51/m7B2y+U=;
	h=To:Subject:From:Date:From;
	b=iw1R7ic1UTM5OXrPVnlQdUkjKcOqiM4yyJFPTF2+2PDioa53wJhjsFA8pmY6pla+4
	 Lk2KodwqjYYolA4NHam9qzYyoVlyWbUEIRxbLtZRYDe9HJIFxEr4LVW0Zs2N0BfACj
	 M9u+W1WsR4fgKdlasZ0ZxIhIWj9zIUlkn8pnxVxkFIfeeeXRRlFBPJwqjcgvH0X1ud
	 zB8gzlvp8z+YA5dlBP2OYK56pRW01SNQn6LJGgo+28JAm7a7BkJ0M6yBKdMGGgEPha
	 TvPyoVHb3ki1JazT6DJwIsRDwpdngxQlgzWQQ0CkZpjyda2gFnyK5T3ruTNrlS1Lpz
	 BLiaEKYlJlo4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB1C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422059357.29497.17648719287888029111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c8a714ddcfad1c3d0cd5129999a4fdcf1487c20619d31cba659a5966369b4f
Date: Sun, 03 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754220593
