Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F52E182D0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769388834; cv=none; b=KZMRW74IVd6SzHtdeCW5NllAP6hOogx/OqqRzkTjai+ODPCrNEb05F/nRL+atJGOeIYivjZmajWxFcRaZxsWgZpjrK6B3GRDU/EmOySE/2w1X9EpcVbBAUOxkNN5Hck6nwOJzcbFK90G7xo0GBVy0zF1JkMDzfvxEdSspTYfn2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769388834; c=relaxed/simple;
	bh=ID4jloVYuFvp5FTU2C53Z9HqGQws5+41qDvkbupDN2E=;
	h=To:Subject:From:Message-Id:Date; b=I07AqMhjhMJlQVacMjK//qdAETqlejdOqB+hXMGIPI7RAROfOX1fOyMf3B3CKeawE8Vqu+F0A874/c+01y6ZMKjvjvv3F10vmru2q4t4VgavwcnG0WmdXc4LdxI1CTJ1EcRsPzQJ+q0lgDafKW6GQGORclE9PROTsRanLg6+8Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRnUoeAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRnUoeAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E74C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769388833;
	bh=ID4jloVYuFvp5FTU2C53Z9HqGQws5+41qDvkbupDN2E=;
	h=To:Subject:From:Date:From;
	b=kRnUoeAaAbVDhl3oezCuXAaziqBdRLi1bnelRbDN+KUAj+hf3x9/2yc8eWNhQKCJB
	 BIM6ekpf+9ZOYdnaVTIL00ywT51ydV1GXCZywBmNydfR1vFk6vpYOswT7AaGNIkoNl
	 yzlW+017oan2Z7GpQXRkA9zca65yA698+xLIRIvHpWw11duedssuhevdr1uePc+YtF
	 d6F+CkbJQ0ynHjSk3vF80j4Tx/adjtaHABHIB8jXf32DEL003QTMenAPvJjZR0bcK7
	 21359gG8OwN2FiZUvUf7tS05l20yNgvqScya5CWNM5b3cz2VjhUj6qnpc6BmuCI+ez
	 8BKLvT/3u+mhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954D3D778B1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938883357.32333.10950993795591874131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffea238e6fbf24e5780e74c2228b9a3e0d86d2d145ef5cd0c5a6ea2524ee021d
Date: Mon, 26 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769388833
