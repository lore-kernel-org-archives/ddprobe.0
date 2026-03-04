Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F9623645D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772604294; cv=none; b=sDSPbxgA7FRDYL2pMEb6dmiHC6T4KCZWfx8CcVTzBbrmikBD2euZ/5SnCp0QW998DGpSZ1kGzgvnkrGuK3UFQ872gHo0ezzCTvNv+WB7TtLTrwqAL5l6JSSDO4sAhrvxmu9rAXtjWF48iyWLezMC1UsTXNAKFqIDZjZhNKuhI4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772604294; c=relaxed/simple;
	bh=I7cyIfEcM8xUoc1mGrC3oi75ReY7HWg3ewUvXaaNxpA=;
	h=To:Subject:From:Message-Id:Date; b=pCztXZ9+yLtG13L1vTS9qlP4S99Er1G97XoWuuxFkbTXMsO1oz0vfmoD51zmmmJXlOrVV2QrQvE3IK0OxHe6SvuFa8ptEY1njmOC9sED3qgGIW+XuBLHVoDqsCk5KXLM3qL5x8nsb1YQD+TKBIDMPD+UquC6R7HOf5ujKRpI3C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIJq7WGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIJq7WGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C927EC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772604293;
	bh=I7cyIfEcM8xUoc1mGrC3oi75ReY7HWg3ewUvXaaNxpA=;
	h=To:Subject:From:Date:From;
	b=GIJq7WGOSBH3e54J7yaC536v6mUzeZnpvonb9btqmtx4TG2U68+KEZsCvnJ0WxrDj
	 +69jsUzi1/jZbPfgACx2Z77TQzGDG6Oc2C6l4KVhj5w8of7aih0aTCG7f5ZdWd4uWB
	 Kol24+xhoaC9nNhk/7jw48lr1kHnnGtbx0FA6kydS5EncawYneInJcdzoKbfxNyw4Y
	 nd5u6w8HyIBlB8QlKRGCHlEk1ldufMqoprWgkPn97+OiXs0+d1ZMtH0Oha9E7WOt9X
	 4FeHIknwLSA5tRgxs2euonce3HXr8u7BjYikQpKYAbv+WR+PVt+E3Omvo9UsqvUjir
	 ghVkEPTc8Xk6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B421EEDEC13
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260429368.23282.6778960023993103327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a305b0a1820ef5a264794cdbc1a80b8189f039f32ea28fc05c3a9217f8efa2f8
Date: Wed, 04 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772604293
