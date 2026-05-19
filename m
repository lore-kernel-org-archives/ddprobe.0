Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64382285CAE
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779203434; cv=none; b=emnd49IbwFDsTt/iiluf5sYwyQNYjkGF2IXn0L3hcsgcaG6U4zw4xnUfMBNiGYEnoOLJg2T6NY9JCSpQI90rMq75wgeRZR2gIjXRoXtEcvtME3Wr+wthAyPH2Wgan8FwykFuZ0h9ubTNRNS3OheclGbH5ZOms0pvuS7+Y4/GoAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779203434; c=relaxed/simple;
	bh=EWdREr2FyRmE2aPEi1Bmz0nr2us1T1C+WIi1J0reJ1M=;
	h=To:Subject:From:Message-Id:Date; b=B/eLUOkuV1V70PniyJZ9fau4/29NMwBlOLoBYU7rOgyS0CUQcS34kZwF+tzFXIeTA7Glh8C4yzgcOj0ld4/42F6g8RPsmL/9BlSht9beU4Cw9X8LP7iZtCslRPSo+NH4E49gIySWCioWquj+InYv7/1Lze8ToN6zduLNDXRyPz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqxbjyJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqxbjyJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9EFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779203433;
	bh=EWdREr2FyRmE2aPEi1Bmz0nr2us1T1C+WIi1J0reJ1M=;
	h=To:Subject:From:Date:From;
	b=SqxbjyJ4jJTHORQE/a/OCatKcKrTFmKeh/ZZOquMcD7uymj49WXqzvN0EQT+q5rX5
	 3MREb1LepGMnABGOWVhSLcykypN5eCitEkN/xsXF4GvZBgr8KDipJzqXVwZTsvySgk
	 6aP35C71zKC4IFfQg+R6StztPyo9x5DN4F65DRCESlxl07kJpi12z/uyP/RrXdfiCI
	 JnxkWnMfD/CrEvgu5VKVa6ZgA9ZR2nBNsD4WIreyVURgH8ZOVqUJTJiHcB9YRTQ2Y7
	 euhoo6jRgXFlw4IGdpGA7d48mhEDV5tHldZvY2atsZ/LeMIFVNXe8LY/csbPpjHuSV
	 BFkASdtMXhFAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8EAACD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920343374.7807.878025772909354263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4dfc09ace8db9a25cba7bddabc5365dde897d51f0761b3ab169b6c645bd305e
Date: Tue, 19 May 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779203433
