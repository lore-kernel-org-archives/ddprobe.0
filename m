Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2914C1114
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732691754; cv=none; b=JpJJNFkDckhkTq/uh1OczJ/j5/Wr931leHgL+Wh94TO9o2pMVDlQV0F6viFfA/7bNEv8qJHT6okxv9hZnQNDZEB62Sq6oU8ht9rAfdG9PO2RVH4uc9tDNNeVAwLiK02Eeqj5CKfR+y7XENEz1FeqquwzCftwrkmN80lhgbe6pdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732691754; c=relaxed/simple;
	bh=scdfDPG/FoowKIzfvYC+7J+l3I+cqmer5ene1DA2f9Q=;
	h=To:Subject:From:Message-Id:Date; b=DCY2L3TIQZpSdgjKzVaHIVpL+OsjjvBOUv7J6LbHjUAI4ATcpMOZ/WQqNe4cLlOybA8G0BH29dktnWo6ZdsF4xKotB12nW7QmyScA4d2Tq7m0Z2YH09XsDWCRX+GUmmZUweGiM7lUhyj31DgNEG4ncw29c7ZpYg2vcbJIxmNvYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFlOuBuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFlOuBuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8934C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732691753;
	bh=scdfDPG/FoowKIzfvYC+7J+l3I+cqmer5ene1DA2f9Q=;
	h=To:Subject:From:Date:From;
	b=PFlOuBuEKFOCsuCxtJCTPIkREPmBHhxGf1FkUN1mExx9hL8r5riIq1yjZJomS2SyY
	 kVEkG9Pmx3h+778TYmQZjBXNpDJ3MEbHWHmbfMf1Wl01kkIkdw7dPF7PSw73jH4L+x
	 X8+4LKFtMyWm4r/oKXDwOJCRYYSYUvsz+ja/ELWqCJowZT/vubo5vdG6SJ17tApxfQ
	 r3bm92lPbQKdrROtzxeUJes0hIkb3MWLmFkHnw3O0sDxs23H/q9khgloQ7S5elLuHF
	 LvBhOBizVS+hC1+DoaAoVBXI5YmCAv6fxM+7w9y0Avhlfe935urjE1mRbDe+OcL2uc
	 71fQZD8VxelbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97101D609A8
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269175360.10644.17318230680930612670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a3a64d1b28cf31e1601678d9d453730fefaa8abb1e36308d5bf8d6fada3de8
Date: Wed, 27 Nov 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732691753
