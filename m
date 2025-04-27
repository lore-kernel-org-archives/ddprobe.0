Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E183594E
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745742595; cv=none; b=T6ljJ3pim3dzXy+lSzW3sQ66hTygt0ol6B+rEoCFaqIvo5cu8zZzMLLek0fPGNs1O2tLxlmGMzjqyfeRvkRnya5VtXywgUVgiCU/GyAd2OWTnfN8LplSqhfXqJYOc+qD2Agykgmwo0RvksX5O1kBJE5iIiy6oDratqRnnuaBREo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745742595; c=relaxed/simple;
	bh=ik4k0+fd2sDnQA7hj+obpuVdghZZrRDL7GOTQWpEjOM=;
	h=To:Subject:From:Message-Id:Date; b=VavzK6ZfoxIR7+2oNzfCZG3AWhLntboi6g9WT6zXft3GRgeDWgWI8+lBlU8Pmcc5/E7yWesII/XhkA+e1GfwjRDNn+hEke9ooODYDCvBGn8qEPFho2BI6Btmb9oRzwHTYdp0hsqvsHuLHl15g7PIdj2UJJpotM4hdSDA1OQuFac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+hFBrfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+hFBrfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745742593;
	bh=ik4k0+fd2sDnQA7hj+obpuVdghZZrRDL7GOTQWpEjOM=;
	h=To:Subject:From:Date:From;
	b=I+hFBrfgLPxycpZVWvVuEa3kugrfUHwc2A9eeLJoryC6fXnnwdWiDTh3UAloZ+QNx
	 ebuwidvdq40L8PoZ11HxJHSdMUaAu7Wy8W+2YiKiqVv4RpnvuqShGk2ak1BBGB6sWy
	 NcuX+WGlF122uhsvRDviba7W7cdQqVdWDdxZNBrhgwzkRE4AVECHBB1lgoDabwAkoL
	 MnNdDx+oDjMFmEVrTnRLVtUn/bF9O3wH385Tx7+vpsazLrnGUQZiBe8SUC/8o8QYOM
	 rC/RsD0KVvuo7CnV3lJCD1AmKptayMH6/Rc57SM2uC7mPTI4OE1Be7u3CHyJ31CuaF
	 qA6MTKJrsraZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B63C369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574259357.4241.3341233668174675621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9013e71b207235b1bebf271712a49afa9107b4a1f808531bb72be1c9993d827
Date: Sun, 27 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745742593
