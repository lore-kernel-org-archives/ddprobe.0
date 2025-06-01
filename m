Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D94151985
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748808594; cv=none; b=slKE151goqeub16T0wT97AyBckN7o/RvtOzlacOebwUIzBWDpuuHBBoaHLPPW+NT9zCchkvhD11uPuzc5e7eI/zf1zl1lGSh2HiqGKXMaZKGWMRWMuQfdBQm53IHUpVWcWvvxG+EHVqSj61ejg7gRRlp2ozwNI5Zgk38cUJQguk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748808594; c=relaxed/simple;
	bh=LlgPsNjAlceAFYkzzmhM/PWDsmQJp15W6watgiOOjrY=;
	h=To:Subject:From:Message-Id:Date; b=VuYWv2BIaeo6/YW4ljQzr/JgGa/dxfs6H7YfjupNF2LmYYjoxFSWx0eNltxf25tu9gim1ABqjDxh2LHeuKsnE+5fFjwYbKjVTarDrEBxWfSN2c7tiJjfJZ6ryuROHXEmi6ynlTUaL8FEDjH8iE0pRpA9jkqk5+5zcsp6KT01Luw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgFmlyH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgFmlyH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F25C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748808593;
	bh=LlgPsNjAlceAFYkzzmhM/PWDsmQJp15W6watgiOOjrY=;
	h=To:Subject:From:Date:From;
	b=UgFmlyH7LLwcE2ljVcCOsrGbrfaCYnUsESKEwSLQ3x1kuwWprO13K7ENE47VDOWZK
	 hhNUyx1rCIi1tQ8qQ4DThhbU5uX+spiTRNNyi4f/pdm4kgLznL8q0WvyTMp9alZEvm
	 M4E0ho0IiqR5fw44OfN3OXOXW9C3Dyu/bJII0FJ3ICBxkNBdw4pdI7Eqv4h1q1J9mS
	 1j1R9ZFsntYgE2EA81TQ633HJv50uFgvY/4TL4FdZTnt1vlw75Kdhl2H0hdRhWWbnH
	 5i0N8JT1xjhOsBDWSHhuHbAXtQ5XxoY6BrozBaaCE1rd+rFHJtcsC+iNH5ub3eiGo/
	 Wx4YDPls6LiOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927FBC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880859358.24731.14306399623319066448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71142df7674485f7d0b15f8c721028a82c560575b44ce6c7376ccb79671d8fda
Date: Sun, 01 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748808593
