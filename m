Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C55927144B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792222834; cv=none; b=QbRY5okdAN9kAWo/NRFhGQPBFTIyzBhJGLh2t1f8m/MhDAVnJnWdkMYdfOnhbfCrcdLxgx3KrGJG5HdpbHck0+u+AvTjgcEzQs+gYbEsw1l3Nn0ssmjlVD0yTYFg73HjK6bBphoTf6rSSYYyytWwmG4UDS8HD356FUuqSBDsreQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792222834; c=relaxed/simple;
	bh=g9vPmzryU1M+M3DxHSl0nSS7EqgMAjNEQDKJYGfidfg=;
	h=To:Subject:From:Message-Id:Date; b=qEJv3x8fcDbv5nHvQ0EbNq2yyjNHixuThglqhRqlATyEGNUV+D1luAkpjzRJq9X4Uu616wBSKhXHy8YsbP5LA6Cav8JRy4U0X6CWtXvLI8OIb/xo92IcKIzE4KCR01jQHq/4fa2mthSAp5TmyQXm+neRW7FOz24J09cwbFIr7Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ei/vrsK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ei/vrsK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D8AC2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792222833;
	bh=g9vPmzryU1M+M3DxHSl0nSS7EqgMAjNEQDKJYGfidfg=;
	h=To:Subject:From:Date:From;
	b=Ei/vrsK72MSuzAiYOz909/j7xG14+OX+BKRjMZ681O20V+t5ZFDS0vBEGPoOR2IhO
	 VIslfySSrtynFeRU9JHyg/niKu3ed5hBTOYMWAjGiCHzauG7TI/Uv8tocOrfguz+hl
	 yWSPhYsrx8Iayl5duOpCM7w/Pb1hVumd3wQAhRR+Dg1XASKaRtXVo2koiOK24BzyUl
	 lo5Ww4Ey82z7KNgs4f0/pTzCCc8LYG11kZ05yv+spORgiuFrzTUqH4xFzu3rdZFiMQ
	 HquY3YKsQzM8P55oAMjRyPzfOQJQ/2tEq9K+8t9cnp7EUZYuGGzhmfzPn08PWBd+tL
	 gcE1kyNxkIxDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9657CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222283368.26922.8287448078290677061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4f85a9b7a4d96491f4dbe16fb178fc0db645ae00be99f6625aeec8d074460f
Date: Sat, 17 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792222833
