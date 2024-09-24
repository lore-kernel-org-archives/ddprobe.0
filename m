Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2461B85E7
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727164554; cv=none; b=HcrJAwg0PpK8pxCqtWm9waVbxiaXYzpx6BjeBcLT0RDBZTiZIucc0oBz9AeCrmjzNTcYH+hfDWN8oGhMa4+rIDaMle0jSs6m0rZ7SPenxPQrJqXb6X40KFTFiC7kyaRhMvWK+KrM8b2vLxcm9zrjnwZKPOMFhNzzkafT+YP5Rc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727164554; c=relaxed/simple;
	bh=IP914apH6B7EvMfbkYiIt7LUInZ2c9RvmB4S41hvioU=;
	h=To:Subject:From:Message-Id:Date; b=ri2fAUWJd28+wm6lWmBApDPeMA/PEZJL8Z/1JelnGT+3dFrB8mlopfGZIL3efUkn5f8yP9G123DHO1OzrTHpgJQI7T3SwX0Bkpa5ly3T6vF7m3Xyym0l+iwB9iizSOqIEFgOK46pBMBGbunYCf8XBSlSN2aqWCIx7OTqwwl3k38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfu6haS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfu6haS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D78CC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727164553;
	bh=IP914apH6B7EvMfbkYiIt7LUInZ2c9RvmB4S41hvioU=;
	h=To:Subject:From:Date:From;
	b=rfu6haS0TTl0QwDTKKohwNtBmjtQxAisUDl/qwd2AImw5H1PQHQTVNAA98qCBR02y
	 Bj9ki74Rsa9VhR5hjrbXyVPqrZAs/6z+rWsca959sJ++i6J0tZCUi6jS1GYPzmtaPM
	 Tc9Your4AUii3ATMWQTAiJ71T0IghGtKztqVTGp++kQ0z3TpqLAWlbLuGElUssHT/F
	 59Z2lBEq6GvW/uUFvEqCxWNOnxSFK9AICA/UQLrPMC0RXzoftIKbkOoV+DJc6S1uCH
	 u7sxpmaFsORh3k6xiAqr9dPrKJpal+cjrTNHQ662llcLRF3/nAFp8XHZfeehm4/0mR
	 ONaSvFcmTS3FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62ECF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172716455358.11768.9665609173919577302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2ccc9550299e0830ba890fc132ced9dd07583a767d3aae4fd56429db489a7d
Date: Tue, 24 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727164553
