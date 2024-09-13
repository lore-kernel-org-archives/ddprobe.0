Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C794A21
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726244154; cv=none; b=JR23f8NBw8iXDCv2bH3vz5uOl8FbFBWo3isMw4XGHR1FrX68QCyrz1CqdArjm9XSVWha3vWwn8cdAb8wy6M0sDA8WTCOr3riSV9lXGkCgjsef7+HmDV0ruzX2UKcP5WwDKaD8/NILMkRK77xoggTN5z0nRZUgB2PPgdOt3yp07U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726244154; c=relaxed/simple;
	bh=jFQDd8dS9gpxVnVb3tBRXJRSAhgweYJIn4ITLUS0uDU=;
	h=To:Subject:From:Message-Id:Date; b=lCrYNUS6MjBbnNWkkUPDBA/csYzbVHNpr35b6026WHQEJw9eSujbu8uBHlNM1xMDnOxbF10bMlzCizErysl9N8B7g7pwZ1WV6DUUW5Rl8ngPs6Gbmsb9VYJnDnfKagRSp83UoFmJ1h9sbcs5EUwJ6MZd+APjJvo/NapeSKDfwpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caahTytT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caahTytT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EEFC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726244153;
	bh=jFQDd8dS9gpxVnVb3tBRXJRSAhgweYJIn4ITLUS0uDU=;
	h=To:Subject:From:Date:From;
	b=caahTytTqR+n4H3geZPgFaCh33nVVb1qnjOXrMorud5MWgcOALDqN9YHTINm1TQFK
	 UwLQGULSX1NZcawAYkU/64RZ0Ff3qzIWMHjCR9OSUZZWO34kt1ylVjHjNQcpC1bb20
	 /EWdMrwyDU6GbDyc2BJir/3oWL7ZybQALGINPQU+rw+GLAMC73D7Pni8B9T4NQ6BaB
	 ybyyq7YocTjcj8mUZsjRSVxYzm4sycoVrw4mNv992GCSyAL9SaH0oBd41D93niq3NE
	 AB2KxXML7OA+7+nKtqyKraXIh+Nvf+WFrdq3kbUpeHuf/b9cINUessEwOJiCZM2t2h
	 jUJFR11SVqTFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF54FC6161
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172624415362.22244.16790636897003140465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c73d01e41374b16635358112f2cd665a15dec777a28fbd519dbf6a7b1fdc53
Date: Fri, 13 Sep 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726244153
