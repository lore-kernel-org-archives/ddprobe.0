Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB690296BB5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763564514; cv=none; b=PqqagCYyKIMntM78UCzO0wcfRB1dR3uh49R3lDVJkJCBNzuKe7QwIUy/o/80NatZtETd6ChaCJJh4GGL0xJqsKISq54HNbjKNq+towPiDbWjWmz/eV+s9urq5TZCCM6RSVPs/LvMDvJTquYy9lp2jFR7xdt2nOj3VUXTJ6pPrOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763564514; c=relaxed/simple;
	bh=2knarmf0wooAAJ9TNWxEE7jV2mO6bbBQZ9jC38UWh6E=;
	h=To:Subject:From:Message-Id:Date; b=pdES6wv4Tz5I4DvMkB9ceKKb58UmLVnItyR2XkqbxC+1A86wlbyXm9VkbrfCUeapkpZjMjT5MhZw1EdGPQ04XXZ+pKk0UiDuuk0Ep+AdLUJuu/6DvWRG02eSruUoFD8eSReiLm7S1YYQlTteAsZZaiDr2CvArTJtqzP8ucoyYNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bN1ji5PB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bN1ji5PB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F036C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763564514;
	bh=2knarmf0wooAAJ9TNWxEE7jV2mO6bbBQZ9jC38UWh6E=;
	h=To:Subject:From:Date:From;
	b=bN1ji5PB5NxGnlWPJkYh9xyEh+2yKc+VeEYbWq4x41DhU311VB8kXI0fqMZIoovJK
	 DioGXkZZmGJPgytULa0Qk/9woogeXGPwNoEo9C+4fLZ7QhB1py+TzQvIiA5jZ1HNX1
	 PHX53Brb0QXJ6dtWQX7HkskobEjb1bfOXpqfP0Uag55g1ZrzuA/Qqszowt6eeuRQn8
	 jLNM960REQLszguamS12ANvI0ihkYPFFrqn7GZnZ3xy7799YOA0N0SCrqLGPY7b2po
	 903WP9g7eacc3TV+/lGcvWwapyoVAH7BGRiReiioeAFgFJgW6dFfAc9dYeH25JWonX
	 9nlvV2yrNfxTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8947CF34C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356451373.13674.3513077780705282997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e847cb03abbdde5cdd44bf8dbbe5d89be150252050f8fb569473ab444c0147b2
Date: Wed, 19 Nov 2025 15:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763564513
