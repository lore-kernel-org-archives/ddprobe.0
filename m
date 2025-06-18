Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE23F9CB
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750253394; cv=none; b=ZF0mdGGF5oairxSZZARrD1ROnH0/kgtMUIR9kI99l6NyRFFg4xho2XW+Ae8wIY7Hspks2180cXAsw24mgvAQ6nAem2baYpIR3JWkFnGn+KVcBmKq2vE3XgjE6iTDuqDYypzaJ1poIK4mi+y68cq19DvZfK6In21kyfjJ0nWZ9As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750253394; c=relaxed/simple;
	bh=8PXp8IdNPJJUEBMlGC6FJQpXNDjINENszt2jL7INt7w=;
	h=To:Subject:From:Message-Id:Date; b=ujE+Z4e+15I7Kz0b3Pxa0w9eBbTTFgl+6JDS76a7Zmez//X0xEXltdJbSH/bXmsr/FFDHWFWGO4LRUvDPzw9dNcKsW7DmziPAojqO9/QfNqDUjP5knYi96mmkNcA5z9PBLMgZIWmeFwrgoaUAYknVgo3cYRYYc8UD688Uq5WSyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ecnr2ErN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ecnr2ErN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDC7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750253393;
	bh=8PXp8IdNPJJUEBMlGC6FJQpXNDjINENszt2jL7INt7w=;
	h=To:Subject:From:Date:From;
	b=Ecnr2ErNkMyGl12nRjgpkrpQqa64SnXGctA/BVVNHTO8hNr1kUG/Hlrn8nLwNCDI7
	 dVLf6re+w0BdLpLmozZazVzTlZzmBZfxmnmJq2Lh9CEkRGpO6ITjy7qqoHepFAh5AJ
	 KT2h/Ak9U/748RRhybG+EvgjRImYBXdq+Aord/cosVlt4Yufjyenu0dqj2jzOp80qj
	 loNnj1SSqSMe9SKQu7rsPXR4Pcm006bRz47QI7TrhfD0WQL5Ac7MwZeLDAyw6++w6j
	 kGtivhylg8M1aDLoljV2Jw0o9nALBeChZZ2xjy9EyW2p1OYvImvYVI7Vnk+TeRchHZ
	 SM7nwbkTzE1/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9837EC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025339361.4231.6531000013441373381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7346f10861fe2d6dac9818677b7d591651e586feba8180144117b6c1197d0798
Date: Wed, 18 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750253393
