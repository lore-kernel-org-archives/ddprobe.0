Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343AA35966
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745884794; cv=none; b=sCcILKn/W2/ssx9a6U5t9Np1ZAx/NaTL2GBspu/yuWoHMXhSz7K4LJReM48McR4DlEh5GCN6lA7oLIP4PhRIZH65UsiA7KEQ3Ixgt+qaZyaWNXroCuXb7h0uVjpTpqPCD9RLHLxWKApBkOfJJej6aVEDgvl3ERXdcP6kk9+vVCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745884794; c=relaxed/simple;
	bh=aNCVR3YUvc3n/NBAHF/BzGvmpysCwwpfdBvxv1PwTtI=;
	h=To:Subject:From:Message-Id:Date; b=Hg+iyoKQTtukGQ0Zt3H4bhyCYXG7dhSjEXu4pjgobj9diDuBay4Zsk1Z4wQYoZ6srqVlcAhqueC+ogygZI0470bblrNXlGvBWud+rXAs0FxTaVDfaa4GaGAKU9k/839U3gMM9gLApRPsIWkj8Hd6pFWtk3N04NnWGeaN18UjtKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GS8NztAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GS8NztAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A426BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745884793;
	bh=aNCVR3YUvc3n/NBAHF/BzGvmpysCwwpfdBvxv1PwTtI=;
	h=To:Subject:From:Date:From;
	b=GS8NztAq0f/C2Dp1MySsEaSSmxZCZXmdzXvfiwxI8zyDe8TbENFejc1vg6+dmgJKy
	 urw4hJaayDyLnnVb/ACMTvZzLnPlIxC8nNKgG4n02VLlnVCjgk66SpN5cC0eW9RGrW
	 CRJgvXrD6XkNk1FAFUTCk/PZxt2svQoKTK+tbgDlO4q1D3ONM3REaRun+NboJiGFdC
	 lRH73PL5XSWf+LC+iTP2omkiP40nfkcuJWes4GBCrUxMcFxNcwWloDOokl/FW6b2pV
	 oy1W3tf3P5TOaDSbhEvcVzP0IJIN0IfARKVby6ooUbiJdnbMpj1X1qGrv3+Jkmsltp
	 9owOpsKXAOPsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92404C369D9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588479358.2730.10309115813873575896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b8624799f54eb5032c1d24c6d47a42024f79eba81d431fce6277591c94ca1e
Date: Mon, 28 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745884793
