Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311AACA4E
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776965854; cv=none; b=YUz5ppb6QKTYDMtE51fFVEW/tDei2hy58l+w3WDEIWOzkzxULgLQZ3IcRTCcFsoLYlXuN5WzLTkw7l8qlAN/702QR7fumFCTnvHgziA2IEacEQKYknjNaTn7G8upEe9D52/bmLG1DJ8+wvBWTEoS5KiHSquRdwUe3G3kSId3sWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776965854; c=relaxed/simple;
	bh=4lYfCOfMwq4R65/60PAcmx6EF5timSwv7XQbKIYkoIM=;
	h=To:Subject:From:Message-Id:Date; b=RZouy9/HpFKuELiaDdT4WbICLKheKcGX4AcmIXKg/bQeRwiqxdJUE84IVolGxAWFHBfyrgditKfW0RpCWf4O47qiNH6iAPm7F4qdZoQYnveICF+N3LwsQlbh+q/+3QeetzxXh99AXAc9N++uHPAd9W56EW6LqB22VA/pwqqsjKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlseitRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlseitRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8775C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776965853;
	bh=4lYfCOfMwq4R65/60PAcmx6EF5timSwv7XQbKIYkoIM=;
	h=To:Subject:From:Date:From;
	b=RlseitRkoURE3HnYZfvNaKuLNx5I/pQEs4MErEWaUZvlC3XwqHDwRPVOmlcLbGODG
	 UCKOn9oxUeicA5LqTgaSnsn+btSKUQeVugBApN3kHqN+WO1ht8TJ2+heBeM+p4G+v5
	 L0bCFZqFd2xalDMaBulXvhtsnY9SSwsUl2b74Bz8TlTConWLs2Op0+bfJVjS7iCtoD
	 wXRR0eF/KvnTORk7Q3wM5mysPKAXPUPcLs9HkjBDScDwlnYftoLmzoSRNkurCsrXMB
	 6A49EV31uljzuSK6dTtbz4syXuR1DmcZ8wXgJQ5cXxGtOhq+q4xyAto+zs3LIK3HB5
	 FJE7DUWl74buA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A97FDEE31
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696585368.7327.2796860177660013888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5c86ea48d106e00ae0f7f336bbccc77a68bb6dbb12029f4123c1109017258a
Date: Thu, 23 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776965853
