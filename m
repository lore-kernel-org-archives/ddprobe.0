Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327F235202A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781783194; cv=none; b=VHcQEcsdbBGH31IpD+eKgMFaVQAA1hOFeQILWKDhjVoAzkjKr0EuvM/hthbwFDWxMc3NMl6Yfu0DJSOBTdDxGMRQ55vvF1J8edqsEGSuqWA/eYS7a4ekRCjxz66KWAOVOBpulFRH0Q9r7Tili5SRamisWMyfKBAEm1z/Bl5cNX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781783194; c=relaxed/simple;
	bh=mmQfe/6nRiAKP2vbb6f5oXs4axBR8xZxbbdmQy5XYt8=;
	h=To:Subject:From:Message-Id:Date; b=O6CVfTq4c1xbpnRnoeysWDCvv5sO8/ArQNtDFufnl8uk+kBn9hLcVAhUAJOAEDMt0LugxlcHteIcRiZXA7Qti0EWuXNqzVPXfiQc8pdTmqn53z3KZ5uQYORiZdsLZwBT4Of8IG18Gu+kpeTKYAyczvUX7763WLGrUvjqYeEp/rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aat/CbAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aat/CbAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2492C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781783193;
	bh=mmQfe/6nRiAKP2vbb6f5oXs4axBR8xZxbbdmQy5XYt8=;
	h=To:Subject:From:Date:From;
	b=aat/CbAuzlA8S4/jwRKt7UZmG+6qv6ABRKnyaNkzHrLaT16Pm/ZXWg26utMKXjASo
	 9oZG/PEul4HxQ1lcKmMO1i/sWUJ+6pt/0MqMDlDjjaSUexWva2VEMtEApYIgf6Jv0E
	 gsn4mf+SOlb7h/QUYQxXTy4oLsf0YNcjAhfBIFyna0e79Y5ao26IihLgcSCreeFJl5
	 Ioc88rMMgY7vuK4KoGJrgII1sI77mK5HpugMOUpfx9nU4J8hJINd/7QHdWB1FgEv1/
	 PAUxMkVkdsS+HRzOJTME0wgvv0WDcKhU9D4D25/4RFA5bDXe7Tnu/NUn3u+ZaGV+P+
	 1kpoYgzhbWKzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD34CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178319371.18908.2396767934383596906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608c6fb637d9a9a1fa5898ed9badbc875a371a5de0cb19d9dbab536193566ea5
Date: Thu, 18 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781783193
