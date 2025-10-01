Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F4E22F74E
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759306794; cv=none; b=KdoanoRVijgf1d9aeS8LVi6hfKe95xZlpzKnkvWXctRA8rAHtUWJwK/D+VLAeuHGwghQnvpajJGNP1BFNefoTNWiQ9t8u0xP7fqIatVRLDZzwnVh6pU6nkhtK2mmVGysQroLrQ8ui0Glh20I4B0591l2AO9PB5Q0tg/dWKenOB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759306794; c=relaxed/simple;
	bh=3zyrlZAB11p7wFP4sCKA947KBGF/gwZd5z8A0z/iDOc=;
	h=To:Subject:From:Message-Id:Date; b=DRTG/EPUryMzV/z9v0Plc+xHJE8AueXePlws4rNxPQ8E2vUMh0XIBUUJR68aj9x1CloPiCKximkbYv8PAUTp4VWuREIJFEs4d6xe3tknQ5Ef3rjFVpV8i8bKxoqiBWH+Lq8k9F5OKNXjzWG8DN/ctBrlRgPsUqQuIVOlsMYQOfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckGapnvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckGapnvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BCAC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759306793;
	bh=3zyrlZAB11p7wFP4sCKA947KBGF/gwZd5z8A0z/iDOc=;
	h=To:Subject:From:Date:From;
	b=ckGapnvh9CF35/oKUQnH+9Bbq7V09s9lwi7ujZTL698KdBUg66jz+Uc4OW17CQOHa
	 40BlQbk0iSg9rAmbdEofZ/R1A+TpNmf5GybkGnFRdzpc7tDPcAbVUp9KUpMK8ARVgM
	 esbIqGXXnfBb4cRCOqKwpF4Kz1IpwQ2/4WZMIdFO4G2apkbl1a/hp4U/knoPOinHxQ
	 OkaN5gTP1VLoRI6pQC0iHTE00x/gSSbkglD0uus8w/DV3Hl4dIA/F/bfoVI63PT/S8
	 F9INWj4HXaFjSVwwRwS3drIbKQJbHeOXPNgXzUj2ViHVQ7U+NLBsUPvSM0bZIq4Wr9
	 HiPkmpcxeADMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9379ECCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930679359.11908.13903631329131818384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a689b5ad5ed40fd9b17d2b5826d741c7df2e9e3f0c51700a0226d8f3ff1f976
Date: Wed, 01 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759306793
