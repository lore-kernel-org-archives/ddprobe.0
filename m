Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03737846F
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761094194; cv=none; b=IayIQ6jqTXjZbe8KdcdNBzVJPMmIE9vXbt5O+KjJdPHZmwaLdxfbDjnGiyU7UGMZ5xF/DcKJbUMPgwo/VqZhQWa6DU5XObuZ0x0xVpRWTXHjUCwJr188vOWfqiEzvAgyyHmlkJ9vQoYvoJ1jtYQNrjqaLGQoQkyijkv9GtdlqT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761094194; c=relaxed/simple;
	bh=MbFU+8+nnf9MZ2lrvnjYXwRJrlrL/U/rXrqA2Hp4gnU=;
	h=To:Subject:From:Message-Id:Date; b=P0nLs9WxoPApcPLlzl6Mt4mDUgnkVZR3VPSYJnuDKyH6aqVUx1kJpqt37mgw+715F8vdtTaeKRUHRAq9lTrEb4+nmLyGiL8jGEn2Mm66MFHhUzxFFvsOudo9KUAJF8a2iSaiBl8ANd+KBbxHfJdoVm+ugZ1Jple524IhTJppZ7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3ayBAP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3ayBAP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E57FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761094193;
	bh=MbFU+8+nnf9MZ2lrvnjYXwRJrlrL/U/rXrqA2Hp4gnU=;
	h=To:Subject:From:Date:From;
	b=G3ayBAP+HfkjRdyDoqo4lcBuKzLN4JUsiFo59fY9am8aeAFKd38QMFhmK+7v0diT6
	 fMtUUhIZELPcE53gwA3o9OCvtwpmiMTsMO8iSq++Rby8LIScpkqXqwayNDekegdoAG
	 gJcjnmY9zmwUDSNkn4XbkFJChJxLz7EJGV1tcqjL6NOGZd8F6EA3Nc/6dDY0ZHXSH7
	 F+Uo4TgcZksYopLhju7Sz20ms+YsYABIvfPD1b5/R4793nUczc23glgVnF4Cw5Hhda
	 qrt3sBBrJFvOzDlsWdhFCFepfhRKUqTHsEZndurFMyGA72ZnTvxV8Iy11/sN2PoYDG
	 JNV/dpxcvGxAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62ECCD1A5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109419357.21043.8500139363458573409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc16f5c583ce0f610bafb881ad92881361c3a6041c30c628ba400a4198be9de1
Date: Wed, 22 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761094193
