Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE0A3438A2
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779433354; cv=none; b=vBM6tvcJaPXZRk5y8K5Q/zPO1G95flmckIxMvsXQtvucatJZnCCIFrg7iTM5L+DqDyHDlClP6N2PrfzcaMxnVKLcPBNntWg4L8R/4zPpuSB1brfyBgjVzYwZBmq/yDaNJSXqnWTpslLFrlX2cbhYL8xJAjNnC8Ya3LJNWHNjohI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779433354; c=relaxed/simple;
	bh=lCmuydgoiw4tgeZmwozmzHUKkQx5HuR6gE7vVyTe1NM=;
	h=To:Subject:From:Message-Id:Date; b=FhRcJWjIaUDAxXpu/bAqNMZhm63XYlR1kXzMsVU9TaRr14O+zZ81PNCH5E8sqBIMHis5nh7rB24hy6GT56Xf498JLVfpz8IkzAfaJBdRuWd0HZFOlCsIDebpbopKG8FyMv2JR2fgCXTRWh92AjKNNzAR+wtye60ie0X/pKQ35SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OL19Slfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OL19Slfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B3DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779433353;
	bh=lCmuydgoiw4tgeZmwozmzHUKkQx5HuR6gE7vVyTe1NM=;
	h=To:Subject:From:Date:From;
	b=OL19SlfxF5s8Xe88zeGbJy1H/HQWwA+7x0bKdAwbHF5KjuQrmBPDqW/7wtLFKy8TY
	 u4OlToHr80ODaeilD/AYTzmr1++js+FAnd0B71Qam0v6SxRWSnFN9nnyiBTajgSkoA
	 EvoT3blkMKHY5vA+btCpIrLccfyU+tzqW5AkCwDTGVYUn5xnC8ad1UtYMr1ICyw+Ce
	 9mFBm8+/uF6OI+CAwIrfvQc0W1gP52JcTmWtWx+A5L4kVO9nIgLC7YRl8WgF2YPK7Q
	 Bo5L3R/siby+TSuoeM35+cUzRvoFt28oxnzo0Muag7HJ8/pHpLwQCDwCUQ7V/T9wHb
	 zvvDRCj7eT4YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9099CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943335368.27680.12242264142523733123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841d1803f13402c9c1e26835b902683d55ae7693dd0bd97ac8ef886bd7adf335
Date: Fri, 22 May 2026 07:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779433353
