Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C06E37186E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772546094; cv=none; b=FK7Bu+zkcSCRAO2GgAkYcBHu0XAgKFLp/+OElQ2RcCO9zkHByTuRykcu6WcGti+3Etriax95L95vF2T3pDt6XcYUjGlI7iCdSGvWsyn06EX0/XaR/ysc38kCNUiHwo4Wz8tw0sU438zSCNmiuJfBLnhIe0exN+AgY8jySkSnFH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772546094; c=relaxed/simple;
	bh=yVZW3557XR0BtECG4JZT+dt41zi0q+qwgfTqOrdwhDI=;
	h=To:Subject:From:Message-Id:Date; b=ij70G6l29tP67KrjoqEU0JS8LMscyHC+tpZbo4D2ki9pYiLA9pBo+UzftLyDoSIFNJn9dAc+UbqBUBwkIrK4hEEwTbPdehtY+q9l+KVbDkeZm4++FLj3hltBnSApy2sqUhLVa9arDmgS7Qq+Mi//N5VHPmAoW8XnmMbA5gdBP6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pveI+ry8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pveI+ry8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40EEC19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772546093;
	bh=yVZW3557XR0BtECG4JZT+dt41zi0q+qwgfTqOrdwhDI=;
	h=To:Subject:From:Date:From;
	b=pveI+ry8OGg6RWKbp53RmykgRYSynS/g/oVBaLCElQ96PGp/O2gS2mMoldMJChZtC
	 NByI6qBJlt42jOHAON+Uo8pCPXzzMIHZ8bR9mlNT/BYLUaah0MMzQilfZAa+rbpwMC
	 eoTyd7FBIaq6cZBsGl2/1lc4TX8maXFuEYmBEBHHFp+4OGKcQVBH0taJPwpVFGufKQ
	 aEiMms27sVuM97ZIGAlJHVr8w9kQI5alwrJvlAQcCbUxdOQpozXM84xYnQlsZ1HfXe
	 r4tHX5WUAPTN+VYYGvZ+dAiDKQdl4Um5YZZjqYD4MYxvwQszOFZhEAxObSf4N+3L12
	 aRuhFuydSRD4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5A3EC1452
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254609375.19535.1987344419689395495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce7c167d7a7dbb2550ec96aa9cebde8e32fd35cc64e26ef37268bcec379bb3d
Date: Tue, 03 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772546093
