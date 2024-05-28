Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1982F172BDB
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716924863; cv=none; b=mFxfbA2zQJhSTb9b9gspUcmURctUqYon8cpNzkzQ+cln6kv5yNn3Kz5KfXOK3zQ45daQxhhRcoqyCCTETlEcHuMyoQJAjmEKKx/Nbp1S090E7t2sf5+47SuA9Fb+XyyKNi6S3BojU+6iA1p2LxVd214oWni8Aw4v8kVqDP/Wn4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716924863; c=relaxed/simple;
	bh=LOTbf4F+VAJYIFu169uWnkreNCJOp84BYWiXKGdlA8I=;
	h=To:Subject:From:Message-Id:Date; b=Hy9INgebrV5PUTaEzWeEJU0FtswRXs9onOpD9NHagFX++iASBuMUIPCRp29R7LJvtF9h0LQGsHWq8nuYxUg7Q+DaELwkNbycfy3QZc/8qeM8cU7IXTeCJscvlcUCXeVnBCjEj+XgnhLjc2WDPcpGtU9b4z9mzb+JaaE0yIV9yMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=et1uMAU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="et1uMAU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D5FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716924862;
	bh=LOTbf4F+VAJYIFu169uWnkreNCJOp84BYWiXKGdlA8I=;
	h=To:Subject:From:Date:From;
	b=et1uMAU6w42y24HSxfd61j3YFd2UIeGFeOtd1F4g2vm3kaoOPpv+QyJhrXAhlkuoR
	 RtkORav74uX+8b3GkMu7XPDwk36yv01HVCcXbrin7URNvHt+AFwnwCb2v/BRCbArTx
	 p8NxF+Ou8VYUgwBPkYzDP/UHZCvtUsxeIcnpcofuYqSML8SJgSD2Mwdq3Ilv8tbtBQ
	 n5xhVzmEk/bpsnNEzjGPsrR3JnZDithclSdts3APgNGHZiqDZCFKLYz6yH1Q7YRj8I
	 ZulqLjm/I0rWbkXtUO9779WckjM/L0RUKSJifoYllct7K+wj94cATNrJ4frz8Hi+7n
	 1k/ATrE5pnHBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D322FC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692486285.7816.9068487623239629177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc35b4084414b4fa67136f89d0f0a2ff17ce664010d95d3649d1ae04fade49c
Date: Tue, 28 May 2024 19:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716924862
