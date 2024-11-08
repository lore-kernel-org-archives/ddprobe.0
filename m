Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5241BD9EE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731028554; cv=none; b=IVdUerPzqGsMugTmewJxtvNxbysZ7t9PgpwSByWSH4rsi6sAmyY5jhxQAKKNmj10DVn/QuOTpa7+Y9+/9+RThWTb00v4jlXl0BkNGW+aY45nHuW0RqwKs6A4p5LgoGI5iuiwPIOsHt3PTtIvU7u2CANTqU9kLmKLLL6sixsduTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731028554; c=relaxed/simple;
	bh=kCCZOXgJ7b45CNAoXr1OFn68aJ5XRwSa70SMyHs9VSM=;
	h=To:Subject:From:Message-Id:Date; b=XWhbPYuzPRgVKBR4IY5Zwj9Y/kDxwTRKkW7KuUPhCykXTvzXz1CArnWqik8lsDuCJ7hgfunGbzKGAGBT3dE4VbJafDI+64odHV1M3ytt2wCT6ToNjKwnImaETDu/MlCbHnPnQkwXKumobsPFD/ObXjfNcV/A8vZGFP4m2/RcGVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbp7bHKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbp7bHKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A342AC4CECC
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731028553;
	bh=kCCZOXgJ7b45CNAoXr1OFn68aJ5XRwSa70SMyHs9VSM=;
	h=To:Subject:From:Date:From;
	b=rbp7bHKT+YbnyKqfkjZ1w+xkHHi3yoRvvtCJmyV+O64G3hMZ5Pe0Xtza/hnWHUf5s
	 b0F/5fiik8M9qThk9D6Th5fVwXRhu/G05QtErmWymfzkJSWNamaGth1RPcuwgrfbUQ
	 /zpb51WuEXrUOs6nidt2Bo+UXg4xZqF4nit0/epJnkbE0iLN58vf5Iu+OXpOrPl66m
	 kxzRodVINK3/ksxh8c3N94byCmIfJvCDfKA2BVAOTj+gbCikktXwgF0hC5BgC6OQgn
	 7/6vd9zEbhTVBfFVTuSJtV7KFdRYESyXJ04nkQDPmPY69mLGVVM7AAUkrsVugricfi
	 xKP9LqZcD6UyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC7D5D695
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173102855358.31542.16948726828824006421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea7682404e8cb49b660a326f03167c0c88702e195a00177f2f7b1c05ef8c908
Date: Fri, 08 Nov 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731028553
