Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3084632860B
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776803254; cv=none; b=bKSSSvIH3q/hhZY3NrNCd+qMlIC2RLGp7Q15I/S6pd+y98mQABUlbgRqGUQoTPYfZjVIa/RutWdSEVqDvGGiaJ9Wrr9iTSW+oLFtC8vM1TlSpMf+N2NhgVXdMI+xA/NZ87ErqYjuiGXWXPEP3tDOI2u5SGGbLjOWjkPgElCvcZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776803254; c=relaxed/simple;
	bh=Sz61HvgkKC1b9nLl6cqxWHXLMNkyGrYmAN++AuhTZ3U=;
	h=To:Subject:From:Message-Id:Date; b=hu0UqzCr1zsIpcrTUAx1x4kULOpw6KN6XW5he1ghP3FPf1Kpl6125uo9ZxMwCkJahyd9TmhrZ2JHW7uxpEvuz2Z8oxCaQtIApWfnYJ/rVZ1Z4ce1hNXu0OqjWsAp7mFylFxK5oouHlyXEC/DPOAO/2+yDdGbpnOEW3XrsuL+tOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPNS70vo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPNS70vo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8A5C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776803253;
	bh=Sz61HvgkKC1b9nLl6cqxWHXLMNkyGrYmAN++AuhTZ3U=;
	h=To:Subject:From:Date:From;
	b=XPNS70voQoOsgF4xOGO4CUQlenlaFoiboNLdoiuQyOtvxKPfD8kiZzDN/aCbda0o4
	 gGZ88w3P1tvUGqbC4meFUdtgJbtD4lFy+ncSgf/XbzxhPF7hdaSX+vdmHb1hbHFKxn
	 BQVtrL1HaPI73IX/SykjK1RkhP51ARPjV/t47NbLYaCUnoTbMVpE7hnn11HhiQOY9U
	 jy8CQPXGT44kK/fP6j4heONd94q/9j/NhZuAlAZL9BEB3F4zsSWjkzo5mUrrjeo7aM
	 gPCUfEJnLLz6UjsUSedCr/EbWfPqieN3i+eOJEKD05CoZyabmxuShPbkbwMGNCWvfl
	 HnKvtT8aNZKug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE49F94CA7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680325368.20305.4473911407048518881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2feb439596b94c997908b68ce3326e53c0ff0cb47e72c78c49a79e06909c0b2
Date: Tue, 21 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776803253
