Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F01D25A2DA
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757433594; cv=none; b=VDnflK9WCOBQZf4i6M2y1J71ecviXX2U6iFlm0LtMnvmWh769zBpb/V+kC3lzOCgM1pmzRCDP3XgFc+axoWYCcgW5pH5LEo7E8C3LbraN4qzvPgJ3tXcvRqSHQj6cUk8OTetZSkPyS2ErUza/ryIBytesHg9+agQXsbDc18yOpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757433594; c=relaxed/simple;
	bh=6kj0HUB4r+lXij9IUAc0x6L6kplQf0uphdpaaYkv/lU=;
	h=To:Subject:From:Message-Id:Date; b=r4t+j1t9MK+mo1olNNDMtU7zuhANQbd/1PvphLPeyrUBTfMKN355oCG+0KVV8tGEC5J0CzBgBEFHxi3sbhZPS9lVnqqdebrfS+dZbcdC2Mxb8Lv6x/E2zWf64jlPipNIH2J/MibfvSN5O0ayJcT+oJRovB//ERMaZJOqdFUmRTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPMjn3d5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPMjn3d5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5090C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757433593;
	bh=6kj0HUB4r+lXij9IUAc0x6L6kplQf0uphdpaaYkv/lU=;
	h=To:Subject:From:Date:From;
	b=CPMjn3d5PvwpsdS/KAEhpi4N7g74ROJHsntlC1QyziKcKKsktM1g7j0C3Ig74ghVN
	 UB1XAzM9Vi6OMsHfFeIarJyi+wOqOWi0Ax4j1iTqLxdzrZ5HzMum9S/VJ05nP4gC/P
	 Kr0h9zhXIeqCtAvnsolJDqcy8NQWZg7xGx5vkwfAsZi5TtkVs5skUqBShP2C0drFGX
	 ClWunAX7C3jRA9bLfXFnyo5ed3CnhMF/m+Lbjvomx0NzxrAks4cR8by3/1L0vf6YJd
	 9+2mtS9NvHcvgdQqL4QwxeAr7Og77oWGrQ0dbZKXqsbo+Pn44lP3bDV5UA89LlyHQ5
	 HYfDsaOZOQjuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93066CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743359358.28309.8328446775621119583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26005f07ed41908170674e20721f3c8eeb7f2cc08e3aaeb7d70940c50348a134
Date: Tue, 09 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757433593
