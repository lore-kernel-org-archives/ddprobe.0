Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B08F23A98E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750367994; cv=none; b=H75IVkqsROqqsd3e8RFx84PRWd1DhWTefQXyDOsbxF3awI36g8fWpi691kKJXUJIzpy3isMgPiLychxm8rgrqfGd7QtiPPyGQAXz6A0tPR12I06asxyrwKEMT+D4JSlZUc8c+Dm8JrYZPbqYftL5Psb18wLN9CsHV4EG+7Q9fxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750367994; c=relaxed/simple;
	bh=jmOawn3PT9tSiaJxh3IQjB75C5f3iFI1vh4M4ACN3Io=;
	h=To:Subject:From:Message-Id:Date; b=f642SLTEhre9GBUWeRB+fx7SKUgG01ys919+K3TiUxPgSKAKCYRdSlBHT85RV2+kvZbTR6mSCmHQb+JLjT+gTsZOT6nv5Pw7qUK2baZqXjINfhh20I3YYCCi0lJ0wVFEe/Va48GATUKp+Ox/trBfuVrJiZVlcknlFEzOoCd9kK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbJUctO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbJUctO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2188C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750367993;
	bh=jmOawn3PT9tSiaJxh3IQjB75C5f3iFI1vh4M4ACN3Io=;
	h=To:Subject:From:Date:From;
	b=gbJUctO9uKS0Y9PPwSS1V023yXbn6W8mDbRdOh6d0RiEM2rwOFHNvYztuaNJtTPkR
	 diCnrKAjYaYf9cYMZ+KmRlL4FfxsemKejz77TUVfskeAcwCOR4F/BLUKEnAcoGc5Q1
	 pEuDp7MWibs/ycTLA23K2glLGdzgyr8gBsyQYRJyjtTp+4OZKSPWjZcMxisnN/y1FP
	 L/DQU8e7UtwW8+/vKsmkr+NCEQwcPqygzalBEpvSeuqk8FjAyqtkXuBMM9kXUQtgC+
	 3DsTrYuvtKpZsN4ACbwxd9FvHzkJ1K9JiNCq6+w/g9MNSFaUgPZH5jT9lN1jSaCZIp
	 Uo80M6oNvy3ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20CC7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036799357.23198.7797554914861299526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7285fbab9a0bbb67823d9b8d8ae0a11cd8e65ad8cee6e6f09502b915d0398b5
Date: Thu, 19 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750367993
