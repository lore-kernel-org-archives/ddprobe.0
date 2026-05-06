Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190043043BE
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778093854; cv=none; b=NzrllasE9lcBjD2LxDZhIfu++W+oaqwzQrmDgKVCYe8ashn3ABV04UJY8QPpC+ELuMyui/px0Np/uvbbLCkvtuNvLfJolmv6u3wJaLDGZU/A3UOLezmlOnl7fMjl0EmYwcCC5wTM3hX3nUX+YT7/fKffu/k+vQpmvhXYu2QmSfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778093854; c=relaxed/simple;
	bh=DXJSMmBMKL24QeXWuHF27vKNmOGCxAexIWXN1vOgWOc=;
	h=To:Subject:From:Message-Id:Date; b=DdL3xbRIPHqXUTiC4MJALbHmE6+LZjGL669SrakcoGr3bRw0NjNDrZZzeWEj0sXRXY+My/2jyI+lBxMFi+1fFsTm1/0IFP+fHcKEMQ7nIGSBj6ZUH+Nnqi3EhII9gqboDL+fmZ8Sa2kYyPzLtUhhVbZRZSKPaEvgLxusypYLh8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9RZSqje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9RZSqje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6405C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778093853;
	bh=DXJSMmBMKL24QeXWuHF27vKNmOGCxAexIWXN1vOgWOc=;
	h=To:Subject:From:Date:From;
	b=o9RZSqjepy/KKqVc8Hq3we1EfTS8PP2VE5kL3IcNQU/zp1AXU/E/js3ymoLmSHSCc
	 lNH0+v5X6sLj8C/KOz0CjpPiEew0ZJ6wORL+kM0FgJD1glqzQuJ+ZyxFasaYCeVNXp
	 yqE5GZx+Ts2laK899s/wCK//9njLLpdF8vA9TKLYc2k56DV6NnDKF0lsAi1Cc5tC/5
	 U/D3SwC3ruafG0sZUV1NarwEtUqnK0BvAL6GxtahAaQbNhPLwviyQlsWDrLLzeIVHL
	 Kuzz1Zr29yk4VKs1O56dOFZPEvwpWHel06cHxbVGCS1NiPuDP2dxfq1llJFAUAE0uO
	 CUS6lQ1sRrXHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79B3CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809385371.19319.18257838467398824047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2f67b7e1e6efcbd1ebbf3983618292e9cf11c02b15fbfa74001e75c0cd5820
Date: Wed, 06 May 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778093853
