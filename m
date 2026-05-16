Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7DB29CE9
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778954434; cv=none; b=ZOGIzSTGyjpAUTD/ulQs+UX+ouwDp2OAUnduxC07AL8ej0GD1yhExUsqK0WhMopzDohrZHfURIUVWmbpzsIV7GNqeNkhSvDPzuSZAICEgfgb7oHpKk7Omykoper56f9VaLsKk33AHu29sRfOxNIexw68PJ4r0P2xLVahBckhQ7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778954434; c=relaxed/simple;
	bh=0ndzxWNFJybMrqiZ95zW86nnAteVKKl3MywX1Ye5s+k=;
	h=To:Subject:From:Message-Id:Date; b=eRbvP8H9/IBY0iEXvWpawi6nqiBkpKLlhey/fHFgEK4Fh0JOMxSf4oF+E9B5aeXTVCWcFf2CwCsVtBAlCK0TO5HpfY7vEDIZTWmLY6/USL/y8Dba12jlwt/yJ98FOudcEfutvAe5RHz1sKk5gslX8CSTNc85HEOcbxTUaKegEBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFgr/cKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFgr/cKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A47C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778954433;
	bh=0ndzxWNFJybMrqiZ95zW86nnAteVKKl3MywX1Ye5s+k=;
	h=To:Subject:From:Date:From;
	b=XFgr/cKOQQTzR3C/P1gLj94x0iLpkstrqmnH5wPetu2jt5lMhbUojUvjTxkI+Yg5x
	 AQc/8t+N1xnpX+JtIgyJJL2JuFKsjIZidre6cFJvhdBe3Wp9B8P2UtklBXaqiYH+Jt
	 oV7MTnXcTDTrANi/vJLs1C4V1pVWD/ph3obMhH54ymHEMemUd0SPumeEeS3PXIT7fB
	 RIW1nWasiUU+T+AVfg9mc7EzjMtey7k4STyVNufutonz0FZLigSv316FWjyL7j0HMh
	 115rHp5pxqU7oR8kyxudaCeHHtXS/0+1oBWfzegqnihTMascR/kcjdCHoJpVgEmDrt
	 O3N3H+bHShU0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5112CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895443369.32641.4990271927488089405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b85a1c535de0fd9473f2b9bd4956cd7f4cc6f8c199b6c336f095f63bae4862
Date: Sat, 16 May 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778954433
