Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD9C43CE74
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784820034; cv=none; b=a3jtSIcz5vEISIDFzwPSHen9HR6xuftFHMH/5txEYw75FGz/lauxN/dcBYpNK25HA6W3Z7m4TgPKOu58Z4zQZ/yy4Uf+1x4zTbYnUiZ6ANir5mIFjgotLqugWYtVbBPa/8SqxNkQyZbYLjjie9RetOe2ip+RGoEysyf6YEcOpOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784820034; c=relaxed/simple;
	bh=Od2I4TjaEHt/EDtQHOttj/PxbxnKtCc/VVOsePKA9MI=;
	h=To:Subject:From:Message-Id:Date; b=s+N7nYGDOsan4WA8hzFteM2E+tcaMKbglSJwFh05qIBiOZ4ys5nc00lAJfQKZeaJ/1a6AC4KVK+iyschi8nEGQlnLEsMV5w2CGTG+hMLm7+q4f8JIuBT0ekb+uZMy9nm9hDa8c/VXy7ARjbnjrDiYSc3DN9p938VS32880n7d8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLY2RHKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLY2RHKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD008C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784820033;
	bh=Od2I4TjaEHt/EDtQHOttj/PxbxnKtCc/VVOsePKA9MI=;
	h=To:Subject:From:Date:From;
	b=TLY2RHKieGrlbbmgk2deP1CnoTuhTAg1GkXkk2+43btnWEidDckM3+FkpXh4c7elC
	 YWK0uTQCKDoIWOI4hsJS88AQNafLsLWQXOMXHCa7l2D3tB4WvC3BkhGD0lDWCNXZHD
	 F72qjZAsZ7rusVwf0k7ff5mTaRQ12MaL18NVeUw+jSmJPD0smolqiEZIVr65Vu4vUo
	 LRxeKqgq+C4yqSczKa9SKbsnqWvTedQskyQ9UcHipXcAwIRgCe6bsQzZAafQMzySto
	 z27tRS6Hm0PPlcaAeDi2Df5fkOxceu8sj9M9bbq2kr7pG6djb4TVUX+U1szubaXHFK
	 otUxvUg6vJSdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E1DC531F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482003368.19103.18207532601825982571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23552c420d86f1f143e6aa6e4491094aac114546eba08f06c2f20604c4afb78f
Date: Thu, 23 Jul 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784820033
