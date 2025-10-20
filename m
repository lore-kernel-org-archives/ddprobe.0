Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25970221FC8
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760981394; cv=none; b=UoaXycMOp+ST2KgSU4NBb9Tfq4D5b1499n0LkfPXvQu7xlc8I/J5GG94ffXkeWf2HZjni3YKuPpTjPbdH1vXKxJf6zancj04GR+hSuiX9bd41pFnHxlMyQHHq4ev0rRWyeA+jczZG5yhkmHwW44sjwfRsHVpGVXx1av4nSO3NWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760981394; c=relaxed/simple;
	bh=f8g0YNFWlwhCyIYxx95blubr0+O8s6HHEYmXDIKLkm4=;
	h=To:Subject:From:Message-Id:Date; b=dzLbklZbCTvZCbkmAOzYdk+bRNrSfthrgI60FVWGEOJnREp64kQXtLlyzJEQbRodQ1dkqh8DoODuxUTwrL7xpm7AdboAJF8qM48aU45bpq6Czte8kaM9WzIB4sQ2V80rOmd3yar8gHIebJRmhRz+NeeJLR/WaqXSq429lJefd28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIoZFkuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIoZFkuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3594C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760981393;
	bh=f8g0YNFWlwhCyIYxx95blubr0+O8s6HHEYmXDIKLkm4=;
	h=To:Subject:From:Date:From;
	b=PIoZFkuD+jNeTUr5XMYNaeYfy+oHgq0EGGuWvdDmo+6u/bI9Vt9piHJp5Yg5nZLOb
	 zIQKoHbfOlJBisffAYAISbvku4k5n/CbVPSxiqGdmiD3umqMfvIZKhOjjHmDoQlR8I
	 iFNQlqYAIPMHemd1ASBijRF3NCZzYzfQ0Yqw2DjrIFScY2RwQR9r764bvaAy6L+x68
	 fgzMjXacIdYEoSTZeHUjkzOPiSq0dKGhnZZQ0irrlUwnr06UUGuq8kSt/UaYrJ21Yc
	 yeiHdRY3i3P6N3a+lksjatcHPLM1YcHKPpThALTtOh+YCpRLKbqFyXmZJwYUXE2hPG
	 OdCRiq0n4DOwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82ECCD19F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098139358.14454.18344216729628841280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32bdb87ba45e9b27bb69109c268172c232757fa575dce23a6e73e1499f80c927
Date: Mon, 20 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760981393
