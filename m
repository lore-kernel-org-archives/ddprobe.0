Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89750376A18
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790739634; cv=none; b=W3kdHVs2ab05lBi/GfobqYsVi50CjdcvFmJrLSj4G0SR3vCA26pHa4K7e8uQoVKsU7zg2HyiftS4iBRxxNGkSUmPUpobj1n4OmSpeyJZGH3DyR2ow3AX4u6zQzKhRxxByNinK8f6O1HiuOdq2iPv3rxsYbi/QJentjEKlqWnq2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790739634; c=relaxed/simple;
	bh=yXpH77BGF+vobiWk55ge/NsyCnCaBgIqZX98pR/pVfA=;
	h=To:Subject:From:Message-Id:Date; b=XKLAdJncZylfaBN2gMkleMcaYUQdcKsmkqcOfug9YM3MnChILCbV6bj/mB4SBIhsN0ni2+pqk7TpGhO49HGLr82FnxoJyd3Fyo7oUoVcmojDRXPpnMlhkS62XmGw6EVuRUUaZIU/vSWhvJzBJoyBs66ZGH5meMkJ2foR//BUihc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxbFdr+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxbFdr+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E871AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790739633;
	bh=yXpH77BGF+vobiWk55ge/NsyCnCaBgIqZX98pR/pVfA=;
	h=To:Subject:From:Date:From;
	b=rxbFdr+BchvdOJOg9rtPHCpyZ1irMwHccbVUQ/DChZzfUwzXmBp5he52g4UefqvSQ
	 nFiM4qQjv0coW7IgGO7IPatX7/pi/QhybDQtfKmzXlu9Lx1S1rJppuLtNDOeTjy8Wd
	 NvWO1l4A0MKjbhqBUI02kWdv7sxiXbVOfFoaX7r17HEK6May4g/YZTP6Btj4QrM9tA
	 4as9FDJV1jadzZTqnBanPvN8YOS+avJpHNEmI2H1uOozxUExXXYlFAT2/tlrQNXw9R
	 FwBrmibNNpV+eJF1jIAPoKxZaLzpIwfKthUlUypVuARioflMVGPlO5flV4/JCdp34W
	 N8l7nWaHSMonA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7FACA5FAB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073963369.22160.8844959790283696081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcc6cd9c0ec4be725e4073017a0bb542bfe51da96a49f6d79bc63a735ab0138
Date: Wed, 30 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790739633
