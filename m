Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181B3303A06
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761899394; cv=none; b=Lf9VsAnQoZBz9Wb5fDp05rhg1Gi5kFU8N7DIwapkA2+PHAhPzfYkGSoYAaf7MZq+8VMie2AUq+ATHEZbbCP34s1gZlLZLGaXg56sMVOtYkVoA+czTS3N+gSNZJquVBy/MB4MpzG2LawbvgRbTvCgiKVdK54h2/e8Ra7yFLvo9pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761899394; c=relaxed/simple;
	bh=6lJ8GLx1iH//2QNLFnIqENU1zOKeWf+mm6AHr34A8II=;
	h=To:Subject:From:Message-Id:Date; b=Ov2wELJ+iYnfxva815QefKdugMOxQyTsFcXuSLjXxSiPBP8KBcm6CdOa94hdrarkyLmOMAhcMoGu19flSmOzlMH4STigrSfS0/c3hNFJnpiLugG6dWZcL8oh97J6X1Q8zpNEvVJaIrV9CVcMsf3DEEUn5fvuRmTXxhTATxEf6QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUc9Nd+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUc9Nd+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F082C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761899393;
	bh=6lJ8GLx1iH//2QNLFnIqENU1zOKeWf+mm6AHr34A8II=;
	h=To:Subject:From:Date:From;
	b=BUc9Nd+4y+sD5ASvofVihx+LdMlum2XqPbuC28cMZWj/+0gjOFAG8XrDTqM5pOln0
	 WcasraIN6aTUyIdcMCmJF/czuLP+dOUlDt4dl0jmAuzk8QQGwlSYc/bZoCKVyaOCvv
	 n33cKCKPG7ai2Fx+E0Xjwako3hRa/o02cTKjaUegDzQMVa1Vh7d6tSOqrM2+9R5rR6
	 7cXF1ATI7e2LNEkpEFLp4Z+kZAWXvuF8DMPnPoHkcWP3JYQT5vh12Er9oO7nSi3TEC
	 w8bWl7KzLqh/vkCrUsblWsB3kOeas9KTsHv1QTaGrqu8AbtY5wsMrtUixU7wdP7GO4
	 niIJvXYlrle3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF8FCCFA00
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189939358.27445.10252149394939872659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b2efb15206378b4353da09901e02c29f4bf8f67d687141c493e1b319c32bdf
Date: Fri, 31 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761899393
