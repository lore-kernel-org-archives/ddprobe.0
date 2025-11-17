Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 892CA84039
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763406114; cv=none; b=RGkLh30HDNL4H01JW9xGrVgm/Jkl/HUhhqmab+Aj9e8O9sIEqDiVjs+rl04RwDZwHetY0VTvcIdvT9dnnajGCsYqVEC1kYIiadlZNVYILne+RSInWsnYe259CA62Wv4LHfS+i0mFRuu2h3Y0Z6+Dghj/lE0oS2STb+mvczFzHL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763406114; c=relaxed/simple;
	bh=NKxaGZC909WnLIJ05ZRxhWv+mmq0M5U6MqulIJJmqRk=;
	h=To:Subject:From:Message-Id:Date; b=FeI5JVlUcSFjLU7haowZ7ZPaXmKxtPWWLgODsYdtkH8rOxlDKBLwW2QGlyXQYCfYfwMPiBJy2Eb/GvM5o98SWdI9Zc/OmFftxI9e94S0xoofGV/wY8UdhURKgejW8b5s5MB0MDYRvxa/aMbgakQvCAFgFtfjf40PDMl3Hw9/kf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raX4OSJN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raX4OSJN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78B6C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763406113;
	bh=NKxaGZC909WnLIJ05ZRxhWv+mmq0M5U6MqulIJJmqRk=;
	h=To:Subject:From:Date:From;
	b=raX4OSJNFcy2QZiP11fC1RFAtGsDJsHbZcr8ArIL6fbBSvFmDJ3Cb+2hNCYxmwy7P
	 cbmq4Uc3UogBDS5ubKP4ahD9INuuaKzG5lCWEX+XqEvMwJ0SirfuPuByks4SBjnftJ
	 I/7ewyhIQBYsFhULHFcbiDFois5fZ2HQWsn7j+R8r7QH7BU1q4Zfc1qq6YbmRuhlJb
	 xxTC38TIzQeGXSbywgaBhQhbA8Krltf4guL6hoFUDnxW6LUzAoggmfWPZC8mHNxNGO
	 f0VCijAV6Qlkff4TeUjdwNPvyZzBKVGP8EdmC/+cAJkn8tlrIBPvW4SJzH9CHsa6ii
	 d63FHvlrECEbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93103CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340611359.9670.2823235936599040783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215202fdc8c5f454d316326e47712383d96f4a14e4cc6fdd0b3b45539993b898
Date: Mon, 17 Nov 2025 19:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763406113
