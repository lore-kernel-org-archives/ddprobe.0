Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F2635946
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750741794; cv=none; b=Otzb/Pl2qN/L7X4MR239z82DFUinj7/rOGAdAyrxuyenVx+Yfi2w+VuN4egnGM4ggYWgfkt80f6VMGCesndKoMWlgCiXbu61ELAegS/qq1JCecggBYvYGUafeRxlba8c8Nzr5Arxd8lYOg6NBKtsgW+JSj8YIcCoe5G0GLN880s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750741794; c=relaxed/simple;
	bh=AFIDz9nSgT6XjW3hYIFMyzXYIWXtHEJKqdALNiPaG2w=;
	h=To:Subject:From:Message-Id:Date; b=Pw3L9phM2Cii8R2Q7dZ1lMgJublWD4LS/h/plO8FBkCVJhDQQJpb6G4ZFPduWUPO8RmzZd65Er56Nkm8bS3giwWjhcTV/1h6AUV+Z4Qp7B9XpP29Bv+whsU8g+z4PS+BtotYKrzuwx52Vo99ZeeSzFtvtYCs3DJU8g8xk+kon38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvuMAf/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvuMAf/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ECDC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750741793;
	bh=AFIDz9nSgT6XjW3hYIFMyzXYIWXtHEJKqdALNiPaG2w=;
	h=To:Subject:From:Date:From;
	b=IvuMAf/AE//zlybyegGXws+T1wt9GUurX/RrzJ2gtZywAduARB2Hf1r3UpC4sC3cL
	 MP24HbG+vT3cANAVfejXUSiPnsVnpbI85/NYGZ+vsdaxDWraoOuIENVL+5IQvoOaQj
	 O2cG8av8xdxlznYs5cbnOf49KBm3Kx85AbJL9omF4qCocNE5t0Mi5OhtXPriii/swy
	 HNyyEf8n62cXZXl6CpRxbvjUOX1sAPa5EFr2xhiS/U9tRVZ2SFvxIhPEytu6AmmCkY
	 0xFPoK4/gw/Py3yy7Ug8Sdp9WYeZFEkQ/xgusRN29/z272y1mKUKgxxzDPK+orJp26
	 yA7cbeCFExBBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE3C71157
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074179358.9767.6335395336330171735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d2d2874ea84e1984c4f7f9d411801535334736f5c448e72739c22d4da85b55
Date: Tue, 24 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750741793
