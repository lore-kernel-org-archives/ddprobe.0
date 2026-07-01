Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5911E1E12
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782925114; cv=none; b=QEG3Q+Gn4bklfmhAUl/cjaEMcUpqXVTQIZZoU5Mfz9xkK2UrSIGiUf8YyaZ+LXZqp2tP0lHZmTMXEY8lKKnwHnbZJl5xDBsCikZtLqIdVZ+QU07r9U9n7V6IgZ4BOiH3RudzWCy/6MkWwmqAPARjH1m2RG4YAm4PgXJRfbX82B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782925114; c=relaxed/simple;
	bh=SVIzfsh2Rr1WaghdMHmWwN+DIKwM3Cmgxg71AsCYksw=;
	h=To:Subject:From:Message-Id:Date; b=e+sgzXi1oP2WVtGEosT1Glf3fAHVOD3b1eIVRZYVitLmSxUqawYwX5M7VhdbSannTrNo0oDqhDVn76mcyYQh4NkvvB8XUOWOqJIXlUsWPWDdvIuoXslaHlqDQkP8n85fRomvHKoYXxkBTkvv4VIjSaWb/XawHMtbkRVGoGJ1MMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKaekTcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKaekTcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3723C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782925113;
	bh=SVIzfsh2Rr1WaghdMHmWwN+DIKwM3Cmgxg71AsCYksw=;
	h=To:Subject:From:Date:From;
	b=XKaekTcZkUvjhfYKEImACYmwIonoOSwLbC03BWPcZiuesK2v7evvmnuQJ8eoYymn6
	 EYGhij9nBjxBXzGecrjd0v2syaAYXZMGNVNFxVpIjGiM5HnycCWY7kGEqkMBvX8osZ
	 u8E/4I61IIURxdniipXxnrfXnEewySPE55WiqFGkTW3bY+jZJiRPTCFWucFpgVfflF
	 ELbLFNygnrcKkOHnuQIrIyvWedYRXYB4bF2hp+sustYQdNL7vBAOIxF00TtKukr4OE
	 +NVgO27zjQIS8Le4RZT3luFFh2DFqy5BCRj0KuRlpqoIKraEd6sfmNLnOoQnajZg0Z
	 beAdjiN/b3eAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA157C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292511368.20985.3952622709692453412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1453c1f9ec2548f4a8eadb7f1864342c221b46f5a5e128992eb967704cdc525a
Date: Wed, 01 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782925113
