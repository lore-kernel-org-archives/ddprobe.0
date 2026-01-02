Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3326D1885A5
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767380634; cv=none; b=W3hlVUHFKLV93yeO9UlXQ9ENyAouP/jCigzK3RjacgDUUhQioC0d++pp5tzSu2073XgpKakOxJA0ssMMd1GaIADMaxgs/zhkrklR33nFL/aZ/lDWOIFE8ikNqlWhRSb60iaC7OyMrF/4yNFoxFeyHEg/NdWrJdzdOtnP2hwbtyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767380634; c=relaxed/simple;
	bh=IZDjm7sYqub5V9tpOwQ5tcMt1L+u7ChnEbbPENuYQB8=;
	h=To:Subject:From:Message-Id:Date; b=T1/Mf+CNZAQ5G8l4hNkj7Nj2Eqe3Ml1Pk6YIQwDMBJL7UQxd1bw3+DY6qs33HtheV4VcuwHekb+gqObjSAI62hHX2YO0Wr/gRQCy0r5ENbdGIROkKKCzIQ15IB692YunYf8gmh7wMNyJOCUH849gBcEn4aAa72kJN3QHyGLl9to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbUWGQVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbUWGQVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2018C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767380633;
	bh=IZDjm7sYqub5V9tpOwQ5tcMt1L+u7ChnEbbPENuYQB8=;
	h=To:Subject:From:Date:From;
	b=mbUWGQVYxvDA6aQbNXYCXkTqv3YibwP0JeN+Jty7mMWm/uDG5uNpJVrwA5B+UtaDB
	 qOp/B5cupSAfK+P2Gh7yZcdrkjOanqKGESGz41g4r68iEiWAl/cASAnWBbJOKgZ9d3
	 vVqVnHeEi7xcUIHZrcPVletHG629zjQ/JWoiaVtQSlaT2Gsg9gXFWc40Vww4DAPn1l
	 OEmBTGCY0LVmrP7Y0QYmxG9B3aRfSbpT98EZ+X+Be+B8fcw0K8MUKMaHTJbhJdFcYl
	 y+4p0DDVRSHTT1NW36HNZrGJ2TLQgwieb9xeEebeDDpp2OYnfqwK95s5qTLDG9gH1x
	 M4QptZWJ4mulA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75AFA3753
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738063357.4628.15540740629227758475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427d0a605076fdd32c82815e4a2e02b0949ecfb23d1a69eb3aed91099597df88
Date: Fri, 02 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767380633
