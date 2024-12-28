Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D08526AF3
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735377354; cv=none; b=fX3jwDQUdgmbyM98Wmz1b6kbwME+/K/hHXqqn3zmLR2iHOuo/hCxEYjvJRFPT59HKuEbY9I6rGy0djQ6f2d0MftSre9NC4bgaW4rUAZ4ULDXyP//N3wE1FAWFQav1/CalEz1hmAketkd6EibiNc/Wl8LY/ptlBreS8sX39DM/7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735377354; c=relaxed/simple;
	bh=01LO4Ytdmq/DDgPFxFFohLbY+/BPI5vHninL1UQ3Ju8=;
	h=To:Subject:From:Message-Id:Date; b=OkJjI33eSvVw8oOMjyQcUhaKvapPxTxfyzrchXLfdMA9gKph/MEZ4DK/r/FnaKBqZm5sEWGruhAlTGP1ylJ/N33waGFsKnvSF4Rl2sDuxVkTfmrboXY3LMyqqn2pYM/fVZ2PY4sB77ib13gbtidYT0rqHcm9GM6Km1/NN7xDBB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oX1jkQpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oX1jkQpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCC5C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735377353;
	bh=01LO4Ytdmq/DDgPFxFFohLbY+/BPI5vHninL1UQ3Ju8=;
	h=To:Subject:From:Date:From;
	b=oX1jkQpoZswZfDbKgfQB/WAb7aWDTbJG3eZeBzvyVE6YS8ooUdJXH2vXm8vuYUnAG
	 TN3mPgyIiIbpqi1VGJd6U112CSAkpA3oaQOKC5C3cZm4XU3x+kyIQBgg9SwuBVP7iw
	 KwUsFZaARVKAR0Osezupvi+OyQFqa4VqcgS/JlxbWSbAJBiAZxrEYqnKtAdeM15MGO
	 dWEl7UHmSlNkIdF6HuSdZNZzLbog2jyQ4RTwa7VNmTqTjMl93zCqEnc97cIRfPhtAv
	 X+cTjbyXNR28/yl5G9nSyDWCDYrsm8QleNa227oREyrNzPCURGCjQyMY8DTIUQ8c7o
	 pfBagHLotM5GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99083E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173537735359.27739.18177239154442580833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca63062bb269488b5e03e18abc64f5f4f9a820128ba1f35d94558ac01f24e4ac
Date: Sat, 28 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735377353
