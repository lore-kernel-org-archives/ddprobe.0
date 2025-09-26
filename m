Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E862741D1
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758884994; cv=none; b=LDSO5h38hiwaebtk68SjtEqLDVuP/Tw7/D2AL0pR3sG5G4j9HbU/5RaaqFnb+i9N1ebzDz1wWu4Qjkf0snhCJraCoG2Gpq2xjgAoI8J3udUt5zPPcRiLvU4fE//5Ai1pfapHUTrZ8+U8BHjV5qGlLNdZefpXW5pEW/lCCagJ1qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758884994; c=relaxed/simple;
	bh=4+fgViKO3n82M/lz9q2Rludaqf14ky25WjpuEDpoz8g=;
	h=To:Subject:From:Message-Id:Date; b=V7PIYBALDgPCqZobC8Y9zrPCtSlV7BzsnjJdgwvGsxYIuA0uCfsopztuD9+iOpOggVXkA94DPG3n5Kif+DZvzHLiOlGM3oL+AdrZJPTbokoirDb6hLNASl7RMl/h90Ur1juvruzUvOxTHs8cX+tNEIW6SeCStnUr2/5DQ9aInqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOg31W0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOg31W0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7386C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758884993;
	bh=4+fgViKO3n82M/lz9q2Rludaqf14ky25WjpuEDpoz8g=;
	h=To:Subject:From:Date:From;
	b=dOg31W0+HLUv8Lz5NQc7KC91rw2SfPnE9lH89Vvnu85LocEoalcqum4OJ/tizNPim
	 02rPGTgA4ushfGxvjLgOD3IooNBFzN73fUBvJ4GoyuenkKj/Z5H6Zp06Y0Kulo5uqt
	 xfWu1+dNmxJoi+4rinJDHeGjIwKjQsUIx5jrMZI2m3pqEH8atQj9P39BnNNWpMoxa+
	 W+A7P3mDKDtWSwka9Guz6hUlLZa0yn0K3oqZU1DdUHy4Z2+ioburUgc9ygZjZpfqPO
	 SGF6z/4Zdr8vRu5cJFx73AoX2qmJPhSHZj5HAsWc5S7lXBJFGb6SY8fQwgTfQX6xbb
	 CRZ11I/fKD6IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923FDCAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888499358.1445.4021249953330933613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540f4aec4452662a4f82071ccdbf39d2baac73970a3984d3ebe6be384afc53fb
Date: Fri, 26 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758884993
