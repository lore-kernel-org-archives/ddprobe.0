Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376292E8B72
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758555594; cv=none; b=ARVmP02wnr19rwvTY52X9YSyceX7KP/NYNRlPSrzdispJlrI5fpFTsVnkANr6d7TE+IeFAUoQ8RTyoip6Dv955iN9LF+EAl7+E2+NQe5T5Fer3EBFKxitzhct9cYjzTXBiZdS4GNsAGOuBo/z5WP4O84bKjAo75U//jVS62aAdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758555594; c=relaxed/simple;
	bh=7/LV2xj2cTDW4oJ9U7NKuYakuaMs8/dxgtdRsxONkrQ=;
	h=To:Subject:From:Message-Id:Date; b=mrBmgHQzl875QLMuTt0koKMSOfpBx5d27+bxc2g0tCPGN5ZR+tQK8N1rJ8bCgBIPBW7m4LWE/TERfA42WaxJeopQ6BLJnoHpXa2pkk6emYNI8V0fSuWru1RHWk3tfYrZiBoEWFuEmXfPZpuK/YkNgO4zWvlkS2iMnd8Jj1aUlmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaJVoGlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaJVoGlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA18C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758555593;
	bh=7/LV2xj2cTDW4oJ9U7NKuYakuaMs8/dxgtdRsxONkrQ=;
	h=To:Subject:From:Date:From;
	b=eaJVoGlNNzvI0fuhnNCMYq5LZ5sIvOEb519zAqS2TAUOqa/UYRrU/RiAPJWHg7sXs
	 YkUk6A8BAzcBNNkpuInKs70CBq+rvoRxbMABpAmiCN1ac/zB+NpmYdhHZAgfRmL6Ag
	 3LR94stq6cRCf4srmGIp0kWeW6difrlZ0zoZFG7j7azAelDc1A6LLdehyP3Gv2Rfc/
	 N6laEMjrJJ7h0D7PJoXzB0bdL+vTSAA//16NHz26FHlE3mPRAhiB/kCY2WE7iaEgqC
	 PHbx+8Hja0IBOX4+C/uImrjlEgdRGrW5UaFobGOX6hNiHVHbu/ZKCEg9PK7Ncs/Y6D
	 pGUTk7RVzcnIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3E7CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855559357.5164.258899017260212718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab263f641dc0ed2032ec1dd222da1a092c9759c4a5e834e957cf2f47bf40e25f
Date: Mon, 22 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758555593
