Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDBC22A7E4
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748876395; cv=none; b=TzRs8Hg0qKFWTfVSZoIOImBMdbnr9GEkP9kXK9GE7r1lnOUVih6KYgD1RrhK2zPe03jo495t12vzhnwBuuiokWNC5aF0+vanDxFLERAzmxbvbC7Ixmi1FZ/ixehU62ksUmEb2zOY0Z4Qyu0h5sJiZrcccwvmsjKOtp350rJpeZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748876395; c=relaxed/simple;
	bh=g3T8Q0aCrodIJX2jH5dED/6eHNAKBDwS8NVHu+FZaUg=;
	h=To:Subject:From:Message-Id:Date; b=hFytoS9H6iKo3LmnF1bDivKhPhPWW8skujem458Stsg+5o45OA2OLW4RHy1aE6eBBOowebSfTiFIHBqURc291OuFjYRd/LemoStHLrMJ9STruIMiLo49Cvi3f8p8W29UfJ9OPuQmdW/N5F4Yl5PYcnsXMa3M4so8MNDNBs/Ht1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1CUipVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1CUipVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A064FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748876393;
	bh=g3T8Q0aCrodIJX2jH5dED/6eHNAKBDwS8NVHu+FZaUg=;
	h=To:Subject:From:Date:From;
	b=L1CUipVybdZqDMvYbyEkJ7zk23Yh3noG/4wFsGvIUoUhr47HyxdNVLU7c//p6di3o
	 290hMJiVSs0i5IhSu/cMFBMQDsfJLAnec3tbK/xznRoiKdi3jswaTCSnc44ksymJXf
	 sd4/IuXlXciyv8u0xp0JB5EGlf0rfmR6FeRZBF/ws2/7AuZwZMdzhSKzZL3nL0etO9
	 VQ5JCir14mFX6d2QJuX3EWYZXS6KsSApMY9wlsMbPJG9D+XyQ0vVc4FvENJTXh6nw0
	 L+Zjwf/4TtxbJ+1UHMkSr622uKWoek5xw7WHC/qwnMOgX/M+0O837VuGJHovMijPUe
	 DpNrCVvOVJmhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90354C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887639358.20005.15022249879377883599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 900345b9467f670177928a19294adc826ce5b1ff265a821c8fc615db60726a71
Date: Mon, 02 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748876393
