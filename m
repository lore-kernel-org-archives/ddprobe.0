Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4674A38B7D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787650234; cv=none; b=XXgx9lr2KCRiZiFqrL1MZNtgEzuN2o0ERXoseiwmXhcRCTpKaXv1uKjffvBXKR/3KAcodakWPcOHWmrqOIrxAK+Tg2mLKuNbA37i4d5VBU9VfL8lTxMJHk2/fBKC5C0cWOchA+t//1Iy/BO0f3LnvLJp3T0ZL1EszZ0ts1xgT24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787650234; c=relaxed/simple;
	bh=OFc4BrxgGFwxRql9v5J55k1l7Dfl2pA24/PAXa+rIVM=;
	h=To:Subject:From:Message-Id:Date; b=MTfabVKbKR9yzJvcXOOdZhYj15DARCO3JQoRGo4TjbIsUqAgYPwCjzxzJRN3XCIeF1eM+BwcLYZT9AxL3dw1wrabEkoxJ+Kcc/oo5k4S0X2FoYp+MMR0d+rbmdpXfuJ9Qdcrgnqz9zjgTBPjfss2m/1WUDth9GjaLzg+wIwnwMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCqUlIjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCqUlIjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCABDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787650233;
	bh=OFc4BrxgGFwxRql9v5J55k1l7Dfl2pA24/PAXa+rIVM=;
	h=To:Subject:From:Date:From;
	b=kCqUlIjYkOlCUSK84yapK9I/7Nuv/zLtiSqfMm7Mpo5FnVExlcgFYwUghgyXrBy9R
	 M5LamCempRfTwHBydDSJCrEGv8AZNtuQ+sImRBQuaF1gCdSQxD0w525VX3K4iNC8/9
	 n5m2b+jnWQhMkNaz2hZiNHo9KAgQK+IFiFrL57A1J8FLNyeyym1YJPj7z+B3we4NmE
	 9AVMt1J6CjAVw+ta/JX0fLTY3qLPyMHzrSDWByapJUa7moIWNZNdJO4QOYE7kHcBj6
	 GkiLJQaV7m24Dk+7IVOYfh2At3JKWLnzkHkmnDjToWSJjajWgswFWF+727PvZtu3uH
	 9z6V56x2xh+xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA51AC61DB6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765023368.27852.6782928690247960955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e22468edaef69e33ff4613cdf47594e11a9e821ce58c879bacf3c984ec5e297
Date: Tue, 25 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787650233
