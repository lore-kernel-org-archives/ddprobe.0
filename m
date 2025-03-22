Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4047B4C6C
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742665795; cv=none; b=efhExlXFjYMWtStuuil8UA0GnYxgF33U9iy97qk1ULrh18xHd4VNL3qGS+Or1f7skGUYkvsLjiz+gf+pr8Q7ud5QxNCfueRIHOkv43LfCVyJKp+eR2s7izLUXIn4aR5dUrnRMzJLDlTRQTGYPaBIOiYsZZ580G1M/frLgBkVip0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742665795; c=relaxed/simple;
	bh=R7p8ixjwW5HRo1w7WgHuiBjN1NOBQq+LU+hwt050/QU=;
	h=To:Subject:From:Message-Id:Date; b=hWBeaHAXsmShWXkV9TG4fEODfBRXhsroK3EV4LRjFzHACQj99/5BvrWNj5Q+mfL4O/RbxucMfHelzyg2TfBRKbeSdTyOv63SgLVDuL6EwuLEwThV23Q+T3gm5DaAlmqZqJfJGnBG43V66WX0pNtTdGqQ4K1kKRqXHsHq7CdA6qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2BnVV3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2BnVV3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4374C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742665793;
	bh=R7p8ixjwW5HRo1w7WgHuiBjN1NOBQq+LU+hwt050/QU=;
	h=To:Subject:From:Date:From;
	b=Q2BnVV3ejN4Ql86+6I6dehFMbCid7QcUlWX4yWczci9n1fkSai8LcEWr7y/3ALXTQ
	 uoDtIjL6DtLWM7KdCIA7+HelCzQyku0okL7AuXpz1n2os7avGh39uhMk+cXDNOaq37
	 p8BKqcSzKAqpfQDWRFDtMXy3//l2Nck1MnnypZfl0YBeuu23XtBERpBmqI/pJBG6Lu
	 dPioRydm57d7AfELSM29zvLEcTor/g0XlwyJZ8QBPvwL1XTCgB/EMMKX0raVAoux2L
	 ZK4fhwdUxE4AT1oaNagG8Y9mP5jmg2ytqU7W2oQ3pcO18Tkw/1yf877auDT8w8C2tx
	 nQXJ08xdERO2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB5BC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266579360.12367.12598223368667995156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306c8a56d37660726c27f937f972fe3db2b6ead51e66398e013283ff56c1b96f
Date: Sat, 22 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742665793
