Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430471D89FD
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749670194; cv=none; b=WcQMafFzNGqpoiXT5WhXftCbnWGYJ1hr4fGuEH8ybiTQ52eDksk1QlnGASvMf//vWBaWEUibYPcIjg9aO9rGhG/pe/uYvBFaROee72hTC3Zgd0+kgCXa3xwTwQ/imGHPLPEuNHOoeJRdunGGWD80qZaYriop63EZYiIQN3y7mZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749670194; c=relaxed/simple;
	bh=T8XGgcdKe0nvxii5g0qseg4sX2sWOTrbt9MNvm4KMcU=;
	h=To:Subject:From:Message-Id:Date; b=gPymlouoq5xKLwG4x9cb24A/xxmptfLzgfqji9l8jcNOehVpcyT+kBDLOXVnZU82ssPVMhl0kSqPLngiB9zNhgJAgyuDRGPYGz9Y+41elIoFphGfILkVfv608CgLvIGXlHaSrdCFVgAyu99w/Joft/nmhY1wEjT08Oc34a8023Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRg4vOgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRg4vOgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BEFC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749670193;
	bh=T8XGgcdKe0nvxii5g0qseg4sX2sWOTrbt9MNvm4KMcU=;
	h=To:Subject:From:Date:From;
	b=SRg4vOgnsnfVRMar1Jeae8EDTHtZUbJ69vT8kpQ8mmOVwTCOWBEZeMohsVpMFS154
	 7Y2vHX+KXV7FLh6GpFyT+5vsXPgZuaQDNeg1gESJKPUDuH2llEFpY8oKp4TFJduJ/L
	 G8RQ40r1dqDlBBpfaHUdMmLbL8O7EL3Xnk2zRuH/hDamzWEF7+2D3WNX9oUhjpG8Cq
	 Rq64a5ZqxmwGFanCRBXflHK4W/GtLXJGq/KAhvKy2QW24zY52mDQX0GPbkqkm3LKdx
	 QwgcXM4fM3B8AmrA62f4zz0eQ3PX9vPogS3MqzChtvtd7O1Lksz591Sq1pUEenvbBu
	 qZwl3JFlRQUrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B275C71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967019362.28164.11980798338163221290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba3822c276d685df3ded10052d9cd61d8fee5ae06598cc8253052ef0b7cb824
Date: Wed, 11 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749670193
