Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273293EBF3A
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769309034; cv=none; b=SD7gzvvI04Dc/zSer1hld5hZw+mBPxdQrKzJGRCAAHY3lkf2kICyFx4YpNbgy+tzgG+oZmnZMNmpPYoLznIxepmdxEMCUsM/dTyXpxy6r25V2xrU+mmSKSKdArwZvGikwwasC5/PgY6Qy2OS4EtEpJtggKfNNGRIzIQQc/kvjek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769309034; c=relaxed/simple;
	bh=gkK8+PZs9d2d0sUT3NvM2I4k2WXhNN9tu8sVHMXg6dg=;
	h=To:Subject:From:Message-Id:Date; b=DRs3zqjuzN33yqga2XP2BrxJGxFI7Yk/Jetf/8h8xPnh3wuXZfsLvfFJ8AnoOvgzOXryYnm9uesbUTb11qVsm6ad3TbZ1YLPkGQou/e9RIV0z4kao12WM/Ao7Vvp9DlRB92ivavnAyCrmLqgnEMaTN4Jgel1m3Z8SIDS8yKIPP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMRJwnHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMRJwnHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA39FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769309033;
	bh=gkK8+PZs9d2d0sUT3NvM2I4k2WXhNN9tu8sVHMXg6dg=;
	h=To:Subject:From:Date:From;
	b=HMRJwnHMlzLfbW4JFbGWQwwhTKbuUaw+FnPUHvx9TxdIh2TDt9mvgtb/honbiO2AZ
	 nW85N2YbHIAhz3SFeC9NUrovZldi16gcONbSTc7aVg08BrfyQOW3rutspOD2dwL64v
	 DlHIVFpTLGES1EmelN4etseXLTAqjSVx5H7uLGTu0oZSw/wwzvJhfHgfm32i9tU49J
	 p1QCtwe29t918cqLHKyVBcPXgdCro0DA90eUyKAI1Hm0RyfLSIOJ1F2CTqtCIspSn7
	 GDAgubWY3gtd9SZv4H4k841c5FrV4WvkCfjCB76jW+8Bfz+6Z6IpG6tzn4r0mC25bi
	 86XjKTtVRu9NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9394AE63C81
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930903358.1997.6113565774918546434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd36bdd33d1ef7b2245a9ddc780d9aa355f377d18cb1a9cdc17a3f9b076fa0c
Date: Sun, 25 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769309033
