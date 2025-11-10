Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B043309DC0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762779594; cv=none; b=Sunwk5dcUWdJoXNPZ12AIOfn9XTaW9EvWVV2252/zQVD7WTFIq+y8AJxxWTuQ45lKvym5moJXB2magL1E748hmbTRwE1tfgBrgpu45g8vxrgY8M5VNgNMdxcYaPZyxaAkTw6rMtvNMH4fvUd6QKHy6cdy8CNbGeN51i1y7MFRHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762779594; c=relaxed/simple;
	bh=QQFtaK2CYDjiyEQ1QXBCRuDT6Be1RzJptfYkzxEzCZY=;
	h=To:Subject:From:Message-Id:Date; b=PLgjuMoWaMpqVgfNDuCNKaQVojNMM5OJDmWH6mZtpvohzHSEJVJ+JNz3zKC4bqgCXqAsehs8IgPTahbnXQH6k0RQ/YLUQwLCeAqCVhf0U2hFRk4kOfYTZXX3NZgA4XcJnv9d/gNH+SGwZdsIBcSo3Ay9CxuvC6MqVltfZjeFSZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aexG426D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aexG426D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98FBDC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762779593;
	bh=QQFtaK2CYDjiyEQ1QXBCRuDT6Be1RzJptfYkzxEzCZY=;
	h=To:Subject:From:Date:From;
	b=aexG426DLGoTj72hC0Kiho6uS6ba8/dhPv34TE1DnzlQXY1W/t1ex73QVdoO1V5Pe
	 aA7guvhC+WBWDViBY0VmjgNcAwH/l2bl/nGlRJ/zeZ7vDtfETHm6fWgOVK4oFpWmGR
	 cZtgrN1gOBImjF5aew8INo9UGvDn+6DKpoGM/JDyQhNbfY6uVUUc4V1rcGrBwlbKni
	 hci22Ij8npRGj6sNhii4/kF5Jj0B0SF8YQGshghITH1VP5VkCNtUrblvxTEoO9jatd
	 4hYtu6aHtjzgjmT7GmD6ArZzbNraIyxHvr5VnwmAzAjMPEjeIBJLwKwqbHY2ID0yME
	 HlaNcK64PWs9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E742CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277959357.20933.3585182234746004839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a705fd62ed4c2d1fbdf43792afc4bc3155e8a846c82e302fcb1638df68965bdb
Date: Mon, 10 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762779593
