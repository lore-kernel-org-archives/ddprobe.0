Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E74D3290D0
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783959514; cv=none; b=iRpu46ITL587gOK0xdDYij1oz1COlegdOkMQQlveca08Psag99I0azOYoArrvC02ueAYHkrxVKTLt5cfCp1iDVGGetiK+j2K+Mw6XKQgXlLCezYi/5cXSOtKNzjD1/1+8lZaFm2vC2I7wJzeXWC+/po6EcKx0XMnQvkK1SxCY8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783959514; c=relaxed/simple;
	bh=/SKNeo5ieskggJmXRkfaBMMr6KZA4bBEcwzeD7FIMVY=;
	h=To:Subject:From:Message-Id:Date; b=FK4CG6G/R1nmaGbyY6tbFT2K6QAx5owXDUtSY4Q0iTQ2TgDsJx/nmJ1eB7YlyHNBO4nU6QofhWiAQrLfzEwVtDEV760b1iubyUQqJ4AqSJ3+ENVfT0DHSfVF1TKdayOLng4Z70RING/Tv4s9phuDXryUKsdH34Mywsfr8o3RxrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tby2yOlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tby2yOlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABD6C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783959513;
	bh=/SKNeo5ieskggJmXRkfaBMMr6KZA4bBEcwzeD7FIMVY=;
	h=To:Subject:From:Date:From;
	b=tby2yOlg2CUR02OEXs0Z6ykn0d9jWh3Yojbp4YnIGApeSPpXtzuFmJTwv4Flzx8yf
	 ZDGd7kTt/ZRENMs8/06bN7FfmKCqyC8NiybUiik50VXCUEFMk1CNeCrLlwObbHGNt4
	 koA8elFOFuTFb4oY1VPtOPrwxqAeKs1Xj/3I1hGX7Ga4C14BmbRnn7oCw7bIslVV3F
	 Q38/2MvNJ3x9JIOE+z+173hFezXsTvq/rhu0XdvLxIQQuZ2NLTeHuaFR3VBulrzTz6
	 1mIKR4IKu+RYMKeVUauT1ANhKtlJAqXJ3VlZvYGFN/4X3r6s6gR/3JwEXM3dxBQAd3
	 LOM2XMG0lrsLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C25C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395951368.14280.8628327091869533072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58aa743008d817ddf9c81ffb99e79a0a176403e0dbe7b225813e60beb5a2388f
Date: Mon, 13 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783959513
