Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7841E3E5EFA
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791238234; cv=none; b=pBRRGnci9M/Z15AQTAKt34Mr9MWlYjleiK7NaJgtHbzXGBzUj0ADi28vesaSlurZeMDfuxcbvycQKJYLpnP2U+mRsEMLF7dAM3kiKQolnvEhRXh/IzsJv1DOWrOpfNn3AJS0CZMN9qUsuNMu/gCaMZkCPtMmxmuSj+4LGEagGi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791238234; c=relaxed/simple;
	bh=WPZCWezG/DnTBgV2ipHZKFHwMMMAwkaPQfzR233f0XU=;
	h=To:Subject:From:Message-Id:Date; b=tz65pRN8GQrqfy8ID05OHf1d+Zbt8eLVQX6snc0B0CoIY0g6xwMVbGXUK6M9B+JqiwXossd17grL+RYgbIKhkVOrVr/gR41Ddv+IgfF3HIUpUFPxyGTAwxmtYVgYzvyLowZwvStePdXhRQbu/s8h+3tJeS0Fo1fakt33b0ne2YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BARzJ08f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BARzJ08f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF51C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791238233;
	bh=WPZCWezG/DnTBgV2ipHZKFHwMMMAwkaPQfzR233f0XU=;
	h=To:Subject:From:Date:From;
	b=BARzJ08f6JpFHDpdOm5i9u3W4HEq69nNG+mMl3cJ+aFnONeAD7XIW9x0q5/EKZNz6
	 mZsfUgNU7Y27eQdVS4Fdlfa3bSLu7MyB3sPOEhw/qYBMNe9hoyyP5KNB/xA+nT/sce
	 lNbvpkwGHjpJwLuWdTCEdjrfUsvFOQ6AXNS3U7qTcqFUVOIr72Bln7Jz0F4TMA+N2S
	 TI/O2bdtv/sy6dtq8DfMho78/pkGSXuPQhjzROvaUfdEiju1CCQGSdDn9ZeL7M6iyc
	 +ALEix+GBV0e8o8Dc2mHks3O4EgQluPEF5JWPF3Rur/obSm7X50zREcNd0jid/z8zn
	 3/fYzirHITitQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18A8CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123823370.18611.8317602384599891709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba25505dd2c415a012729814b35c6c610c00b7845f50cc0baacee0a994b0ba42
Date: Mon, 05 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791238233
