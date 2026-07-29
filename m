Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396C63E762B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785336034; cv=none; b=WjuSkK4MrJ/KZOGSvMbRhjiJ2+0dWGt3VXsTrKrB/b2JgeLy+wFlI2oajqvEd74jSNmagEjo+tUhafELWbvOC0A2NQrnykgVGBwjgZ39i2j1GlIozk5xpYzpfbG1ydFCwKoSgMAaFaWOJYMMOYnvvNC/dsC2l1Idu9gzIWO7v/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785336034; c=relaxed/simple;
	bh=tsz91qAX+CDXnrRm9rWFVQ/j+ua5B4kJbEkAKxxYfJo=;
	h=To:Subject:From:Message-Id:Date; b=sQYQc1E8AolTWLXbcmOYKIQ+znpyDmY2sLckfA6VMjNJwWvG15LOM3LO9GZpO5lc/KFt0dIaeMjWESjSVFDPyY0mCB/VtJA5rXDePYXFljjYWig/uKBtTPQJpPCcLS07RLn7njU2qaL/A/mgCj+ODzCN1ut8CiuPJRKooH6TbrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8XLolI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8XLolI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB296C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785336033;
	bh=tsz91qAX+CDXnrRm9rWFVQ/j+ua5B4kJbEkAKxxYfJo=;
	h=To:Subject:From:Date:From;
	b=m8XLolI9vyZCS1E7apZqY53LumYyWSdYbG2AhGCJs7Ig7fR0JPjMlNFngFYsH0Z6/
	 7kaSVsUNR/nMX0ecuXcYNhK9bRzHIu5fDFzG15IGahZjbJKQ12nh7GLP+RIdOOxcML
	 jg25kKkf9JSbSH1wQ/C0Pv8LNfKHsNMTSbzafj99zGN0cTrSGJOrBshdMBbE/tNW8h
	 fkR4BvNN4fobEEQ9TlMe2d8zL/n9eqWU4miAHSq1zYBRkOyXauNJHo7S7XC/gIAD13
	 dzeB21TxbzZGhi6HR+xw3wKODDZpUP8Uuu25rl9qi+0cmPund9II0NSkQ06usG1h5H
	 rBOOwnxIeCqOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D15C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533603368.12368.977933322988065076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7fa7df292f08509f9c06c395e30b88912d0a3de102f2c832e4276c09b5e0ae
Date: Wed, 29 Jul 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785336033
