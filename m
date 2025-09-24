Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95DF4C9D
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758700793; cv=none; b=HDNFZukAbEue6QQB4s853rdxHBKLBeEmAsaRS1buhNc8xRXQYiifY4DfLdBQrUqSyRRe43IrLYi9NbhKGoigkeB6qdP9fbqh+bUKAF6qZJc3E3t4KbtMdOOQjwE5E+ZVQTjDVNshZ7ozXB9LHJ54k5C6M3vbBOLh4636Y4Fm500=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758700793; c=relaxed/simple;
	bh=1fw176wIDX0hlVIIfgi67SuB/g2sKlPdQOdpmEe27IA=;
	h=To:Subject:From:Message-Id:Date; b=XL+X2KXoLNGyYWfEnJpWsnc2aoRaKou95+I/9jO2p98kKxieFbmT+YspLwReacw5feidub6y5ViIYfhEQYI80YaWGCyXX1yccLTyQhX+EioYskCtmgRSuG7RoMekKTusz+2FHSKIA+1uGoDlCTb4clGyx/ZhrWUBvSjJFXB894U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqZSYh6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqZSYh6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D35C113CF
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758700793;
	bh=1fw176wIDX0hlVIIfgi67SuB/g2sKlPdQOdpmEe27IA=;
	h=To:Subject:From:Date:From;
	b=cqZSYh6FE/fnoHoworSWtePpQBU+io8goaFlFna1zquFbR/0ffB9puPFyoBdJxj+W
	 oc+greIwDEJibthnozJZQHT8zIlwRKquFEJHcZC5uqfsa8OJmv8hfUcvtZ+ROAOLvh
	 wJbk8Jke/4rOFNdezHy70Rz1KxIBfXeseCWj6Aus73ZJwen1Iz0VqIOMIlbdMb6wX2
	 n8pjaIvGM/YESemWHsiEm86TdrfqzPer9jFGs3pO5bBls61uyYCiz0Rl9RIzFiFJqV
	 TgpN2D6l6xhfHLU274IAuc05DMLK8gW4CdjswaE12IgWLhlgdQKge90SRj2moOYwr6
	 +3CIF1F8osXhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B94CAC5B2
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870079359.9033.15291642446347652663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54900c7fa0dac126a1162a89f77fd508641710ba3d5c13c46cf0c0a81f91c1e
Date: Wed, 24 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758700793
