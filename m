Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B923101EE
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743822594; cv=none; b=UMAXf/TfmjBWHRedRgd7gdnzQuXTeWG99W0IFHoEIe3EsuLNXa6JDJ7GIAxoFiJMvQFENZmA4qHu/WmdQ87EWa2yqrgs+oT598C+T660bBGGhVJVix5kppMPb54xxbstcJzxulGuqK8aBUMp3uxxrzrtkWLz3vppyGB2Ujqj9S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743822594; c=relaxed/simple;
	bh=nHkH7nJhejuFr7CMnI558hPzmh1MdUB5mRG2/5uLC4g=;
	h=To:Subject:From:Message-Id:Date; b=Hmqw1gt5feqyZo6tiq820BxY/lyfcAgaHAInnewo+hYYto3FP+NNPBGNX+6PbOs/1Pwqo7IxS85Ncw0y4PjsD67kuyWSaExkbIOUvV52E5/sPnLvJIwIGxk959ZxRncOWa7HP3PvjxABGFXIA+jxLBBeLyMSoFbqaOVRo+YT/ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmWEy8x9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmWEy8x9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27EDC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743822593;
	bh=nHkH7nJhejuFr7CMnI558hPzmh1MdUB5mRG2/5uLC4g=;
	h=To:Subject:From:Date:From;
	b=ZmWEy8x9ABtCK9mPZhbmjsFow2vTkNCmH6NQnkCf21K+peH5E7FkiDofe9pqPpXfO
	 BTH+k5Szcp+R3s/Dh5FYvWC7dwJLsRgTnaf+8BZ8i7EUdgTuYW8GUhRBv5yhDCBb6E
	 FAjp2UnSXVMEyZ1XcIwl1pUFjY+vvwcgoQK7YgN8LliRLywEo6PrDc5MCagWT1GVwu
	 rQIzF/HSkfvl4+YSsQXkBig62SxJe1ptOo+AFidUUHmIwO72ewOjTVcJUp0Kk0qRse
	 Smj+KRoSWRl7xbJBgSf5/8Sj4qHF2dKoCUKHF6GXqBiludRLVbRRGVnTxpGSjDl1vy
	 MH6QIlV7osvUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD63C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382259361.17066.3095280924095059768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff91f81bce2b17c04a0df75444745f7536221e40b86938370771c2f83f7151e
Date: Sat, 05 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743822593
