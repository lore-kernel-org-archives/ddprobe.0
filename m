Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BB51B372C
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741516734; cv=none; b=YiNInjfo7lKS4z9S4w2ySfIRguVFFPFKUGdOH6HoWFiagQTiBbp1tfWPfQdlWXo9EPu6N72L96/ZO6iH08HLtjOZLjEqtDVkDDgz0NfFu9EML5GH05dIRfUjXYlkrKcVDNnYwvj3yU+gPDaPls/Bdp3AjYCCU0sp+yQIOYsyoZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741516734; c=relaxed/simple;
	bh=Wxkdl3sPBpQjfHX4ZbmBizPSZYOJpVKHDTVXWcbfAuk=;
	h=To:Subject:From:Message-Id:Date; b=V6WR2AefX2O7yEi729qn3A86hZYw6anOJkZJIXBu6u3jnt6g5zipmVPnqwkKGaYe3VHfKfYXzdv+4UmhYroLXUjBzUJAtQ8eyfhVQGZOGMEvQRLZsow0Ub7Vj5KoV1HpNYMo1YtaPf9IsX3G+KimZ2RkreZ//9hEdcofrvyNH2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TX9NaNTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TX9NaNTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCF2C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741516733;
	bh=Wxkdl3sPBpQjfHX4ZbmBizPSZYOJpVKHDTVXWcbfAuk=;
	h=To:Subject:From:Date:From;
	b=TX9NaNTHzg3Xyb2Zaax0xdGJojeG4c6LdXr2f5caZDEG132HBaHtGszX//osGf9Og
	 Aj6k3Wo7s6CT6gDB5Q18j93cknA4Qkzkb47VemOdPheaYW8vEAqKVuixNIgCfartFq
	 RFeverqYGzsri5TQSOFsKHSX5E/AqqABNyFiWtgCMsEs1NWI197LGDDgb5dRxm0si8
	 1WN9HwD/ObKZMDKiIFihiQzkgdCk0B25z6UfGRdbvT7cn3nWojwHu68TxmmbQz17nF
	 rWP7rXFonocKY12S3hlUlqiEgcJGNrqjXxp6CHn/LT/bRoczhiInXFebvyiwd/Yp7B
	 zmwbvTpaZjLbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A19C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151673362.8894.13732803890414876033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ab9ece05f3050c5d2887f9588ef3243666602cddac19369c1a8873d868c78e
Date: Sun, 09 Mar 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741516733
