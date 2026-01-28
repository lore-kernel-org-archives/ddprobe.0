Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C2F2264CF
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769568234; cv=none; b=AFWmqPCSKO5x82kcgsdDNVCEg59/rOwyBBNNE2MeycDhgl/czsj8w+lhBKhMZxVpVixlUZWfHo1Ijpnbo7nCgaTCmJpr42rESepUXr3SOM/cRUWBBe+vLnfjc+HsCT62qN1K3WD6QTxYkY+FJkiQhKTEte8EvghtkuvncKHlyFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769568234; c=relaxed/simple;
	bh=SaJf9YvSAnwqKziw5NLQlCkrDmGpix43DVkWzRi7e/w=;
	h=To:Subject:From:Message-Id:Date; b=oycyuFZ/cHoyBhO8uon/FopIBGzGvds7iYUfi14PxKe+EDzzBQdjzk0AZoF+4DCauhmKyZOYkRWWpoog7stwTW+rFNc+5Q4J5jq6k+FHpTiCfCsr5qLoeJVKxiSlA01teXXioxEZYou3hB7KOZ9B3CHSEbKm9Oz1XACAEDrX/RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzZePgm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzZePgm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2102C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769568233;
	bh=SaJf9YvSAnwqKziw5NLQlCkrDmGpix43DVkWzRi7e/w=;
	h=To:Subject:From:Date:From;
	b=MzZePgm6JWJqx44WW42YklKdJpndowMo5+A+JvOXvjT5L+qepO00SAblfbnFl2TOo
	 SfdrQ/wsmG7238AWJqmTT0tsDE1rfGIVHGpks2r6oa4G3XeSZM7Fx7/PCnsIfeXYaG
	 79XsfShZG+kTsDzYiwjmubrWHTk+47erW7DQuM10EV5wPxVMOlIPszdjmkVeqkDBaD
	 Xv6cHBoGGNGoXKT6471mHQ6O0Vuf+rXXsoGqhSOub6Q16oD4eOTMwv36TVjGktBycd
	 hQ0gsG5+peCUqYGyySrGzqfDCvr9IbQfbPyFvhtstRjvjWkiat4W2DRoNPiPrclwWl
	 oE2s8Q9Jl7NAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE05D35666
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956823358.30710.51105782264455894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2eaaf12e257321e8e9ebcb603c38da33bab9244dddce8f7bd2a7ae7ebab213
Date: Wed, 28 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769568233
