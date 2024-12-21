Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5E45C8F7
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734753354; cv=none; b=DiaIW/oXghzfKcWaxFl6g6RRiHEbboDCW8x/nSPOfoZJybKGj6nqaTC/siR2f9lGRy5Eq2NH3bVt8KOMaOizY035RihlKdg+I9L9r11fgQ7dUlWyWw/YAbo/mgFRNKid0PttTltHcD5WQs0S+txOwVwhP5QFxVJvyZZjmo7vHTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734753354; c=relaxed/simple;
	bh=DVC8sDD8Q8SVyk/FUst1EPbyJYsw+V5kzKURHa9IIfc=;
	h=To:Subject:From:Message-Id:Date; b=Y8ZfcQqjpUijORUmwvMNpynzBmPHTVpijTEtDRNSIuTcb6k9dPrvlzfO1ZAdGFImmPleiEB0cO5SDP3+U+xu4e2Aeh2T1RDt37EGRtZyc0N+4UAKGE4uXhflPNjoqIcXFBwrjldX9XtsbX7KHdvq5o7RMY59LJYv/4ha6MALS5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6tvxwVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6tvxwVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C90C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734753353;
	bh=DVC8sDD8Q8SVyk/FUst1EPbyJYsw+V5kzKURHa9IIfc=;
	h=To:Subject:From:Date:From;
	b=k6tvxwVj1K4Sgl61dQkZyL9hfE/yyFD0EfqBGj6xRNYwidbdSsRd+Blmois4HYKVv
	 pOBgtTDnO/riTlaF9KXaPxdwkrYen/+tkpMCtDSDrF+yBAupu84XHQ4QBXAtuzln1B
	 9tX2qfvhEyKgU+pdnroAUXGST+CPq2E4Lm+EZBHrSQxDvCChAKFWa81H/jq3NRabnF
	 1iNjMQehyGC+lJAmZk6jmur2HW8NGLqbRhdYpcB47BXqM7GNddUVPRbueEIiFWZP2T
	 7QaUUXkcDcW1y3B7gwH+4Jx0xNtnIaeyWt8Qh38+emHTSLePcbURM5IJh2Mvxpi8nz
	 +QbNB+X18PumQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9463AE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173475335358.31517.1333971836871109552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d741c1d481f6b87f9aaf90fda7bcbf408c4baba6dcc203d55ce485562f0a80c0
Date: Sat, 21 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734753353
