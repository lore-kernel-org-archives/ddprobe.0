Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3261DFF8
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734911154; cv=none; b=Fp9l2B8X6/67aSa2ego2dDuF+b+U62Exl6RFu+DNMEOlseD5tXkv9z4qIG9UJCJJ7xgi00n9PUiP/iz4MbFAl8jvSYFBkLkBVFEkBOrwn+IM5L5uaVIJiiTOagA3tvoLvMWimszlpLO/sC5pPgRXhh3K3Z5LGR8oXnsnYImwqj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734911154; c=relaxed/simple;
	bh=8yCCWW1khs9B6s4ERh1YXKF7LSXeIU9lFeE5FBNxSAg=;
	h=To:Subject:From:Message-Id:Date; b=RuOLPux8Ld+M4U4PFeQiN+uIhKSPVqZr73bxxewiiZQcyoUrS/qLKi3gS+1oTC4CSApy3Em2J9X36WciJiCPlfqK/iRqUlr9Y1blEHO97kNxoqdWSvcHoiUjxV4q7tmIHXmX+X64oAUmbGB9JHWH4nQcTh+m3vW02OxGSDEEtO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhY6ktcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhY6ktcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D1EC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734911153;
	bh=8yCCWW1khs9B6s4ERh1YXKF7LSXeIU9lFeE5FBNxSAg=;
	h=To:Subject:From:Date:From;
	b=BhY6ktcNsbQ3HWlTdp9PIQu4w3LuSAhMGCM8ZGwSZDRK8Xhr7JhOn6rt5n+Qq4bjX
	 cNo6+zpt+MTUeSrG7jbJgn2FTOry+j1BcEtZsYz3jL9+WzZZ1hb0gtahzqT8OaDuBu
	 A7cR2KVaTaWfHMSE59asauEOW7mYcWPO1/DhxpLnxpA/kRpVVhBWKs4tlMkplxZwJz
	 0bWyxtDWU9eLtsicNPW0/TAGqgyY2E1Bn8Z5s+LVAYoRY5wavbeYsIY6tFAPp9XTcO
	 vSs8h+UzcX9kGc6Jt2jvg5nywgfEwgUpnNfDBxGVFoZ2Fpnmqin9Rtb3Tsz0NrPcEc
	 Itwib8AvIpS5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98131E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173491115360.14618.14987023136760640301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431aaa56c3f99e2cbe23b34e156e7622450c40c4bf1eb3ef91cdf27a9b8bd1d2
Date: Sun, 22 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734911153
