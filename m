Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C6033C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727018154; cv=none; b=G1McKQ2lyC0twRliYhZJoHRZwUPZupOcJQkuYFardSeAYqFiDhe5tknK6cLxB7GlBN97N9OzUtjmo5Zs8dT4A6LV4KeSfikJLf67oKnhuRj9DNcZknzzMU+njrLAMTc+guIWNprZ3T4O6E/Jp+6Mfi5uYLi2fZEaLZ7yLQyvCZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727018154; c=relaxed/simple;
	bh=qbxcQ5YTFzg8qKeS2Ay1AMChykyF6Np2F8pOoHOYjoo=;
	h=To:Subject:From:Message-Id:Date; b=Cg7oVrgvMqKcnTcDpCQg91b0OGW7UYzxT/KSakoeLYlTYqmSoCEqyPaQ0aFzy37QF5QVPB00CqLw/T8o7l10S6YOgmXlFwPMhsKzsG3XiWx1v0QzwbDArC4Jr8jmHl8v6EGcV/mgW02a0ya4X/G2ht040JRLrryXFaDyOvGFMWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxoLC9ID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxoLC9ID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC367C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727018153;
	bh=qbxcQ5YTFzg8qKeS2Ay1AMChykyF6Np2F8pOoHOYjoo=;
	h=To:Subject:From:Date:From;
	b=XxoLC9IDa0w2ZnW0UaEfIda3qdLE0to4hq7i/D2piIwti8TWVE49qdVemeuwSIidi
	 NtqF5Kln25ddYm8AJQfvr2xtVlF69Hlu5+SsP16XA4fhYVtfSWF0RYJ0/REs8not2Z
	 k2XohTXBuNyGqfPmVWmlI92hciiXeLiz8ZJQljnF/Qs/y6t4nnlDEOhY8Wl8j+42N0
	 iY0AmI+/QYYf58w1tHcU+u1OF0vzUBNeuS2kgP8EMhQezUHE7fxwHFe7E24hiSh7aq
	 9h/P5OwCQKJfawyX0Hp2IKSsREYQlX1OWLE/ygbmskSyTpCj7hsPH4cOhslDrD9N/S
	 s366IC46+zY/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C53CF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172701815360.7962.11203049381332024691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0065cbd97420079c5a469942d38907e7c0990488bd8417decc7345f370b017c
Date: Sun, 22 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727018153
