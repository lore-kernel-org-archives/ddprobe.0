Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BBB27FD4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787384434; cv=none; b=CqPNqnYHkXdBj9NI+l9aOdgU24XaNCqGJcIGCW+DswTi/UeuivFmTu2490vs069AFXrzEdXNzg/4pGf9VYnZBMM+Y3q2yIt+Y25321pKPtOKVWJPLeD9Xj5MIeAbD46oRxg1tEiQOSoivJ0UJS2p10p0VlJ2MN8T+Pq0/CcsauA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787384434; c=relaxed/simple;
	bh=krA9UVVbalCkHfofJRNjf8CHIBLXgmcoKxtY3M9m6DA=;
	h=To:Subject:From:Message-Id:Date; b=Z8+qOaCtWKIzKLUao+i+la6grVDxurSvWLyyeGhcF/ZI1VoJjy6vyq9exu8jteKP3+PdZ2qHUXvyMiLEYT4CsNnsb9M8Io8t3gCt96UtHXA9lalDqsGaggII15sb8R5tjUSO/HdfY1KBXwZGoL6MkRWSsQLgIMrOtfTMy7g6gvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLm4+PKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLm4+PKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D651FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787384433;
	bh=krA9UVVbalCkHfofJRNjf8CHIBLXgmcoKxtY3M9m6DA=;
	h=To:Subject:From:Date:From;
	b=jLm4+PKeiVNgaiBTNjB0ELXwOWalA2/1TW8n+Sa8zhFYMMh+LMQk9WAF9LPNZcEZ4
	 G+DkFBLrZw/84CdWm21PMtRWZFAaa/GAYmvQe+sFYp5uBO0o/9zVRS3GnhCo2Rwhca
	 6WELI9ebMef96xw176LX46N+4gvm0uqWCFS16JS4q6THY5o1Dans2gDBid6VMJXF+d
	 EY9Y15ZOx86XuTcNjahYzyPrzBU4JZ0x8qZD6vy3/sFdMO91ylQAWdrsOBBYPW2EAH
	 CNFHkK8iyo8lcdT1HPAAAW5ntNq1yLxofxOL48iB1iAP8+Zo7Ph/sIEA6RrqlcoBK9
	 KGO5mP0q4EUXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE242C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738443369.27966.5416101323635896101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d152f9e22bcdd5e93c1716fd5db4d664ff400a113e6e3e736619774cb19d1672
Date: Sat, 22 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787384433
