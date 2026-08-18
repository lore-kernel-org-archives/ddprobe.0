Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C52A2D73A1
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787067634; cv=none; b=jzFCeL0uOwffCc9JkqXWuDvFqfFxePM/OSQvRMGKcGV5zBphtH7pa8SJKcM0XhLajAPLl6pCwTxNK8t/q6zg0n4bxt4Cc1dsz6W987XncuJdCDK3J9GfRbzmHRY5EEi5y/lFnSahWlwJDvAr2i3TRMKIdYO/RMuhf350auHMyYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787067634; c=relaxed/simple;
	bh=cm4Xo3A7220og+irMVke6pic8m6IBybxL6MvVOK7gKE=;
	h=To:Subject:From:Message-Id:Date; b=ovHBv3ei2YCMNlazrldEAhwjLokn2zHSmKYFMXpooZsDnFpwRh6YZ0hfINhIy9pqK4R+3pwk7/qb03kjn12x/oK6c0x4a8eBxkULapRWMiKFuUmG61ZN+6Ebbndz7oLsBvVL08NDFpsrEORXid0HYGGfpH+mDbxnUqr4NRyKIrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdfATjjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdfATjjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC4CC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787067633;
	bh=cm4Xo3A7220og+irMVke6pic8m6IBybxL6MvVOK7gKE=;
	h=To:Subject:From:Date:From;
	b=QdfATjjsmWe22RSl+RxFt464Eg13mG+3VNn5yBX0l6jYhMckVSdfPTi+53lGZc3v4
	 nZxFjP7DGhyoCcAbZzoJixl4VAeop3h54aSZlLtCAcrcsJa5ROs2YVa8LGB72DEDAk
	 mU47p6ediwxHxE0kjupGlqSguxeLmQrnIkBMS++hdGeNARhSrCHnQw4ngvcNM7sX1P
	 p9j5zbNpl70KeE9TX/gLUp50uDIT4ddQ+0MaRfQkmY8hr/qyceIiKEKDj0LwaR9mxz
	 RMpjNuoSsppcBTNvE1C7ygjbBPIX2ezBp5WRKDyuPvIRz4d4MpDdxqqNnPZYeKHfBa
	 vMJ/FCUca1Yrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A6BC5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706763371.32015.11318560546114338214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec1f06852c44e706f3c41980eb86b81a96abaed4b78d14bee2a6e7e1824e503
Date: Tue, 18 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787067633
