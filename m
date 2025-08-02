Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C95139E
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754101194; cv=none; b=bOOkEP6/nf9GWR2jH6JKSMra3oFdfy6gSnypM6V/UYLRwaCkJUdGmSMzcbU3CvbNHT5wxIaGHmsNM316OyTNexT5N7OH03cQ8C1vjw0bUJKe608MQ4S1ppyOOv7R+S1T7Eob+4LcUhz5YjgagSAbP6Gum40XKO3wHBjRrevurZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754101194; c=relaxed/simple;
	bh=s10dHhT2k82oQeAwtuGjcJCdCWtuNfMBw2+9HxD5Ot0=;
	h=To:Subject:From:Message-Id:Date; b=ng8MZdNVPAqDGhdIj5SHRs8voeZOQlWahWEYPbxzNgV2sxrZMyYRj3Hch0Za3l1WNlR2pdqK9UkTqn9T4Ym/Hvvj7OeSKJc8aEcla5CNtOnBAGpRJPFiYIo/RNFu+ew+uQVMWlsYoa38Kpp7uUnwegYoTE32Wu9jpxqbg1KKDPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1SYrbEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1SYrbEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F07BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754101193;
	bh=s10dHhT2k82oQeAwtuGjcJCdCWtuNfMBw2+9HxD5Ot0=;
	h=To:Subject:From:Date:From;
	b=I1SYrbEgzMY87if2qb5V1qekVu7tKFkmFOeMGbh6CtkvRVLV0cYTMka+21kTNOt36
	 05O4QG5CFqLcACk9YSrQZHmPDGsnScsTgux7QZxdVZphS6M9uELZqsyGkliSyiinIk
	 HuKAyWJfkawW2Qvz3Q++u2SeleMLDwVJ9m4YTaXj2madwj7RIy0adleJpWIcj1fBcI
	 N9r37+pOmHuA5oO4KOVxqEYgjMxVBjLOd9hjED7S6X50AMf+9BW9HlMQ3jji5/S+MV
	 YAB9MyCEhl+5L5d4ZF2+0QExEyYqSpC4gE6ihPHUaZFzO0jvQAg0DdGdAg/hRaWTI1
	 SP2lJMpxWpr6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC24C87FCA
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410119358.2978.16906166292783870925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cbdd634675725827a7943fcc2badf77f4bd6a704957f39c2e82aa0997edb38f
Date: Sat, 02 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754101193
