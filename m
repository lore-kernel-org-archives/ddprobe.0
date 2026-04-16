Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5BB31F9A7
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776372454; cv=none; b=XLMbJj5Qp7Y3DQ9zVvAqPoDJZJ1ZJmaPjI80uzHN/BljShNgqc76hDYs9cL/LF656lLI2QQGIlejYWo2y2vRC8wEhZA2XKb+SlteBTobRfr2wI6jFz4mLjuZwaZtrjwQty5N+jNbGKEDHOo2pQztwZKNnwtmBWYuhT3OhEDzS1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776372454; c=relaxed/simple;
	bh=S3fnBeFKn1lkz8qhb17VCCF1oOGS1ce9yZogvzaxS74=;
	h=To:Subject:From:Message-Id:Date; b=UbYZrpvWfXWSld6V6R0jInuHlo/IKcThge1bOtMvlTR6DaVqH4eIzOz7QP3EXR+5hY+980Xj8/i/wu2MlCNPctMj56vx0j3oUia7zL6uejnlSCOrf8wlRG0k5ktiDjn9hUi39bHI+xwO0GpzE5pINI2V7T/b982VLUzuUf8dKP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S82kwfMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S82kwfMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCB9C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776372453;
	bh=S3fnBeFKn1lkz8qhb17VCCF1oOGS1ce9yZogvzaxS74=;
	h=To:Subject:From:Date:From;
	b=S82kwfMe8hTjTXmAzvUF1znAH8qTKeT76DaMntO76xlQ/BC+4gZsF2wLIwNGOlrTR
	 2v8DT5JvJq+NV9DAVhYzgipTeBazC8f3IQ0EIdctuaP1NJ3lWCYgebfz5zDF+Wnb2u
	 kuJ1xSvTMvIGxBvFxjl+CPjkr7Y/ulloTHC7yKJimTd7GrdvB7FTkaydsWS3zflEOd
	 bec3Y4cA6YfsRyVld/3VHYHIqWr2E3qEeUq8WqqKdPa31KTpCM2l3mhfjtp08GgyIk
	 6Q6etiLlimbAUw35nNgR+bnSxkypKeHkpBa+amD0dJGiy74M/80eKpGQXvL3MhpwhS
	 GVCJNVuYstLFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02CAF8D76E
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637245368.6517.1535085769486339255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb803b36e58c2543f0b242bfb8400c54c1d65282dbc5ca2baee5a1246ace7d5
Date: Thu, 16 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776372453
