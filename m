Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49612194080
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746070194; cv=none; b=Yq8wEfJMFzNydPZmOEHPICEph0Q/6n2TkRKjUxEtiEdbCDrZUmt1yt67hvB7PGPnU1eXAQusx8HRCOayoPrNi7Gv3o427CcnOdRL7rWcKpRDAhANUyRR/vlBJgU9RUBnX6eaaOovJYOvoYi3LwMhEfium4vSrOAiMWw9KC2C/b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746070194; c=relaxed/simple;
	bh=NOXr7sqJY9b5XZrSjHX4funKpj9nlRvL1KCDLVmqp7c=;
	h=To:Subject:From:Message-Id:Date; b=ONfclHwgsKR8q803h8nYingPcBoLBLKNltjjr74Hs5wvibpPKymVR/ODl+gSg1IqOXcPQr/49tQi5su4gu/SDoYSL0IHUCl1Q8hea5RKtfNKgCXc3/37Wn6fC6NCyCvrfvxiLtRn/Sx6YyWZnS87IG85g2faMwG/TN79XWHG9y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/Tlb/Z4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/Tlb/Z4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C45C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746070193;
	bh=NOXr7sqJY9b5XZrSjHX4funKpj9nlRvL1KCDLVmqp7c=;
	h=To:Subject:From:Date:From;
	b=t/Tlb/Z4J7E3+wNBRnJV01mpeg0d/8QcOAcPRmJoO398mQBt3hKvd8V/a7oflDY/6
	 rvGbmoMMKz0WfENsDfYUUKy2gQyGD6b1EaQvAvyfK9bFY8bG4GQF/8Vqw2jlPouXHF
	 h59XzY4KvMX6cOKxHrceaBAU6T2LV7VCBq7C5Ay8XAXVzLymm0/8WHhaWrsfnyDpxn
	 cKq0/K7fV5PmkEnM7QaCWmmAis8vMpgsQ2W1+w2CKlVei0x9iSfv4VNW1ubAEwfS5W
	 /sSNfkewt2LT7vIppGV9aLQIxVFgV69J4y4GW0SXnTptstDxgL9ooq6WTFvk2hvi+b
	 A1EeveTqST9Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B89C3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607019357.17283.1670260524764338816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d567b6983f6452396dca96346721b200e250022bb26ad56b2776aea74b7cf5
Date: Thu, 01 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746070193
