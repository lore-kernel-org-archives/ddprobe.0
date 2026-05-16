Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCDD3E1713
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778935834; cv=none; b=cr+nG5v0xLFVTbQAonLHqHl8M1jsjR4rSUa6QBEYFFzqI7HHgvZlAzVjsbficAJGcDY6mgyYLw1bmxAUPPt/5mINyKcivz9Sxovc2/CEqyIPmfeDS3maebVRSjA+KEroLSwvf0HljkSaVAvV6xytYB6vT9v6q8G90vNuGjaMXb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778935834; c=relaxed/simple;
	bh=iliHujS0g2K6NaK0I3PKDuOME8HjYvbdUdq9542uDQY=;
	h=To:Subject:From:Message-Id:Date; b=VboHjSxDxtFw3E+PeRokxKhaC5nIftwpC9OaDnJAXT4gHAtU5iW4c5WCuDjbWw3gNGaPwyyzC764Ac7f9600v3P2WcNrBK9ZW4Nhpu56JPQLr6gC2L8DSpRqBEfrYDROmza4UHpsC3ZvCeJbgCI7hB/hJKaOf5wu+6tOaZs8YHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHSpentq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHSpentq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C8CC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778935833;
	bh=iliHujS0g2K6NaK0I3PKDuOME8HjYvbdUdq9542uDQY=;
	h=To:Subject:From:Date:From;
	b=EHSpentqn5nVoeRZpf5JopjpgQZ/XknzSg5jgK5cj93rI1ehw9VO6QzQnZ/mZZ3b5
	 0ca7/uAqvuKXK2yZ7uptdC7gFG6UTGzjraQwetStkYtjo0cGx8EJ57/DpcoCS2gYpw
	 yqSF6XepMT6DO2uX9CqKzCpDJm1pvX50M9aMSvuERwuSOMlA9ipdHw9yVQDtxTzZtQ
	 KLauTYcRj62dix3SW41+PXOx9o77lzX/IpR1dwctRuWTRC1dN3KVvE7OhwrGMoPzvj
	 jDMCY/gb395671OahkFT9NYR2749Bju1aVsdh1rvIALF1kJo4WmpXQZGZLl9mw6nSP
	 Twt2KR4YM5DTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B96CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893583369.5663.8969751190176833008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59cce0abb176772aeeecb25257e39ea2273f7e2b22b6d303ec61287d4c5aeafb
Date: Sat, 16 May 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778935833
