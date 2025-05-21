Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4FA1581F8
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747841995; cv=none; b=UtAKieX1UN+a5GLHcCRuUN6x8mHBwuDmVz80izSYRvYSFoWS8RDc9wSYpjQ6ZL5l77XnNf6oYABnqKeONZej2RHBGUXWCgXnDgjNBP2xI/xISiDn92aZW271GzPpBBXIMCg9Ke2lfJZufBlVlMz8f4LvTlST5mpbhLh1H2UeTDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747841995; c=relaxed/simple;
	bh=klY/gkaWSEUsscKUyMhUZjeE0Dkai93mbFcAwCHpIfM=;
	h=To:Subject:From:Message-Id:Date; b=KafxkOo9GDYyg15MTFBNfq4AhJDfUTGOxb9SaVEHp/jl05Q6scx/hzczbudaIIAcjIPEqpOY6Npvb+I0HsKsvmkLKOO+UvRCKDOet/3kj2DTl0dHyTtKoXQ6Z1IN/me4YxB1UwNf8eZ8dEZiv69v+YO5m6Pj+JpK3J3672mYU0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahtQu+72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahtQu+72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC52C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747841993;
	bh=klY/gkaWSEUsscKUyMhUZjeE0Dkai93mbFcAwCHpIfM=;
	h=To:Subject:From:Date:From;
	b=ahtQu+72VXVpOYFNuofdVSb3WLU+rpL+lLBzTTIwwyf+EXbnBkg1iwBQqwCdtY1Nw
	 pUGSz63rQOtJQDlWuhG7nx+f7TjegxpacF/OVSKfydLeJzFMTHlCy9Yvjtzs57IyAK
	 /JublflpRyYdNaj/OVkGWDOWKPpeRnKu/rxPiy0Q/7WpOPRWu/JFKquZtsNOH/qUF5
	 QsYnnobzIdYrgrxfSORo60e8lUWniBIgRXQxEIh3mCvKQCh0Nunz25valjRiUsBJD2
	 0ZuozCGepR7jRjfOswYOgtLG37R894U6p1TCi7qNuidFDe/2Hg1/znhu/qRJDZqwjI
	 2XqAcqTHuowYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3F9C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784199357.9419.6687803643281177427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371c0ac8420c69f6bbc06218fe6d2e49843bcf88f7fe5144acb1be86d3555fea
Date: Wed, 21 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747841993
