Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46963155A25
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723215954; cv=none; b=LWV3tDHMVa+CmBc25ZJp8ISgk7Cd3djdJu/yfk/jITs0D6FD5tCpwEpaOY//AApTxufv2Sq7BOhzP42EIsauXoxTqAoopeEMFFg7Hqi3eCU98KgZLyrYKYV/6xkxIUGWiAtu0tJYPMqL2PawBL0J0FE3xbSPdue/9d8z116nb4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723215954; c=relaxed/simple;
	bh=fjNjERgAu8VYMxB8xQUI+jAuOllkMkTbcrVyIadyN8Q=;
	h=To:Subject:From:Message-Id:Date; b=Qf7TRdq9auURtK+FZreu2QZHI0YVZDdiKTWr+1xQC2ZQ5OfrX5Bqo1+7WXAVNBBsF36l6FFOmtWJ+YtvcaFwtzqvIhGbLjzMFYYvneyTDw20oo+myaTRLmgjvGlGflPw7MGLwd2o0smaAVt0uGYfVtn8KITuKIC3roP2KjPxQ5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+ZNf0+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+ZNf0+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33AAC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723215953;
	bh=fjNjERgAu8VYMxB8xQUI+jAuOllkMkTbcrVyIadyN8Q=;
	h=To:Subject:From:Date:From;
	b=m+ZNf0+70T8KknPPme7UdomkluaBtikNurZDFXqrEwepuTbJWzeAqUmzYc5uSDLBV
	 s6qBErvKikWivSR1FyMrsil3NDE5nx+FO4azXhIHCbeqwQMFiJp1WGHapeT6kfizb6
	 ReFHRdWSqBhh0LibRVWZaXnpWiaLfaqiNqGmFzAxK1yB15CaLtcTxvFF2seYUUcJPl
	 zMe5AtJKbKCVmtMmedW2HxcRYFClXPgYDjHLHLml/Bmee9o53ZSCFwzWg1AxwQ6uTP
	 FlihqayqbvW2LkZkmkSUMYFJxF6xSuIMbFC6V8mC36RiOcXhA9VlfBen6jx2fklBLY
	 2dleXQDFDNxig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93074C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172321595358.2214.3461520372170964750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b20252f824b80827046ec5ed0d5dee1b7e1f8bd6ea6884c19376e6d3dd74aab
Date: Fri, 09 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723215953
