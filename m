Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AF0188CC9
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753244394; cv=none; b=cwq6MgTp68eFAGD1Z1Evzqz/zbL4ymjZlTbKWoEw6Vi0VwCheQJp5OH32iTDJpAx3uurMgImR7r3I9tiROQegdwo2AoGRVbgyDZUfPQVQdclYX3h5qMt3rZGJbeHdFYlvHkToeNDMlM8eXv2++MZ426qkFvkZfMmCUh91yzZCko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753244394; c=relaxed/simple;
	bh=IwnhHbN+lW8W0QAgYTZgO3zSaUAtuKH5C/tlhPsai2c=;
	h=To:Subject:From:Message-Id:Date; b=RmvYDbcHvCInSo+pOeAop3gkThknoiJvcVITIZ5nhumaimYF+OJurVz4OQMBSEIpCzqGhScPWWKPfFZQY+oCyIoO4vkEmh/MIshSi95jh6Q53ZePKRejF2XL3UlpqA0Fr6CnyGZQkxjtiA7jpLN2ZiL9TGucUszvkyi6Kb/jg78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3cwnpcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3cwnpcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A80C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753244393;
	bh=IwnhHbN+lW8W0QAgYTZgO3zSaUAtuKH5C/tlhPsai2c=;
	h=To:Subject:From:Date:From;
	b=c3cwnpcHDSj5AaUPJMm2pLkrGdMrXl9L/cac/LCMezFnR3g6mAJ7glVtHT2QnEya6
	 DE5Qc0HwLWzPmICWHPDT0IaSVUjCE8BD+8+tRZs/3ljuUCN08I3qwCv/5JHH/8Qxf5
	 9Hx0sWEXQ476GGtDI4FGs8M6HvCCJCCvbN7B/cvlXcI0nmRQy1tWDZ0PauPgZyDX3j
	 v1ZWx7zrKeciCj2/GUVBY4u2IU7o0+vH8fBGa3Go7qbeXqRklQrgr/MgIuBZTWNdRs
	 zIs8UgC09vU34pJx4mn+hoiO3w2H8qYuUBKFBsWO8KZ13U7icevOWnge9VkoekdGkJ
	 G6qWVD5kuAO+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F456C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324439357.12497.13547235814158472032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88cb5393ddc64d751c7a58b9c592b2cf8fdb957b78e23ad0bfb3859f95999acf
Date: Wed, 23 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753244393
