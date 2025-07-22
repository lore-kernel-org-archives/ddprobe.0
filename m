Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3FC288C0F
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753228794; cv=none; b=FtYxsPkLo1/rpeWpQUWg08IKu66QUBla55SX+9kiULxf4Ehm6V3X/6RjusnEKGVidXrfXrF5nT9ipLzCqbAEdUr0TlQnljxoYhfnAOn7m4jPbai8L2I9kO+gVXbCJYbiUAQIsjgPA20PWiWYFvt5MS0/rrB30NoJOMlKueSSKzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753228794; c=relaxed/simple;
	bh=BQ2yibYwmrShg+MPLJev/J3fqAsYB0y3w2S9nBe9VUs=;
	h=To:Subject:From:Message-Id:Date; b=IrhOy1J9jpoe476ed4N+tgBPvB2K8XOEmIsjoGjoVH+4tbUfqBN408rwCbM2ZBndC6yVWcs98OtiQEQQu+29ZLt+/ujVRO5NOXrWaNtDfVGBtbgdbgq/7l0iLI0dwXUkiAPDbensUgoAHBOY+66jSGc/yESnKHH/ld+N4ai7KPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6rAGL80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6rAGL80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F48C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753228793;
	bh=BQ2yibYwmrShg+MPLJev/J3fqAsYB0y3w2S9nBe9VUs=;
	h=To:Subject:From:Date:From;
	b=d6rAGL807ha3v1gEw4qC1vM5hStgs/9+dW9+c6NR04MAMtFr/9yGITmamMN+fhsgZ
	 olBG9BYlJGa8zcoPbdfQhvWLe/+fJ1gLDs3nvCsunUnBJsvrpheBJm6ugRj27v0qmq
	 KJk1v5QLyMGA+cEZiCTemGD2daUrkOrTIPdpQ0cINhublTFv+mhUDfVjUsDHTG43Y/
	 Y2KxkYm6q99SNbAQ66E6hjCLkmDP/PL0u83S6BaG2AxgtyeM3ToeGa0Mnp+LczK706
	 D5TlU7HIeFlt468igeZoYbHrjOq8XSOsbHMENcHyJWm8xVUqsG/ZGeXIlSiWcPuaP8
	 ETz/5N9NCjfmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5DC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322879357.21990.12554983539579426389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e9413a77be210c0b46839a918432f0b56e59cfc2d307fc38598a212ae9cd41
Date: Tue, 22 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753228793
