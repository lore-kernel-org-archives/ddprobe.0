Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DA230DD12
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766008434; cv=none; b=EqC1UArS2ErA+MxLALPzhynBcnQ5CaSoCW+P7nqi5GZwyR1geXw/4cMj/+rY86Djl1COuCuEBRKod2ghaP0dUBwpTVcxKBO0sub+ILrmd6MHbMS+C1NtzzlLxsAmU4Z58fRELWZpvdwCRP/9Cjb3eDf1aWGIiQ4s2/yOBCmi07Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766008434; c=relaxed/simple;
	bh=BJmZcK5yBvIuzReJAUdEj//wh1n7vVB2ui/ReLeIwFY=;
	h=To:Subject:From:Message-Id:Date; b=DjorkMFkvRnuOILtkUgO305kM48tTLNLbp+ILB7tVUix2uXbDgw6pBI/pbE7ZLWPeXozeuEXHp0HrMKIzZ3fPrOzOhfUaTYI6X4c3xzDZ/FKVd8TES+0JHACIbVsupbKYO+7V8OX4aqlGtRV7uwbZLu3Hy+23lGWhgXLJxH7j4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAZ+sHI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAZ+sHI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A047DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766008433;
	bh=BJmZcK5yBvIuzReJAUdEj//wh1n7vVB2ui/ReLeIwFY=;
	h=To:Subject:From:Date:From;
	b=rAZ+sHI+Mmp5TASZPQmTfrIGMGCyY65YTk9I1zkWL6TwtMxdZ6oBt/80PF2tYce4B
	 odT7gbayrVBPyN+6z4rashaBhDy5x0nQx3K+u+hzMLWnhysdhqsfH5DP8RAfn0aqP2
	 eW+HYLb3kqOTzYcUmChlsezK1AQlOz9n2uwVkba2Etztccglci2imut4EBa+2VHuJa
	 Yo8vyfsLY67LBxStwq+3Lu3Q6Z/5OiqQ3uVqiUFOGZwDLmVwBSekGVCoQxOFO970lT
	 ztmNEvi/3ez3bhLmB4vyVkkc2/ocC/WplTO1h1EhWMDxkrz3hV5wTMxv6Gx9TIJh6R
	 LPsMUnqKLy9Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91018D65C63
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600843358.24838.5398349969175486614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bace5308f50989f61f9b5e6416f039ee6656963191ac99b87b0ffb9b415ce2
Date: Wed, 17 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766008433
