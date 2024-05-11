Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C74171A4
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715394143; cv=none; b=jFvOYpQBNlLt+S9z2kByUoHndmb4Kbk2eezXP9XBzD3ZbX8v+R5sIegBUjDVUuDey/BxRIJnK17LbRwJFERQqkmS7kyu9/VIPGGp61/bNcpoo6wt8iJRS9bYL5gbzo1y+PgqwYScSFPEHN48wsiQ4GCBqoaiLklVtUHbcMnFis0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715394143; c=relaxed/simple;
	bh=RBJ/7+JARCIoiih8GPbn9O1qG415K4Al+hxWQJFcQf8=;
	h=To:Subject:From:Message-Id:Date; b=hHaFgt2aQZx/3XD1Ou17Qmnp41TMKrGkKYUqE0MuWzvUfyE8niyw4HOru5VEitJoP+0L86w7GU8gyiVRnMg41gSY2j1jgT+bPZH5nVf7CZAmi9NidntWj+zD2A1C8QA9QJuZnsi73RLqXQwjfJKaXoLFrwfA98YDCJzxE3J3w5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrAGDljm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrAGDljm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC350C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715394142;
	bh=RBJ/7+JARCIoiih8GPbn9O1qG415K4Al+hxWQJFcQf8=;
	h=To:Subject:From:Date:From;
	b=SrAGDljmzYbZ/QKXPsztdXwpkDr0fDy7c4naAe/bW+BIFoCoHZNDgD6gb2jNsHU7x
	 zIjbtpHt0E4T8OpAJOX7IzEESDBj6aaFDNKHB+RNbk4AHGtuEdpYeIXCtdcHo9B4Z0
	 jiTChb8cKiNWDtw8sfhCaiPh+UfDrgO6M+oBB3hSdGAsQqXXFOchj5tm1IHh7VYv96
	 OJcCXdmQCh9IT8vW3kjUSdwCaYKQ3Jte5XleQtVH0RLO/8f6lf9cz55cgXrt22emZy
	 QJbVXoa0W1/iidr0OtsjZPJM0+/C1wbgwopG6hhJ7SAjnbJSyThfB2zcEMHY13GBGm
	 K2ETaH+u2MNqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9923C25B10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171539414275.21159.16924899969509025192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fdf9f6595f7b74f2bf9ed85f8f81c6a41a594912ca585acbde3fc7f10a1c36
Date: Sat, 11 May 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715394142
