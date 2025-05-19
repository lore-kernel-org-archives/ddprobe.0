Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3778227453
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747677594; cv=none; b=mlQqceu67S/L4fzwdKw8F/nx5libW0w8NFumqxsktZp6w27YfgCm6T7Hmlmc+wnv/FvNTycmTuXvtmonG+5WSDwj3OqOZZxVd4kyhDs4DK6xMGKkkixBrigYRgBHQlxhOrXX8pULqzIICOLOIledSyHCM60os9oMCTnfC2EJXzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747677594; c=relaxed/simple;
	bh=qmzMP8XF90aBR3tairpJjMFhdz073ffR73fT+jNt1jU=;
	h=To:Subject:From:Message-Id:Date; b=DsWaUDuz/X6S/XPGkMqAom4mIM0rjCSfzC0nCC0Y2cpqnLmafvRnfYyQvStz3BuBFb3ZekZWRjDw5CYNgeVzteZ4mx3fdRSQ3z+t8BDZpo3W5XHWe6+bcVntMUYqB1Lb7pLdHR26Q+o84jwXda9k0Zrx3W1V167Kp0R2CaJCb1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEMFrzDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEMFrzDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDB3C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747677593;
	bh=qmzMP8XF90aBR3tairpJjMFhdz073ffR73fT+jNt1jU=;
	h=To:Subject:From:Date:From;
	b=FEMFrzDO6/LDpnsGKoTB7BgWqrs7v4HoqV9NyR4mEnV3daf9IMNwK6hhT6Wkng0ZC
	 53i9aTtIQ6l1tgo0YdakjYOEnUQogOukttgCXVOmcbXLqjmlXHF74BsL9GpB62OIAx
	 stx0AV4IIQDArEofKJ7+0+72oDGtchs5lMQy9j3prSjqZDBbgdME0C/o/YkHMPvQFy
	 1hgUs7Uskv3fx2ZyrXM8H6ddfQiedq3Ynu5Q2HASIY0PWsajDwviss/qUU+9Q2c8cV
	 8erefOA7yOWyOhVevqQJ6eugQRsSCOTqxDjbB9kIDx0O7lg7hPgRspBYNU6pL57qlB
	 4SsvCD1FXe7Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6D3C3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767759357.24672.6052401862227975884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bec9ddf5c4efd37cb301251649966b9b4bb9286b861cdd524938c27e647df35
Date: Mon, 19 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747677593
