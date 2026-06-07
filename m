Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2311C3F0C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780851874; cv=none; b=O4OuRQM+N7er/UzTZtcnAVVp5KtKPujOTBK0oOvy62+pNBxdQUKgMV/FT7TSP7HD4zB+nTpoQFa+eG9vjDW7fgTKwY+rjzAtGM7fiDTitJKnUqbHO43rQgWqZeD5eQjUeweLcg05tALzmzEJNAnq4gvgpKgo1FRW7l8aV69nlGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780851874; c=relaxed/simple;
	bh=ufbnGmStHAad25C4h/lU0CuOcfJmM5v0tmA/bZyTN1Y=;
	h=To:Subject:From:Message-Id:Date; b=RCoBRWMN78Wg8PVX3MqPlDLZhBVtc5tbMYg7APq7wFiN50emZp587QkLjxO5sUYdC8WmtcNcJapqjR8jTAicUrUkhuPqIzlRpAIg8XR7Jv6PTgNbOGDHWbzCSnC+6qC2LwDHE3CcUveTtmiuAgmTRQyNwldd3z6ZAP3jQNkZR9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmVVqWkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmVVqWkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA31C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780851873;
	bh=ufbnGmStHAad25C4h/lU0CuOcfJmM5v0tmA/bZyTN1Y=;
	h=To:Subject:From:Date:From;
	b=CmVVqWkbHp4BBxIyifiAnqjX+0qYNJZZioNXMpNMbZl8RHLGNqvrkKPnihYBL2pCH
	 ZZSIXBCGJY74Zz+RuIPFuOlmpHKrF+6PB8kTr+mKTlBbDQPIcRvBbhrhsmfZF1Bpsw
	 YZZrIzokwt0ukyM2x+XS24o/QFbplWkvhGAwff2i6mvt5x4H441Pb1oS5ECjDYNYA6
	 GskvdhFE8DuMmWjvWMDKdvOJgVyvJFsdY2d0pM4PgSndn6UHaR084KT2MprmuF8Pcm
	 DFgQVgcJqSAwAyp+KTR6mH7yZ94MRHVNN3fhBnaucqMwccv5wIgvy9hf0iDRwDtu3D
	 Hy1znEy3WhmaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE71CCD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085187369.553.11928835794340276083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3d1ecd5fc96fafa410d2247e7f8c0a761c08dd9b55f8c74a4ca8ae75593c3b
Date: Sun, 07 Jun 2026 17:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780851873
