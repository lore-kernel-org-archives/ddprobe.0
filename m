Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1616A4A21
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763167794; cv=none; b=VrDiW1zn3eZEFNFeAi5LRro3WYRkMRNYpzUmbR5Tnp4tdo0y5G/F0c8SfrQVocPk4sxsWt27BA/wNeznNpEiAxUUpY+VNXaMNJibXcRVpkB0rudlXj8sMCnXXD4KywBxEpvmo7jC+Ts/S+0aFsNQzM5vEAJS9hMbcaY/HvKdLPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763167794; c=relaxed/simple;
	bh=jzhrpRXT76lphziLbPpC4R9Fmt6yjNQxrsECe2c1kKs=;
	h=To:Subject:From:Message-Id:Date; b=NdBKEBjZcv1S/kfzCxuNmdFO98ypncJvhxlAlYoHTFGFtMUsUUGjvVQqIbeeKYek0sYnw1C1qJRkZl2x+2W/Og3bKsiMVDdtrr83qt1/800BQmFUGq4t07dct2pdMqVn1SMZXphcGeWJr4wEPl1za7UtsDvg5WokDrBSaDOLl+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIYzQfT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIYzQfT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D987C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763167793;
	bh=jzhrpRXT76lphziLbPpC4R9Fmt6yjNQxrsECe2c1kKs=;
	h=To:Subject:From:Date:From;
	b=nIYzQfT50tMrymopS+aRqMdsTXwEu5BzY/hoqkisvs4QZ+97jRF2TUPYpKO2YyTuO
	 JQsU/wzVV6Lah/D+g9dmJ+1FZsT82JNH8tCEx4ZpKOcqrZfcwad2qa27iQedjVc4jE
	 M/kQKf6T16WlwnxfbJ8+2rar3tP/xpPHfeecTP5eQET3yr1ayYIcfa2C49XSnguLx1
	 oL9kvjHLc/MUY+svklumG9oEAe5aK6aeECau+RrambzRDvJSAFreG3MMHCZ9orDIsC
	 wDfTBodff8jVaBp3/948D75OZwtxULzhfBMvYTh23LFjlxMEa02/lLbFKyLPVle5uS
	 8Cl1UbWYyhu4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91298CEACEF
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316779358.17147.14522171674186892319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad05090025a045dc6680a87eb1b006b00225b13ed2eaf527469fa059ae803e20
Date: Sat, 15 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763167793
