Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7907E6
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716100943; cv=none; b=l2+9FeL7Ro/QskToeFzC/Qxs+aoXi1GKBl9zylCugO7OoGa7E416OfaGvFD/KriyE+067nVk6yvTxA2I7a0X8JCqjE/6iYE4JXGt5fOZitt4UWv8aMFH2CpKkhCQVYgKmfkipu3rcV5fOTlA6t74zzfZ55p583wAMjf/HxDmwQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716100943; c=relaxed/simple;
	bh=WSvtf6Z+HmvpMsCmqLEs4IzKv7X13jjs40w4HdfCtqE=;
	h=To:Subject:From:Message-Id:Date; b=jKHbtFv+K+K7ef2cCJfpgxs/x8ybqA1Opwoiw5yJDCftATWYOp1EVHC6IkRjWU/JjbZKZlIvj5Zq3G7TjkPB1/kEH1i2W/m+d3TXo6VC7aEQ01OoSY6UO8dxtRrDOxcUcOjW3oVnZ3jXW9cu/MqaRuthUUjY9We1/AUansePPu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnqSvZSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnqSvZSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1AEEC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716100942;
	bh=WSvtf6Z+HmvpMsCmqLEs4IzKv7X13jjs40w4HdfCtqE=;
	h=To:Subject:From:Date:From;
	b=mnqSvZSJezVqclfMe2/X7LORxeGjSHtTn5QPk8awwA4Cxk9dQQAR5XMhKd3rW8itz
	 pCRis5AuyvtWif26yIh9SW+pwYbDMww1myMkzNVK8loviYGXre/akbRG2+98c0ie95
	 ssEj1ET3XS+7uZccWijiMOmcQ2wXG59URD1zY2ENOfItCiBv2mKNtdxR6HHO8qb1Ht
	 bo5Os4RX8yB89Q1DNnWUAr0B63XpuHANGNnIizbMoVL1hueJoqV+bal3IjfHbKDpuq
	 pWjwpc0FDRHinDgyUvefevyZ0XWNJ/sQRLflA20OCVmQ5yB60/FWtSv/4nLAVqD9+I
	 lYGJuPL+FiQLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC017C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171610094276.31595.14415170169243434886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83cea825c559b0d5554ec3e93f1383b473149d1705bc9ac93c352bbdb7f29352
Date: Sun, 19 May 2024 06:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716100942
