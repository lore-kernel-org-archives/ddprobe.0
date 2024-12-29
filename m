Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579A92594A2
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735481754; cv=none; b=KbJOqQlxvcsEf5uBYqFjkQ0mTrr62CPUIKln2tjthl1p4xjT9jtSKbZPhKeGxt0lXfwTa9yhHEa1hbvP1kDlwWUMsmEVWoTFKwj8WZuyKsxnPxb5oFj/Dx37tFaS8glU9qNBQFvT+1CYh5BX9/hAXyK5pviMy0vQ5ZAlMmdCTlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735481754; c=relaxed/simple;
	bh=fTQHdbqRWTj4B1oj02leadNtDlL3MnqqNNyulvqNdSw=;
	h=To:Subject:From:Message-Id:Date; b=Q4sRRUto1Paw7jpqT/wbC7UN8vaimJ6MzVMoUduebU3IGTFmVO/vqvuecyav8vb+TPaTxX6xtHXijh47F2lg62KRhBzIZeUscZPfSaBUvZOxDnmy711CV71LIKhzmIWZq+Z6aIzh0EoI6U1OLtJoBvrsDlnk2JCpyjUHLZkzU9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mkm8x+jl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mkm8x+jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB2DC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735481753;
	bh=fTQHdbqRWTj4B1oj02leadNtDlL3MnqqNNyulvqNdSw=;
	h=To:Subject:From:Date:From;
	b=Mkm8x+jlUgcn1KcC2ivmAkj0idA4uz1o2Qet4AccsVmjfIB8f121Z/sNmgdoi6Asu
	 5gjKblaVa1IvUwTGiuiRFHOz6xYqr95qrXLGpTLiJNFCy/ZVQgH7ETvqDro84xF4Ua
	 qZPX4ag7KOc8/aDzGNFVGzyff8VjGuFLHjjxGdp8x+HaQAzXhlKyMX8Ddj/FY5xBPB
	 LDEz25MmhmJUBDNCauRi5TCtR+jm06IXsebKzcjYBYTfOJ+gesEX5Zvrq0qFfMeVLQ
	 UZb1V7KKxOSmjBBfFCt4y8BMOVp/CRHaGSlVyWvdSNUAOd+/UAH3Vx7foNKP1qMdaE
	 kEEif5EPz4VUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A103E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173548175361.14058.1819390141222329923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781e4c896d66d5954b9ef57e01835ac94f79f42869f99a35834dcd2f079b3803
Date: Sun, 29 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735481753
