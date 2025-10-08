Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D252264CC
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759915794; cv=none; b=KcvSDewdfGmEvqmlix45cChxMzztR+3kVl4qjSM9+qaJNE/dI0Uvy/vRGDJlxE4od0JWTStib7eZUB11b2J85pVnak9d50vgeWYHg4DXh6B5c3D3r3mcYyo3sh5otWdTq+YNfWrH0sm1d0g2JbeZsrrVW69Ip99hKZ4AgIFzw5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759915794; c=relaxed/simple;
	bh=N8l08Fzge32szcZKdpvrQWr7FtHPj0IBAyC+eFZYZhQ=;
	h=To:Subject:From:Message-Id:Date; b=NexwKqIKLoer8sasdUv0WtRxSpnJp+mZMdLs71Q78/95DqWw0/Nu5RTPcJ8LIzA+35Jnhr4ue6TRMWdyLT0YnJ1uBcnt8ckuc6NRbIzWQFKjy47HCjAwgVkKu5mvdnN8FvXRQxeBLopIlOUqoNtoJIXljnzTNjW5RDzjXdk4WsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHO8WStQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHO8WStQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D9FC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759915793;
	bh=N8l08Fzge32szcZKdpvrQWr7FtHPj0IBAyC+eFZYZhQ=;
	h=To:Subject:From:Date:From;
	b=DHO8WStQgyyD/4rbpGztF8u2d06jJMOXJA4kcBp4rC9jjLt8Yx3Fwa2T5ZvZKuVMl
	 45ENIFUQj8P1N5QiPrGWimvJWeEo1wNAtJJBCwGtpAYiicyeAxPHTSS5ukG9FLrIhk
	 PEniQvbreaGRtwEbu/NyOjc2eorJGTFU1UHFFS8jfTUFpo6yTjqfkL6Z5mFgp75pAt
	 O2f9bPGZJ7wVsNQsy/xws54P0RRCdayPRsLhv/3JSXmZ1qWALqGE1SD7g038SYo1HH
	 xK0SYqwqdl4MuHLH39znh2te6foa99TcShKegtRrAHfJRmD8DxuDBKljkx06iOca2V
	 T88USVvZSJfxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91155CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991579358.5632.16592822620539724713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d49f9033b1f9882432b90d1b11e71f52e4dc725c744a53903230fbd539dce7
Date: Wed, 08 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759915793
