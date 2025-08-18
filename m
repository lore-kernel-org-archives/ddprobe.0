Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B313218D7
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755521394; cv=none; b=LuWfUPadQFxVXI/Wq/BHuS3fq7LiX7TgU5RNFdLk7oGyNwPQ7ZUvQAJSO0qcnQCm/oEc5wmMFifDAMUCuwNpJaVcVwagxAG7XLGrxRgrZPagak6QngjD9pFoLLzGtuAc/boDS7pmWMvrnqRodZP3m/eF7VVH9ymWvgUkxnRUb5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755521394; c=relaxed/simple;
	bh=qdG2+8MS9RZ29nkPvlyrbOhOiiS8fMXTpo/ZOs5mBSI=;
	h=To:Subject:From:Message-Id:Date; b=ZGAsVu5EgpXZ47bJL+CveTBlmiRxB4LuAtNx8LWahkIt65HtLCmRwNess01SXVtgyyOMwTYDKbuOEBdUfWZm17jnITNzw+INN0roLic0IJATCIYwakdvhPqyWcwJUKOzLxpAZJZZAnYcPf0G15SoGCTeaKqmF0tjFtFXhTIfhYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeQnj73M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeQnj73M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6440C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755521393;
	bh=qdG2+8MS9RZ29nkPvlyrbOhOiiS8fMXTpo/ZOs5mBSI=;
	h=To:Subject:From:Date:From;
	b=PeQnj73M05FiIPaZJvIUJrcTN3w/m/azCn1jao1dBavsI4GldKaecS8MS2RU0sqAn
	 A42A17DEA9VU1bhwJCbvQIKVjzx8XPneQ8jwZbMlvbPVXyW8I1pIb2ihp2LsNK14Si
	 83Rg769ONcDeELls3Mhg8REqunCb9spsVXoubMoXZ63rjIUzOQTakrw4D0owwyqpdI
	 V4we9RX+alhDqxNOHO/zeGMV9ppH7e1Uk7u/it+oJYHfLb8sn8fm3+RqJiu+k0k/R3
	 s75W7d16ZuxMX79xMKb2/rLtARumKtDasUwVnbKWK3/PLTyVJI485uwgFKOnm1PFDD
	 L6KJgloMVKNjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D60CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552139358.15357.14076277627251970969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575f096db4d03a3368e01c2daa912a845bbfd3a28bbe736612bf79bd270d2924
Date: Mon, 18 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755521393
