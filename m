Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F0D1CDA2E
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741441134; cv=none; b=DKKdYVG5zcMn1DSZl3nHixz84GHGjF6o4Fl/7HNKenaLiwpnjyrRVROh3KycSNVpbix13I4tSL0PRXD8+yWz1/Ur+mrwWYtp3Fgra3xf5nkf8sp8WpMUpTdjS92QZuwvIJTV/CqosMFaKhsTfxbjpKj+MG9iznBTNNJBcdmmboo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741441134; c=relaxed/simple;
	bh=SC1KYrTPkp6l4E2cv9aDYmVhyzRISV/Lif52GlzJPE0=;
	h=To:Subject:From:Message-Id:Date; b=b3zRtWA40HJkt+6vNqEd7f8RGUj9MFHN/uegaxfakwdihA43dAxFBjfDxNnoIOlLcVEIXFMqRd3tZyupPKCePsgY1mAfLZRebiIkRQIZcVgaRdbCOmsShzbsfBDHs2Swk7P0ceKCZwH+MqLY1s8l+27kSYlLsC6C9CRIdgx7BmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoSQ61zz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoSQ61zz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8C3C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741441133;
	bh=SC1KYrTPkp6l4E2cv9aDYmVhyzRISV/Lif52GlzJPE0=;
	h=To:Subject:From:Date:From;
	b=SoSQ61zzpRFHqJy9Dv1sbvHiTwCnrNAVm4DN09yKOj4meLnnlmngrogNlZ7etlpfY
	 81V97KanJSy3AIPdEhlpiwWfE4ltWREVd3vq5H12HLJW12G7Ul2JhzSOZXu2psBrcy
	 w9pAAADUl69Bx3pUOj2SPXAA06w/vvpYjTigaNBhHVB3Jh3IJ8+iX2KVn0fncSG4FF
	 rxBQKBdNiihNpDTgo7RK+gEIIh0Bt3q7uiGWxY+nNfXngLZTuC046Tzdb7qwuUTcew
	 O3D+K08eJSpeqCv5ott6Z7H2WwdVaCOmNB0wYFFZq3N6oDXQebiK49NpVWae6yCxaS
	 mtRGp2e7tB1Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5C7C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174144113362.2809.3119144215249696368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63089ab1bdc8f05fc3421b4bb4b6bcf98bef16989db18fe28394056f0756fd0d
Date: Sat, 08 Mar 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741441133
