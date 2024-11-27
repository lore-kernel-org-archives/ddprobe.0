Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206511BC20
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732676154; cv=none; b=T2fODxjsFZ1kundkyhXnR+LrI5Q4ym5UPeoy3zyFJ3z1Yu8Ik3T2TUy8u45wyqE52iUAZ7j9xaeY8jFKAU2dVQiCaldZXZ+7xQ5ztKc9FJJQmri9+PIG4Eq/GofAu110y2EINpYPQxRW1WG+/Q8bglhSOTQnl2TDwxbEAIp6Txo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732676154; c=relaxed/simple;
	bh=cIS3+etF4ZiCWy1EPeNg6jFpVZFGPpKMkAnpcwRAZpM=;
	h=To:Subject:From:Message-Id:Date; b=d29bFDXdd+E2lLb2C0yhadpzst5FsobtJKVk2E+FbpJQ5c0olmIsQsNm4+cwrpepA6Iltr/AztpowuDTx35/3EDvAJUkVvm2J409mx43Cz4sYWHUrdC1ifU4t3iqEf1JrmXUjJjU+dzWIfziMP6y2ASw6PA/b5dd5e64DgDBpSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lydzg6oN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lydzg6oN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1166C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732676153;
	bh=cIS3+etF4ZiCWy1EPeNg6jFpVZFGPpKMkAnpcwRAZpM=;
	h=To:Subject:From:Date:From;
	b=lydzg6oNF5qv6MOXVTfw+tZ3Gn+sW+ZPJgZZ9s74K2KUqOybmgdM1JMCxcSqZd9XK
	 Do28+RhyLgRu4oC3gzci3BL52MSibAYSF3h+ONaF6nhfs9TXSZ13F9cv54YXxLsOSU
	 wgcaUfZdDsa9Y76UUI/wxsUzURtRlkj701i7qeuxCw+ttaSsiZaXKRqSR8YqpWv/Px
	 gLJ19dxsm9fpgPv7a0KK4Xg2vxPCyDDhaN+dd20W/faoLF+jyzaTLYZuFz4OPcFyGd
	 sMs1wCm1Hemz4Og6p8Njilp2laEnNBOu0g/MizhJOXfhDDYma9jLiz4jOOLP0LvPOE
	 wJkF75ZaEb9dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92434D66BAC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267615358.20286.3210218398441687562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651a0d80496921472aed57cd0d94c8d1b90d1631d99ec24ea6716f6aacaf343f
Date: Wed, 27 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732676153
