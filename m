Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7133B47E5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789042234; cv=none; b=LKIe5T+586UKTkwR7OFuyC24sz4SfzELLK5F46GaM5GoFgsc2V/nbzyZiG7L8YE4gYd6wS78P+T5x3kKvQF6O8CON9O9b4Wrw+BN7JHpeP6j80HzxhXa88pHNc28Hck3K3U0GZbSIITxIfLafusyomNpnilwXgXqE2sgpInFWEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789042234; c=relaxed/simple;
	bh=YTs0VVksUaoZoG/mlFdQR+wajVqFl5p4hD/LkninBxw=;
	h=To:Subject:From:Message-Id:Date; b=rZpftWdmrdOEXJHakPPTN7C5CcAS5ze012oB8A4gF6QFkkTimk2er7p6j3ihlO+dmMM89plQ2wnBSoH8BX5f2NdUwliPn76PIhyWCMTrzFCtoEEW1jNc2hGUMvkKkBLKH4SQ7hF1m/mHDaTyp6Q74M3xUTU3wF5Ai/Azq8GKgXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsVwxgcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsVwxgcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AB4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789042233;
	bh=YTs0VVksUaoZoG/mlFdQR+wajVqFl5p4hD/LkninBxw=;
	h=To:Subject:From:Date:From;
	b=FsVwxgcj2EbEy30ppSuGNnDJxUA3Shl3uF96JHwEvyPpCOeVYLhgqwqNz0Q967Qxz
	 BA3A05pnDpnxhOlY0TowbY2UV9rOgAY539eu++01H/3Ci/vARAvoNUkFE9BeezYixD
	 RLAPTNKekU3xnNMVT3790csC4JwGv6sp6+RGRDuQiGiQIxSfEPTNBDY48pH5jA51m4
	 dZOn1Gwa7O4bJyrl1txFQodT6l0D+FyrZ1tRG0bXDF4Btap/YtADGo9X6bYrBvrrFP
	 XsC6U1LeZ+U0wzC4EgRkct9v7ELy/WDPzvxxflGzrQusc9M1U4VUU0E6e987wul0KL
	 wI6RkTQBr9HaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA546C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904223368.22779.15625460181898242450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269d97bc047abb5a89bd2ed024430bdc125d22d7e2cffe63ba737703f00f52fa
Date: Thu, 10 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789042233
