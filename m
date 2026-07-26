Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAC3282F3C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785066034; cv=none; b=AFz9FC0/etXTlqLMVHoxqF3z0V70YuvtMyh7TDqv9Scagoj8t7AfAk5LqK02BDU5nerfavBulYaVuuQ4qkVYr2SlmZ42ev3LPpCzYnudN6vXq9goKmPD50D85LbPiNs5CMiAV8I8Hm30pEkgmRoU9GyDha0+YFspVF0p7wIyex4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785066034; c=relaxed/simple;
	bh=hSr998uS/8PFGTXMjSOHK8MkpJ+r49Nhp6d9+sVqOjo=;
	h=To:Subject:From:Message-Id:Date; b=cXrR662r+yegm+rXQqJC0AiDo1gr8VdbOvfoPBsaKx32mockQ3iMqOLC/q6FkBl2ytLy+NPn9dV07iwhU34dVkFUrklYKXyK4rT8FJzibI6iLKuczNQztBS4Zs09BS6T6ACggK29WGZITJwkQ6z21RdJQUaLfRYljGEemOrXIM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqwbHSmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqwbHSmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10DFC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785066033;
	bh=hSr998uS/8PFGTXMjSOHK8MkpJ+r49Nhp6d9+sVqOjo=;
	h=To:Subject:From:Date:From;
	b=cqwbHSmTFq9gV7qJ5rbQah66/Cfg767W6PGQzEhrzSE0P5suXRvf1yHXcUwNJ2tVw
	 oStyavT1M5z/CwBKBKVsFwChfzmnMMoCBItYqfm+ljgxoBGdUnNAaQW0UaOUMYZxXJ
	 B7xrkdcoLsGOmTGNtmeEhX0OD6kQJ6QaFzBZReJhhhjT8D9WO4qhXu1g3tgPzTWBwY
	 S7/98dmHDzBaBY+xIPCIAtIZMaVsUYVIbjZsApMWmWbas/eZuC2ymDBh4cjPZlSp8b
	 K2v0tjou11jwVpQDh/PHrUxhFYOuQZJ5tK5xNLshtSikElEzGeVbfxCDWmr8t9FOvn
	 ydk5AUjAzXG9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1D9C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506603368.5113.17775907723691133015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc0ef2d0a569bd4ceaacd6b24a00bc93f6ff2f5deb521126095aa33b2582883
Date: Sun, 26 Jul 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785066033
