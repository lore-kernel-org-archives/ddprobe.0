Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5419D19F12D
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782625714; cv=none; b=K5l+aEHraFKL/+8jBZczL33cxN1mMz1bbWrvEeF3rO8ZI+UMT4ijV8L7JEg4Zgv5+ix6qUBUNobpOvZa/dh+YFOXa7iGpMCnTmrW5KkoyRIQ2zfPnTurdElTKXtxDdNGBLyYhC6MtDpVV/ZmmD9D7n7AuScnE4Q+gZtt5UHDWRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782625714; c=relaxed/simple;
	bh=jfQPYMT6gpVjeLTDt/4d0fbMogXJwOyh3m9MALB+UvI=;
	h=To:Subject:From:Message-Id:Date; b=G5os+DQ0hC7zTA2I+Pc76zW/ssSRwVQ1v33RU/BlEETFlUgDa0TIK1H8FDjlUFZ2pjzIXwGccJSz4WIMnaZfF7SzmGcQoRWEp3Rc1yhG/SehDhd8tQLfnDbH7zLCqX4dkX5RyUCgRXL1dHzgMyEMreezEsjOAaiZuQk5RCtvB7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqZ9ybYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqZ9ybYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C36C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782625713;
	bh=jfQPYMT6gpVjeLTDt/4d0fbMogXJwOyh3m9MALB+UvI=;
	h=To:Subject:From:Date:From;
	b=CqZ9ybYmNAu9rybh/05b2PB2HCkB9umtYcN43PQCT1D/LWsSS4/2d3P0mZeACJUEQ
	 1wV+VR77hj9owA3WFnOZvrhFI6C8RawTZz5Vflc49Lzoo31YZxgnv6x83M+zrTS9a0
	 ffjtj8iHVwMSm5Z8F5c0eN9pjtcfG/Qx3H3F6ZTKjKsPTgsFZhBwrPU/Kv6iJ9ckkt
	 rX8pw0F7Q0hg5w8xHQlpwD5Pdi30B9nxdHT8ZZYxoxqQBHo1SYWdYwwDXqU04cnUco
	 ybG78N203KsDarDcTxbmbGDNnHgwFtGxgG7Dle9xG60SZZKYxNHY5N8wx9dP1oohEW
	 UQKRPjdOjHJgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC7DC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262571368.29337.1815492456950778524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79278942bf22b174fd8f5058557716a397900d44af627fb98b54b8336036ddef
Date: Sun, 28 Jun 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782625713
