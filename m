Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE222BD5A8
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785642634; cv=none; b=rpYput3wWfMsfdKlgp1LjuwK+lKOXkEgLt0XGPItcmW2FxPevCZ/gSetTvKs4L5fNZLeKAVPdNFz4lsB8dKRseAucvl45m4amZX3gDGH5UbvmJfyV1QpsSP+2+1W58X5p6atGwf+BQBPm3jpleMjxuOPxo42MWaomuHs/StjHLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785642634; c=relaxed/simple;
	bh=GPnY0mgNPtsyGFSHmKSsXSa7qTYaLOM22YQs0y1eQ6g=;
	h=To:Subject:From:Message-Id:Date; b=exBBWXkpSnXeKEIv34perXUlLhdhvu/ArV1jxF92OAMmZ02n4SO6QB5Z8HEQ88teZs6BXIoHUh6lGaUkuBgA8S4ZMdum/93byoWInR5eBmh+W7o8xeSHctqPEanoT9LpFINgJza1+pbr8KQaiIA1kR84HG16RC/oOszQt36/ezw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5JMyN32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5JMyN32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA595C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785642633;
	bh=GPnY0mgNPtsyGFSHmKSsXSa7qTYaLOM22YQs0y1eQ6g=;
	h=To:Subject:From:Date:From;
	b=I5JMyN32Ave59L4aeWPj/o8KeSmoLriAkYg6TL46ZEtUHQy4l2g0PI51qKe+nYj2z
	 qGFoR0yEP6YBP19gMERmOiQQXPuuHmZrddoRVxYfk1O3YY++FNYyghhqEXq7kZNV6q
	 XYVZnn6ScsGe/y5PFdrTzP+9fyyjNXaSnziTioCaYzVuqQqq0WPP/G9qmfcA9dG8af
	 ZYnQ8P5bWnIE9TJvCYzjwfxGbvMoAZ27w0vY3OpOSLUGdZFNx24TfHYV3TQeREiGmo
	 B5QSwb7DCLw9dsyG2TyGbVTf3x6UAP7VZGub63OWTtLG53Ot0wIA2bcM6cCADRjEt5
	 5oHR4h6EBsk7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A847FC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564263368.2482.5819989204545760286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d59d5441ad845b31d2a0f123aeb31d33944350f259f6a615dd16b75b2efe12
Date: Sun, 02 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785642633
