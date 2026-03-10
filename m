Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073041397
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773103494; cv=none; b=ligHQab7JUeL8P/ZccvKruz/tOR4/8NBZbqUT7bCi4H1XMOcxzMmhnXC3ASF02FPSXnYGb6T3i0W9SXmxdmQMWOg6K/ExBqbcUSpE2VpsGutLuYKMdJl8RtIizNgeVvNLmlQuS8FCqzvm5pcvwZNT7L+8BZ9zU8JgwiirK+XDas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773103494; c=relaxed/simple;
	bh=Al/fTP+nFxwLag8oSsNeOiHQfPdd/8TMEPvb0I553QI=;
	h=To:Subject:From:Message-Id:Date; b=Bmz31k7ZpMv+CwqHCtfgQqY5YmvE3BmX/bFKnuHD2xIto87I6BxWyVIQ4h4P6bRPH0XWlhWBAxkv9lGT8SuEgGqS2V/aRePas+3AgTpdhLFrehrIRmECou8I0fMub1MsMWBiA4J74YNnObbb6W7Wnm+nt8SxYgZPn8d++SSmI4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCL1wUOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCL1wUOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D89C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773103493;
	bh=Al/fTP+nFxwLag8oSsNeOiHQfPdd/8TMEPvb0I553QI=;
	h=To:Subject:From:Date:From;
	b=GCL1wUOJcmWhYOZxT7yEwInkTnec2ull+bN84si2v6ld1e+nimHanpyqxchohW6ba
	 dw++6K9fem7j9bU8TzywGzzwGAraJTcrK/aM+AxU3q1zBgZMWcTDWXwxtUycSjy5xY
	 J4UZQC6u9m62NuILJscoZ6bM6jvX2OHrbWB27VEcwgqg+zxXjteDVwgtG57cKAuCii
	 XJ/O6xh2DWvMKyPeaGaWUqXIRizbX9QWX/n2yY/vsFsrmyCozO95wiHqt/RrqOl+Tz
	 4/xN8CXwKO+NjeYGNQQ71n/b/CpgsuQCQ4DwN0VRDvzYQLl8v9Gvl7m3QAlyN1iSOg
	 5nKN8X31UBG9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92500FCC9A4
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310349357.7881.12710945944139614606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9bba645ced9154450e784a1b026799ad0759d226a623e023b7ed15867d36e5
Date: Tue, 10 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773103493
