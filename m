Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528E91E488
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 13:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717941443; cv=none; b=KvhVffkVC1JcJ1n95GHEV7fbR8nG13Us0XcFR7Z/7wjv5S42498oOi/yP35tbqJKvJq3W/Xq3KYLz/5mO7Xx4Mb8XvVruXsZBBqQT5m8D8oatFomlgVdRFkUXOYV6lGeM8ahkiC+/IX7N1s/0ICw5Rg8r1IiBnJC7EkWpTD7VNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717941443; c=relaxed/simple;
	bh=YzwUXM9Zj3F1qVT70WsVPKUltZlWaMJWnI8tnO2Gkyw=;
	h=To:Subject:From:Message-Id:Date; b=pM3PVLFbzmVxxpPjJLcc+B37xATNI/AFT3cdmVLffwy0+Bo2xldzB1ULU8ugheO0YnyPSPAFEwaBoa+kA4fFLdkeoxIMz/aeihMS79XyX7qe8aGgcQgXPJLNzThO5TngpJ9dy/ztnmnrvlJX3BxP615lTEM1j4JaHGATAHCDMw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8W3h7pA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8W3h7pA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2001C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 13:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717941442;
	bh=YzwUXM9Zj3F1qVT70WsVPKUltZlWaMJWnI8tnO2Gkyw=;
	h=To:Subject:From:Date:From;
	b=K8W3h7pAK6nfeOF6UCMucXC5IWNAmnA4ctjXYznkTxj3rT8m9ET9qPe2IGbVfsXVW
	 IZwbTIGfzB95ebUz9ZyqeVpoS7AI8KfW5KHbE8/vnIcblbBz9OVxl5/p8J18d2TcIF
	 5yGOY9KTIb5NBiGmvdzKKfNQ++IeD2V1mhKFhsvr8B9xMGIBpOOjuckdfrsS6qyyXy
	 ZFTo9YSu2/AbiGso1oQ9xFYL9PdNcQ+9by0UMyD0b/ymuRZeKWWfpc8I0yhDB4YUgB
	 ujs7/FDV3WSdrdldH/0t7egQcJE2Ww/KZ0GfJWGjX/fPvJzrMJYItVqI/wzmhS3Rzx
	 ekb5ei5jpCXDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21F9C27C55
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 13:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794144276.3099.11598745604709190576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac78d79dec0c895f0e4c84faab7e71821d86a2ebf8ea5d3f9689eb2a4271adcc
Date: Sun, 09 Jun 2024 13:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717941442
