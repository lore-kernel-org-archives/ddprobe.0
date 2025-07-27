Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0C9CA4B
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753576194; cv=none; b=iyAW3EmuT3yzkkHpA4PLeeECRbCVTsC2bIMufPfO9nfd305aKb9/do96SvRDE54LowyvIQWqZi9jUH4u3kkxoA7wpFFfcqN6OI0QYjU96kfdiM25rNGp59LNyxOudkSn7YPEeptrUL0ZOql7s3uhRoeWawfCMmZw/I7nz4ghYZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753576194; c=relaxed/simple;
	bh=MnOengAfD6+K2dwtlPwwzjmiZ73qqYhbWTLAV4fzj3o=;
	h=To:Subject:From:Message-Id:Date; b=JWXBVh+37w9NQc0s7ttqXNxdLoYzR4RE/e/WX7h+iVflu0sd3u/+ubhKLrnUwp4FDKeEd71zVz0rfkKByI6VdCzEmUqeur31cdV47Xchfq7u/wHGgieGBwLzqEoYUWFBu0vrajpSZmt06b3LjF7gOfFsUkARdh40LpZcZmTZmEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYktKVTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYktKVTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A031EC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753576193;
	bh=MnOengAfD6+K2dwtlPwwzjmiZ73qqYhbWTLAV4fzj3o=;
	h=To:Subject:From:Date:From;
	b=FYktKVTVAs3ZawU7x43PAGe5kpm6gQrVSjdGcfdP/5rc/bTiKoXzjHVvv+2wnky8H
	 4HWcyQTupD4tCN5i0bbhEpsdpx0tqJFSsOv4qiHNYUGuYqcQryIXk5kb2DJxWy77oo
	 HPsEcWh7PiBz0HD+qIED+rPsQfj5NaM2XYAwOMRAhaFoYjU2B4Jo4Np+HILOIVx/SN
	 3f/Trc35Jya63as6llvbngWgrbVqkQD7Kzoo4bN1Ve90NXY5gMWNV/nXepygoDuWyL
	 Yc35b4pFUjU7SOoMTVYlDSkTE2q1OQRnJz7gHFJUHU89wI7VB2ATZRectuOBejBdv1
	 ZddyS0bz+5PbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA97C83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357619357.27575.7118003263967898868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d8f5780614e2d1b7aa7f603aea1a794bc5aebd1fb5baa4f6900607240c9171
Date: Sun, 27 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753576193
