Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA9F2798E3
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757201394; cv=none; b=ci7mVHXfMVr5XiOo09xWOjA6LzoixXnGZwHJKSnzTVeUuFgZeoNfyHS1DBkHfTlvi9olZD4bmSp/v3fPKsVhbUgwcp9HzR9lvyGNAXrjYxMLxhxH2u+hF0Yy/qKRtmYocRKcpqC2O3S/qCTBC0Nh3mLvE700giA3D5h8LFmJJug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757201394; c=relaxed/simple;
	bh=FpESB17WAd9PJHwz5M2SPr51YO4KQINoU1WSdFJ52jM=;
	h=To:Subject:From:Message-Id:Date; b=ud/d0Ph+ZLEAoTl9VTeB4fr4cATsSmkbXvqgeq6I+2ztCLl7YM63b7wHHhKKpGj80dxm9YPQevbMhVrt7IF0tVP/+ee/8YwHgnAfguWfos5dl6DsuT+cbfvkttanjW27RmXtFG3vPnPqR2veC25AGRYHNJbmyQLrzAsvvF9Aqik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUtTN5WF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUtTN5WF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A608CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757201393;
	bh=FpESB17WAd9PJHwz5M2SPr51YO4KQINoU1WSdFJ52jM=;
	h=To:Subject:From:Date:From;
	b=JUtTN5WF6d0qOpNHDEI0KA+nD+g5xt6rTXY+yqwXmSUwcOcZ2CfoigxFsK/l3tD8h
	 b/dEb917wuBMuN6BvqvM5gA4v3TA8oZgUTIFWMRr63FFhaGguk5l2meQMxzOWgBykm
	 zZV6jkid4izFHLqaC0kJtvJy5rOWBZI90SEm9N9eDlbyOdDMXItvQ/NgB3Npip5HVT
	 UBvHo6nHhSRb4ChxKTc3UUHuES2Tclbj3gNpTERlufeNLgKW1xG2k9mUpzFK0xQrG/
	 VAdd/g11SJBG93Qii8waxlxSw9TNzOimfptPP5J5woZ0RIVTgjpYeATmnNs6um8rla
	 VgGRFoo3cAIHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916EDCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720139357.2336.10182001386990934507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a2818e33edccca0bf2d250ad4f39b98765f9fc493c619638cb0921064aba80
Date: Sat, 06 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757201393
