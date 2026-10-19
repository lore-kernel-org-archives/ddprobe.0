Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B9B48488F
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792396834; cv=none; b=ZldRcKCv64Bemk4voHfXEkgzGU1OCHBK4XfWKMWe0B4Xt7CVloKl9vVgcNXNIDiv0ucekKuefuXckhSmFNTNwS27j+ZtDzB1Zsmq0uhuGo8jMQohqObes5pmwdSew9zBpvlX80slHaS/d0Aopryh4JlA+1e47wnKYv3c4FakKlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792396834; c=relaxed/simple;
	bh=j+tjZMtjOJuCIqYJDbXVHm8gTQfVHeX0DSddMNlboBA=;
	h=To:Subject:From:Message-Id:Date; b=qvYmnBbuNpGKlBnyJvQ8dTfl+856HhfgMZsW9/rac4A3/1hPptqQ/+YFQMwTiKl3ME8IKfmquA/8UttthpG5+pM5UHZGxrGKbaDpvX72+1WDImDXdPrLVDMqHwdSqE5WvjQH8SliMpoGSSjYokphx0Pj7baNYrRLwARckq9KeTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGxkVtq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGxkVtq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 016BCC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792396834;
	bh=j+tjZMtjOJuCIqYJDbXVHm8gTQfVHeX0DSddMNlboBA=;
	h=To:Subject:From:Date:From;
	b=fGxkVtq2VhnSKg34yVyPZihxCfNFes5ibGfBBBfaqw6DLhxmI2bSouhhLQnEldsFB
	 b+7/mdhZaa5RKpl4RqmXjAieduFR3HvQzwkZFjECgvR8vpmQR5/DVFQVFhzeTUlSU9
	 9j/QXjVZJfH2FmdEzzY08RPsPNmsvify/iialjutrqV6nhjyMurMLOol3O6J2Taxd8
	 EOi5XAnnPP8CWkifknRAmJZFhFf+CvbNqq77mu+c/LH4CsCEGqKJsdQXpG2g7OrTJz
	 CWMQjmSVxlUvp2rPzkKunrpAS+am78PGFERgbhiUPdmBVs1EUvuykzr2H6WetMnxiw
	 di1btnUxghgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBFF9CCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239683382.21771.2021397506527494790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726210a28f9555f7d420c3d1a8d7d328995a370449634698126dc98cab3c63c0
Date: Mon, 19 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792396833
