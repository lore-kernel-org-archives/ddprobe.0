Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4052914269
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 01:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716944663; cv=none; b=u1njvjEhE1r11awX0vpA7jtyA8igri/EZgs+XnzoAO4a4s870QcVxl0cI/o7/DGITnHIcUqGhSFzAc+seFGTfZd3N/VQ31md67QXI3PTn3cBeukgu6/WK5vBhCprpa64pcGEGGp4k3qvoCO+VRyuhFn3W9OjgSig1MOgRM/MELA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716944663; c=relaxed/simple;
	bh=0akoUjAKzIo3+5S2avjvvY9WQObG29qnb5ZZuK6tu6g=;
	h=To:Subject:From:Message-Id:Date; b=cuxmPKKxMFA0cd3i2/OBVDwvD2tmTmIsxmKFW8wThGFn1IHqNW7PH0mr+rO1vJkmOTYqVqhTV4ih9L1E8CE6NLZTvK0Y6Yethgc9Rz7ehEApDLmdwJai+p1OkPZIyaSX5avZbLeKoMaD9VkDDaHmZ8CBnA+ITPOW7cNgLQfC+Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtQfNU1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtQfNU1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E2FC3277B
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 01:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716944662;
	bh=0akoUjAKzIo3+5S2avjvvY9WQObG29qnb5ZZuK6tu6g=;
	h=To:Subject:From:Date:From;
	b=OtQfNU1wLOHRqwgH8NZVBdo8wbaXqBGKJ2EHyoQIBXDXoxFM25jpLUSpoCvST2OsA
	 fJ4CxaRTVzLvYt9Plu3obttZvuWNAkVtnYojk5T88y8LMExIDhN/kM2Ar9oj77qt0y
	 sRAPR0z4YqZa2U3qQnOGImOhdTukioGXkDi4s5CHuBr69aS+INGN7Hrq254JVIuV3n
	 dIFyGFy8HHEnObycs4YJgsd8T5gxgu0RcwiqN/1DtjJZ9YfSW68yMfsWdXzHQSD+kB
	 TNUkeG0Aii8Lz9MsgfV0J1FBGR/jpayO9UMHYA1CoRTZ6FkOYl2YtsNq93KvS5e1iA
	 rb7H2NtdoXdlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3B1C25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 01:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171694466275.29649.10991416856986566614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85cc6c29cadca65d20c6bd95aff5f5aba67d5a5db63b6ed419230867ca9c3b3c
Date: Wed, 29 May 2024 01:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716944662
