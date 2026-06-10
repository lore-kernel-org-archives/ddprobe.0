Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DF9356773
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781132194; cv=none; b=WPKBP0FBDSnJqqNDPK1r61zHUnJUNFAHzFgKDzmwPp6keyQ7hNUxpr16UShFCa8uvrTFtU5NsSJQtmvlkL76uD2Mlzu8z2Y3cKVL6S2Ua77o5Pha/b3XOnDPk+3xo133GBGMZgiDbwVC4v378imBj65q09kjBRtF8faBBV5cowQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781132194; c=relaxed/simple;
	bh=bN3FoJ3kNdCOmmY6i+gnttVek6g3Dl7swULNrbQ4ZqU=;
	h=To:Subject:From:Message-Id:Date; b=fO7cpv8hyysHugNKZwiK7YuAYB4zB1X0yZ70HLkta+Ao0pDcugoyoxDpKZaEiaONq3BIiqJSP87jFAfF3z37qaLJy0KlfuxmplEc9aS7vzMCHlmDyH0tqmfyWc4KdlEewms/UWLFCZJ7TnRL9nJJBqoUqCry7xDg8a+AshhX78Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUZFpMmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUZFpMmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F1CC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781132193;
	bh=bN3FoJ3kNdCOmmY6i+gnttVek6g3Dl7swULNrbQ4ZqU=;
	h=To:Subject:From:Date:From;
	b=bUZFpMmfyX2WuNd9MAo11GU6yrz6SiSRcZKputm1HhHTAZITrUc6hZON0tiKei9HL
	 qrjv9QP0vg3OWPsBNJ9ajeno9KX27n9t9ra0FCtGuIh4hb9ELUVaPTiB4VnEsFCcYI
	 QFL1iHrMqZOgjm3sRSSxBAjNq850ofjozTEDG4qmDE2jL5fwYXlgArro/V1dcV1dpS
	 pp/T/3LUlWtd1Z0zYg1WQQ7Wqy48l0iZJlwxZdWaqEesQd5AeVEIAesYLwfQrvY1h/
	 dZiLMBdSRcwGtfZVYkyHY8hvycVBH0lALn09DQIwzhFrcoXbgPGbZyX9AQoZ08GLwD
	 6n/73sWG8zgbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF79CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113219369.14129.5441465163891179339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ec7d7dcd490cd989836b93e3f23c009776a539cedee3c5d653bbb211900d62
Date: Wed, 10 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781132193
