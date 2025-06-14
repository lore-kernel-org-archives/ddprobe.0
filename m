Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6E81DFE8
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749905394; cv=none; b=UzoraPpbVs00HPpp53asPQfEJTDF4SqbPVJTYyI0USduSHkwa3fT9FJF9iziRjPDupBhLHb1ZWGSN4g/kF0X0XaNxDFJOORk9EfoO4grxuy1SIG5U0i3X2sHcFYkEP9D7QNx5qnDhHL238IyzKWuqEcKo/AmbDOoarg5Gf0/4Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749905394; c=relaxed/simple;
	bh=c9mnpN8MihTJkzf8blL6Khh0iFwy7KvZvwDASwb25PA=;
	h=To:Subject:From:Message-Id:Date; b=K9zauOvgb9VvUYf1qt257uTVjdJhgYJu2hBQJSNiPEwF3ZtubrJNJG0TJz9oaPjW3tojA0GaxKwRPWSPgj8vDtqwo8zygE9wX/Os54gz4UsAlkVZo8yMbgIk1Rh7qNDJJohRCyFs56JFTi4S/ODLWMmyvfSnEfSF2PhnKZz8s9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7yqIXW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7yqIXW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71EEC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749905393;
	bh=c9mnpN8MihTJkzf8blL6Khh0iFwy7KvZvwDASwb25PA=;
	h=To:Subject:From:Date:From;
	b=N7yqIXW8lio/n/yTVFnFmoJDGxMQPlDbrTfYHr00yMxL8V8GzOyIHrEluRIgGE95C
	 CQmVyjm9CS7YOfOowUjfHRUfqbUPHboYbyNadBuDCTgq0OhBVir6Rx0gSVlWvR0kMr
	 czLbvIPpACaDTx5h87B8X2heqfGvBpp/+WbkzhFnG2VxP4tBvarnaTEjxgpmankCNa
	 /uLeYo3Ab7bP/BNgSMs0FnhgV4/fZIsn78Kxo+NMVhYWTtpsfeHZo32/nPVEs20kNc
	 TZZFQWzIXmR4uckBRDTCAZVPGa3sJkkpJK7UY5R8OTSyiihoroxsDRfbTFJHLA7zYo
	 65FkIgXdRuSmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD0C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990539357.28671.13375683543627612708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9606521fa7a3ac665afe296978685cb0979fd715ae6ed6ef0e63ac9d2105f4
Date: Sat, 14 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749905393
