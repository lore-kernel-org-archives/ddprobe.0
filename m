Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7391632C8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758999594; cv=none; b=HDMgEFry7rgSuRkz4w8brx4atZ75vMklPKzgDZu/6k/na94htI/7ssxwpcaU3fD1evky/091YnoI8R9S/NMk6gBUK66k5qECJ658R7iBNxXN5inmTBvMrOhxE2Tjmp1fUFHC82JEz+GZpEyzk5mFNgNBf5lMPljx8+DsiFvpS54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758999594; c=relaxed/simple;
	bh=E3s27nXpBitI3PUW53fWzTY3+91TW0M405LRTVTcNnQ=;
	h=To:Subject:From:Message-Id:Date; b=T1YBembqbxk2VP7PKefuxMfI3kh6MGAaR8QXGZtjPSy4MVyatgTnjZ8q9EK/Jzeh81SeKTRHqz58OQCku7FrDEeCzkKOw9GjZZBOurIdy5g1o1nCnG4iz8fKVrqpssXxiWSJNHVIruoDOThV6yLnUQ4XxVp5r6DQ7E1/IaLZDow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbycZ3aX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbycZ3aX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A002BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758999593;
	bh=E3s27nXpBitI3PUW53fWzTY3+91TW0M405LRTVTcNnQ=;
	h=To:Subject:From:Date:From;
	b=IbycZ3aX+4s/s3vIjqioAyjatpyEPe7HBWNaqUQ34N7pwgTOnhQD900P1zl/JlPgD
	 r7JFvk4ZRoysEppzr22pGSPopgErLG9NZMPxyybzEbREAkr8Cgu94y22w7T+xFjxEY
	 9f1Mq0ol4+u8/DGrjnzNHnoA6E8AyYrH+x7+7p1793fFRRstTIHAkSpdFArsPawt9u
	 xCy2pZfvnFlCzZzTIMaMCEGR1wy6FaI+ecbngmToD+Yq74iPK6DEwV2sRF47etqbuT
	 lBsLXkzBz7BhYGOctXFRnH63/yXSBEbicrJ97LY4CJpnrQ7kCQNHghgAH2grzAx99u
	 ufrJu8F8noZwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90397CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899959358.5246.14143527578298693496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc41a78bb874e63baca1cf6f9da115d04b906c2c903e0bacb3d382862b0cebf1
Date: Sat, 27 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758999593
