Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538FB25A2BB
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781240194; cv=none; b=aNXSA40zTaLDIrqmxIg3mjKhzmfTseDeqj+WvPeaBvM3L237RbuslRmI4+5Rukjm2da1NhVWkMJsH6kac7JBF4w1YSY2si9MhqcPdDP/k/nqvoU5s7Vu7ZsYNis/dSjA8xj3mPxrjYOwK9/WoemQUU1sqVMwvhsnOCaqX6ecG1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781240194; c=relaxed/simple;
	bh=RqZAHx/SVSnWBzvfqcHu/QA43iSm/26p9Fmwi1j8nLM=;
	h=To:Subject:From:Message-Id:Date; b=TpvV3V1zniLZMEzGLXZ3c+Km/rvXaOwCov6LIzjUba9a9YYq/E5n18rGnS9+obbNSoVbOv80rexi/BAgg7YsF76yoMc3GSJxKw8r4Tbo3WxPVlTEItwVf6luRgG4biTBUOvNfsVOfbSB9KBPTt4ol7LBUkttPW99xaSAwKlFzmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnb26Ubi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnb26Ubi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBD0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781240193;
	bh=RqZAHx/SVSnWBzvfqcHu/QA43iSm/26p9Fmwi1j8nLM=;
	h=To:Subject:From:Date:From;
	b=lnb26UbiXR3y5e68IIYcHj+EZyiH/fOSWs2qIeS7Vv68LKrYbgJIud5gQAX3ONyM2
	 Bdhu5I7I2DkrgGHbnDSHnLUmMUjhVrFg/gSM26FjPumEbHZCAQhZ7mZ11AmI3rKVwZ
	 Rbx8MyoXXu6sVEmDmTbvBBt+UFM21Rf4a4gJNk2kNlXfdGB8JIekgurSj8edBLLj6E
	 T3Yovp60L4JIHANtRH13R0D0Z4825vWoS+OmeDwc0yA+Ly3qUbOP6BQtiVldRJZP0P
	 xDzxCLjAs140Km0Y6VJ9cL1vSjikd6lAZ95TqDfTLHaWharqOavypi9IkuuAM16PUl
	 VPe6h+qeb5TAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC121CD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124019369.24405.716685929498220279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c40b87d0d9f30c6d47ac3b92940b5f3c3c2b4ef7ddf89996d974bf1805291e
Date: Fri, 12 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781240193
