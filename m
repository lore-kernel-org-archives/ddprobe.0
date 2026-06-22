Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28100347515
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782154594; cv=none; b=Y3wwIHVsZYevKYcxBHh5f8497lzub6Y6IkEginurPOrvUOdKqRnv5g6mtHUZMrdtBR4u8BMzygNNJmIhErmXEL/ZJdeAYTRAyrReqF2s/mJo5nZRxx9+GcaEuOMCGkGbkiab5NL4EinoLiBexcH/2WitLgzwr+Hz3CM2LqtiV3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782154594; c=relaxed/simple;
	bh=Buhn3tBaJOivmrenBQeLHfCA717Io3wjJGsoIKWXzyM=;
	h=To:Subject:From:Message-Id:Date; b=N6fHYu9ZgmNpgqd+9QKf/s42jkYo7UmT61mFDABKP3BG0w4HuC4G68eaFRd4ZaJgO6XzYh74505bdpV2gtJCquvlduSfsvkvqNaWY7uYAApcqrcxz5KOuA2XgA84j6IvWOsNgA6oDdZQM6gh8bwNGZtsoQzDLojk0CcCFKv1Rnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6PQ93rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6PQ93rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C867BC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782154593;
	bh=Buhn3tBaJOivmrenBQeLHfCA717Io3wjJGsoIKWXzyM=;
	h=To:Subject:From:Date:From;
	b=U6PQ93rkHkuFp1MiYwkgCYzDeNSZ+KBs/jgm9osrQatNYQN7aIL2iZOKH3DISCAca
	 GQNGs/pd4kofUbJgZ11fVfLB/KAnTLQmTXDLfsqWxu5Vt4NMEkzcVM62cfPrqBUV+Z
	 yGme0wiXVj69apECA2cx1JtlddupRU21gvuJ6DTwX5f1VcmkmBbtS5b2YNUHq/9JBA
	 KEyriauq3Sc0SjRz+AFLFg+TUcrhLuWsdu3vF+/NAhzf0ll8BX4jTrG4te6czL+nmO
	 9JFSeM4D3UFsNeJ3XAU+xMAQoec6ajHyDj7zwkRAtVTDHBMg3/l9RNYofhKp4/+fPC
	 8h98G+QjB8vqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA690CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215459369.30002.7188864826165242378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5ff97520df25d20fe3966dab006d1b1ef0483249285d0303ab1e342f7f3f2f
Date: Mon, 22 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782154593
