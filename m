Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4BD156F45
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779622354; cv=none; b=rgGFdgLWuIzL6jaMsGi4b7kihE8OW8FLZsKac1qZkqrsNEfGGE95NkmDkG8pc9TCLtGnkLWVuQk2upMVcMItjinS4QR7HOy2aiskZIv1T5W0OVnMwlFQhEwWGmI1Y0WBqmF9hA+IK2LPYT5R9dDBOzffstd4dAiK6xVo7PsnILw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779622354; c=relaxed/simple;
	bh=eYRa3iiTA96Ut//fYJhXVgu1ieJWG5AhE8DqLOz3KVo=;
	h=To:Subject:From:Message-Id:Date; b=Dk1T3QxK/vnq/g20JvL9sJ3iXAE/0sstDswyWRkXgAtV7wLw8o7X1zPigaJjGwnKJCL3mAckWlb1qJrG79ecPT5YmHXV8a8trJxhoUFXXp6ViMeJsTSoMRggMoZmYOABxZ2wiUfmIHVL2RBo2+0cF9pqA+IMbtQWpnZiKv2sUng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdxpFgAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdxpFgAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60F9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779622353;
	bh=eYRa3iiTA96Ut//fYJhXVgu1ieJWG5AhE8DqLOz3KVo=;
	h=To:Subject:From:Date:From;
	b=DdxpFgAUOR/7vYsarMXO1yVwbyzw6m77UD7aQXHoKSPgmsStNXLrLQ5SBdbF9or6D
	 SohVfyxZriG6WzbjPloeqC4jhXRsCnxRGL9mbHsfz8AYu/kYdmvwkZbHh8epky+DKX
	 KvazjiYRXGwew7I5tbe+XFfgs04J40zLwCP/dF5uAm/+KjkIdm7q6ocORYlh7XeGV7
	 pqX91Nuhkr5V3OAS1jPDg+yTK0Dx+RCCValxkNzABwukX5FGfBeFizJnCeO9NdHLft
	 D2yeZLB1lHMip1l1iH2O5Db2LxYyqiV0GmGP3aBQj4KuQ4rOWG6ZGNpBRrqgtBreAp
	 zFhL5+TK40BTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C2ACD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962235368.9122.13421831293403582348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed1b971d04f1a6257ab34d5a5cc47a32018f2266fd38191670d81e926959ab3
Date: Sun, 24 May 2026 11:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779622353
