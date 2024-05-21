Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD7274402
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716288803; cv=none; b=KKVXmpv3hyg5WbZiz5allQdzY2OSp8RnjAH4waV4BhsTxP9OEZkHSvX2vqtoXOnqDeKmGf6GcwRlU4C8RRpxqw2IL1m00UCvPrtUVem1U0/xgHvJZEFpcn1qes57KyyctHpf1oZ6pT+s96IVKt6OUKv9r1h3Ja9Q8QudtAocJXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716288803; c=relaxed/simple;
	bh=wKYAHKn59vfv3YWnD0Eo+eetAbQPX7cOpxnifx8DEIs=;
	h=To:Subject:From:Message-Id:Date; b=JaCQs2n+IHFxdkFDS4RVMbNYinYnJYsWSzB6kncAZwNEDhrEIwonf41kzeMkPq4aHkeSLmdi5r9mLWywHHdqqqCXGXxzcCMbQv9wIJ0o7J9uWQ50iD1KYCiRsvCKs6APGQpHBd9Dt3Hc3+gteq/O8lfWNGyU45FMk8+3f7XM7nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZJv4753; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZJv4753"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3FBC32786
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716288802;
	bh=wKYAHKn59vfv3YWnD0Eo+eetAbQPX7cOpxnifx8DEIs=;
	h=To:Subject:From:Date:From;
	b=AZJv4753vO4+YMShut9XedcFxwuZYwRfYPL6zmYz8RGthndaUME7ISHQqZ1Efb2ND
	 hH/YhDINDBRN7iiwkYuuA1AL8Fs5WBl1lNbPpBMGVMs5zLrNcVMKjDSsUZ5YnN0LNm
	 xU82TbulTBco55vyVElWqBq1Epu7t+/9DbzLyI015pnIkcEA6YaoyWGGtYumPU6nBv
	 W+10cj0kUv0CQsrKkwkqQwt0sgMR5+sjpMoJbNbZp+wik5B9KhJZbK1hzNXfHBMIGN
	 OKfRd5meg17RW8gV+FVuTdrWyyGXGnbzOjPM2t8kMG3N8dPpEd0Tg+bj/97LR+uOyJ
	 uH3GC4D7I4VxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0A9C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171628880281.8880.4622705327894473953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9603c96c605705503595980b95ae556e9f21b360171c6df211f0dc770928c58d
Date: Tue, 21 May 2024 10:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716288802
