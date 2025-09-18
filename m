Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186F31922FD
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758159594; cv=none; b=rNdJUpSgl1qmjwgbYCjn5TOdvABzW4sdzxHTFtC5HhAgcadTJJ46pz19KwG/NOqX03cxlkvNlVGxf5vbY/HVJp7DSXy83G5TVVQz9auoLv//vi9z6hdR1EMDQg8d/gmYTJL8Tai4gZSVyiQKb0mFZqXOTjkFsRfkn8gwEZxYC7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758159594; c=relaxed/simple;
	bh=ALC3J/I6m/Bv9vRsXbZCHZb4rycYfI3eyng+EVIX3cY=;
	h=To:Subject:From:Message-Id:Date; b=SPoIBbS0nofQcQrXdIlgAtQvgY4O1aiTt0aHSBmvl5Ft/zJZ4OuSwvovyio9LBngpPwKWdFgKPiCen3+9Gg0B7yktFRsj5mQceupjFEVZcfvGNwcRzTElcRvfzmMSeZ+Y1B+Hnw4y0E3WWQll7Xjkv6SXJbER78xdRBvBKMS0zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPH5BrrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPH5BrrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB4AC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758159593;
	bh=ALC3J/I6m/Bv9vRsXbZCHZb4rycYfI3eyng+EVIX3cY=;
	h=To:Subject:From:Date:From;
	b=EPH5BrrVCyTsFRZyRdD5NdUUm7XNTROBUErdkQuwZgqWE+9DUVSYnbDpf0cfbqHno
	 W8DM573wEe1O/ZxgQamdXQrBRMJVtyWPpgMSkdj+bGLRo9wQ0Z+6rbP5eku8r1JVP4
	 Gsaduv25/dQi6wHVBFCcP2aSEa7ZWcA4WDXMYP3eJMgZLABtT6ztfn51o5jGERbPD3
	 ZzqnBVYtlLEB2xx8PDz2dQ8dVLN5LPcDTampF96glcesTGA0UhayvqS1kmGvf49qjQ
	 0AaXPYbLg9qN4eQNBmz7D0uyqLpDAZQjj8vogYGWYFQACjxXliCrx2BYrm4gcMJijB
	 T8hXprhe+hN6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F537CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815959357.24657.2537857335059034518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73ccaaa311bff23b4c9995c365d9f583f938af03a3de129ec77c18e743dcebf
Date: Thu, 18 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758159593
