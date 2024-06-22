Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472BA1DFD9
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719068543; cv=none; b=VtEAu82kzSO8p4hVbhDWu0EVWivMzQ0y2e9aHhVGW9+T6HeadVFP0QSQIrVjUrTaE2G/bn/w3GL6/MfXe3lDfhKuy3b6RFtdqVKkCADDkEXlLC7EZlgixtJy7RaQ0hvyDVWkEBBY0ljn/6c1cez0YujhLGJSBBNIge+Uqo3zn6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719068543; c=relaxed/simple;
	bh=Ws5nnH/3aig8kM36n/0py12Vuu6+AL3TrmbitbdbvXY=;
	h=To:Subject:From:Message-Id:Date; b=Wqc98DmESS7mCTCFeCIyMcAmucExZamhLKN8DY0Cn6+WhdB0M5DdeNL8zWnEI3Vu/G/HqfTF0ykHwLmamGwbo6pb7tOZy+s4YrLzywIKX+RTSLv/2FjZ7C7KLvSi2tdbzejdDW6a2q1k8ehiWgATwPHEjOkrl3cYAgZAX63AVHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOdIZEvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOdIZEvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F58C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719068542;
	bh=Ws5nnH/3aig8kM36n/0py12Vuu6+AL3TrmbitbdbvXY=;
	h=To:Subject:From:Date:From;
	b=YOdIZEvRvWa1gwtdwTTFFL0xS7NBSjnPa52oCtmzy3WvfbDqbiZEU6/vub14b25gv
	 l7NNVdt34ICyS+2qvIf2rmlSjz9+16njGgKlgdxFPdj5pJ0OC8rocgD1GGTO38ENGO
	 nIy/ZU+jmqMPGEJBUdvxI9+YVfq1GCoZQHiINlvt2TsSU20QfqIm6lX+AotuUwDXLF
	 kbkCY1DJtMratByTwTy4T2h2SPIqJIq2go8L1eC2OmWdnTwPXaaPfwjh/BES6u1FXv
	 Avfn3pv62id5hOHLtwP/GFzMgUBHKamxjMUB5xrpZKQv7cfO5Vwdt45aAof/KkYnzL
	 DxoqBDtaiQ+OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7C2C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906854276.18854.5904212819782580472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1107809e3c0999cf8066d8571a0cff52a904e1760e64fc567500408b4984954
Date: Sat, 22 Jun 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719068542
