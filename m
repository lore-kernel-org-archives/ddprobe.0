Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E699476
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771682094; cv=none; b=hlpM+GIUwjnbooN7r0xF6RHBR6FAYu6pSlyvZM4wcT/+vBR8RPfEXxd7PCCSW2H8E1Ng1d41gsoXDYkYMIFedAPpY1+OWOJPasMguSRP0bl2Ac5xkfldw9XxOW8gzUNsJUTCxcUBuEvNZJF18WObeThzVqjuTN39v7WzeYWEk68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771682094; c=relaxed/simple;
	bh=POPt8JL2OoTLpFeghj+aA47kc6MM+KN59D4NfkHT6po=;
	h=To:Subject:From:Message-Id:Date; b=Or/iTxJ+/aJjE0176X2G25MvUKvLDP+9bYYmW8UvV3E8MLziZ2NbY28bQhnFT6x9zpyygDqKEQwu7fyBd+4yQrNXDWlJdEz7J8EEIhaJbOjOHdWPsUMfYLBj5Eu2d0XLGk/Hdy8rKvwG6Yzl6AS8a3TYgqsQbbYXp6bwN9NtH3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUfEEaMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUfEEaMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B082CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771682093;
	bh=POPt8JL2OoTLpFeghj+aA47kc6MM+KN59D4NfkHT6po=;
	h=To:Subject:From:Date:From;
	b=MUfEEaMXx42QGieilgEdnn44b1BHOqOHKqkYwzoBx0oviFbZetWo5NFz5/3WTMOG+
	 pf0+/cljUu8UphDNG3ZMVIi5rFIe1NlLKfvIX/ka/3GqWSiUIDCrM2+ELaz4MqxJly
	 /ezND4GyJ2b4TS6hy9NnuL2b7VaGo9csmehL+8th0n1qoANq/AoMRRkx0Hi7uAZ5tO
	 IAq9CJLCuov7gpiNuuQVsTU1SxPdY8z9PuVud7G5ZaUUsX5CBZHc99EYr2S5E8R7qh
	 PgT+L1A5/89VtQc1zMunTnrlWPhEeTglCkRnZ7rAxuGSD8T6J5TjBBksvZhsbDALBF
	 owjLkpqkr5YFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B61C61DE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168209360.5695.16874391934586641964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ec0d23747edea188aa9924acd920d3010712c970c58e472d722427e3da32a6
Date: Sat, 21 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771682093
