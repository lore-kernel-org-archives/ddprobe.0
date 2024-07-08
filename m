Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A50D1474AF
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720458383; cv=none; b=HicN7J416Og1yuEzogObUiVxsoZCx05G80TJ4driHfLZDzX3tzOLi8anaMG2RWTx/A3veM453w1xmMjoy6mypk+LmS9vM4sJC06TaRg1l6tQwvIy2H2aNobuPJoxhP4TKzucV4oiW0cZbUVOuAhalpAjx/c8yFYjpTJhzC4xR2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720458383; c=relaxed/simple;
	bh=qwItEQMaHkp3wxN/PPdSDjrggjLeHWGug2hfrksJ6OI=;
	h=To:Subject:From:Message-Id:Date; b=tG+NpilEhmqtfwRD+fM/Z0w3AGyAhd+mIbTNy8j/ncWEZ3n4Z4zx6c0Ea66DFp6DYu720hi1QRGAaamlT+X1GKL0b8wgz+7pvjaO+RqcLMrUCTityV1whVYg1yAZ32iXirxyL5kqkeVrQp5Oipjmyv6OlsrkIhg+zykzr/0Ww8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQ6QBQoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQ6QBQoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9840C32786
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720458382;
	bh=qwItEQMaHkp3wxN/PPdSDjrggjLeHWGug2hfrksJ6OI=;
	h=To:Subject:From:Date:From;
	b=QQ6QBQoSRXgIn7h8nuV1l2GnyRbPxnqFbawiI70l2ATRCxRFbdadIrN6u4kMYmBb5
	 wUCIA6iQ65flzsl3llOz0abgYrAE3k740DRYiHaV+vrYzP6LSvusGr2zFEhHERUPnH
	 J4FeN0awW5s6k2AI28u568LK1+wHK/9PWsz+b4+pHSsL8iMtlZQunL+rrQPzsyJM3u
	 32Rhnz9RXxAXTSO9qx4YpPZipfSbjgszrkCZRybWhXK7FWGuH2ek3qnv6jB4AE4Iym
	 Tzf/pkW8jSqEaFdmuo0nznyCG0htambKils6iCiu6c2/HtIzxTh6RfZPc+KPg/qfSg
	 Ks5/LVtlLD5wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B97C3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045838280.27711.922738866298765929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819f000fdbf01d6d526c0e8d9da1d4df3405231558fea92efd2b754d09e0788a
Date: Mon, 08 Jul 2024 17:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720458382
