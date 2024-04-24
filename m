Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 693C343AB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 07:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713945023; cv=none; b=f0bellivpGTQTaK87lcLOnRGLoLBoy+ejlDueVQWEA54aMcajYeSIrPvFzVtBd3ZpjtilwUFU32KXcBryCSU3L/PpeN2Ooh9gJquQoEo2F0hFq2IhqILMU2E6irmkgL9Bd4ncrmFxKla71lwzC8jU5JB1k7dJZ8nhC3h2A2tyCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713945023; c=relaxed/simple;
	bh=TmAbjJ9yEti3JSOCDDx2gc7edGm+NVZEInxdsbXFDd0=;
	h=To:Subject:From:Message-Id:Date; b=tdQIiCxXMkrTOdgXGpI8Rl/i/55xqzyTdpnJYj8wz6OGw1W4DGhRfbj+2+3vZQzVbjmzvrwOtn77+k95ujXYwP2+LO/9z601ddl0m5uEIoXQGy5VKcKQyiMucdve3TbVLTmqm771fmLPFOOqgldAnQSKt3/88CeWAZFgHTs6UjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTZ/c8md; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTZ/c8md"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDDC8C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 07:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713945023;
	bh=TmAbjJ9yEti3JSOCDDx2gc7edGm+NVZEInxdsbXFDd0=;
	h=To:Subject:From:Date:From;
	b=nTZ/c8mdKUc/1PeIQ98/AOmgtaR+kbD3pZpT9kAVZjDvHdFpvDkjthEL5Spt0BGX5
	 wD/YXcc2iwSItoJDjjWzwkVybIyMzvoY+NR9oETtsdossg7lyBVNVv1DdPMKjslxPh
	 AUxV5JeRU5+oj1eY+sepq5i6B77nUP952lazkdpCai3dJ868lL6U0kbPUUhUW6kxbo
	 TJ4ComuhH2Ak/2zZ1rDKGf6T6drAISvuNqypnwPUWULnQuytZMqXeTDlecQhhVi1ZH
	 s9JvSVYYfvSInC9Hp5rXCIhyAug5gEx3PMgdc3pVMK8TFQ/WF26tks1C5EIMl9CFu8
	 sQJlVjMjjgaOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFEAEC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 07:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171394502283.25289.13941360966070012300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbeee75d4652dd062f5122e83fe7960e950744520fad3668a75525c989243d2
Date: Wed, 24 Apr 2024 07:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713945022
