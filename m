Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E7F480DFC
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791864634; cv=none; b=MJv8a6neqPHSPqy0WvC7F9KY015O4M7oK3jXmrNts1eODyXxeN17CAJKI6UpjJyXBqxXjGj7oJpI7O4g39N/PATv2SB7PSXSGxkAnAbSt44sKoGaSN8+zmGoXoRXN+q3GK98fGiCHLT4sV6MF2vvnqBaPqtr1YtzcYOFb6+6/48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791864634; c=relaxed/simple;
	bh=6redVdj6ZQkIFtQEs8QGCIUCWLg92V+LzS6xvieRyKY=;
	h=To:Subject:From:Message-Id:Date; b=h7nl7Mqgn/vT6nYYHSA46Lm15pvWM0duD/06sD1Dor9LkYH3vyQPxgBZiVvraeg8p2TSW2DG9j8/0YCZL5wIxIxigKjeJgaZUYwUVkqJ/5A2pOm5F9+27tbkAgRkhMM8XkZhTycEn9+Y9YbpLeWQ65kb552Yv0bhbpzTFJZXQME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7F7G6ZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7F7G6ZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D61C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791864633;
	bh=6redVdj6ZQkIFtQEs8QGCIUCWLg92V+LzS6xvieRyKY=;
	h=To:Subject:From:Date:From;
	b=E7F7G6ZFix2O7vYtCkV71XbcoOEBrQW6QYLs37rkTvOO9gBDq9CtiTWW9ZPnn8VPz
	 +e2ANlUKOr24PM7eB/Cra+dbQeNmM5fvpNCXet65HD9sVfbA8IIrr1KjS6D4OW6OTL
	 4WgEzNLPB/7ET5M53wYFuSZrNbY8rnpkDFc5JBh4E+BbXAOed8juhl3jgdAc3Q1jK4
	 OUmIlIT23Gt1wWERpIsRFpxRRRYiwWv4ts3ESA7lgUapedat0UvLzxboPz90+bd45n
	 XMpulvp6iJQeDb/Kh/XxmKdzKxXAYHcIR3AemuzYjwHKYnuzgYGT3s5/m8V7uhg5+A
	 6G5scJd+G0JrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B51CA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186463368.19985.6184324422006671878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee397617adeb3c2316be27b34335af5079c9beb8890fc8c595151c93a012ba5
Date: Tue, 13 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791864633
