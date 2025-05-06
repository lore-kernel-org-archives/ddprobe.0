Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB837261B
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746550795; cv=none; b=qIdWPv+7nX2F62MLodSKucgx03D7UmmMQSk87LpK63I3YQ+yHfIha/emVXu3ND0ctoLvzeGxrjPRWEONAFcQHQtd63wAPDCf7W540LcnSONz0oe9VMTDLt1lu8V1KgW4vdF/EnTRzVHBqh9qgVToiOhfKKv8FteUiMPAxJTqjp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746550795; c=relaxed/simple;
	bh=kjO995taevCBWzl4RpJcEQCw8BLPs9VR/MnNoje8pv4=;
	h=To:Subject:From:Message-Id:Date; b=OihMdeeQF8ePxtrg6ejbB64kNQj/4qf07OcdCudqrA9zWBQIqVUkExmWvlgqeoEAuslL+du1son/McSWZOeG4813JfUAleQqNo86A1l1ipCUtRWgC1GYwwzmCE82w3OwP0NYgUAudHSri206aGshgQlxMf3KQEHPz2J8LcUDfx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKB+WN0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKB+WN0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA4EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746550793;
	bh=kjO995taevCBWzl4RpJcEQCw8BLPs9VR/MnNoje8pv4=;
	h=To:Subject:From:Date:From;
	b=lKB+WN0ILlD4+AVVdT1kWYjjDsf4wO543AFmQHp0q1eA1Oi0j54ysEYEVZwDeBJjS
	 UoJvMDQpDZiXVAQvAN0nfkUrgQOnm8iTYllh3dQIZ+Um2KSNsnsx/OdWX80yOr1NFj
	 sNV7FZLGvnFGl310XgMZXSZ+0U7EbaNVXPF3QPtTiQDiCKanhopxj8aTJ0njTNGxBR
	 VgQYDypv2qPawY4jQoSuU97zZ2wOa33IhnHSEDXjN4fZDgnPvlE7hbH2g9jCnh9Qku
	 1TmuLCn2/G8w4ByKGNTwu9FlHQpyjUiNcGOrn3a3f2llzSKdMWfNDBDfv3Bb7xNa1A
	 S3djU+0LPvrSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F062C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655079357.23734.8232277426708342046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5cd5a389aa6f6c739c7ef6d9e5088a7dbd71782a884d13e7d0c4145e05b5c5
Date: Tue, 06 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746550793
