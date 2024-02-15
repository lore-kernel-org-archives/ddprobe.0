Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C31B12FB0F
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707993497; cv=none; b=iMiA3NnOJU60Pgxlw7WPDQtvKlpTgshnn9Tt/I16zUwCveqPZfe78qImwdXeA0RWiEyUd9M66Mqvxp5OVyWm9ETtPoRj1Ofjl21/SvcZIeuEt1vKResDvK2k6ij5TabwHrufsOyXtDDRk/2pI+ok5CWlYwRimRGV68xQXET/zR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707993497; c=relaxed/simple;
	bh=roggKDybCEAoW0PG0oull4Zk4+6+jH2TEOc+zmcBgXU=;
	h=To:Subject:From:Message-Id:Date; b=dAsl+k0p6sRYJ3qfcZsmfb4Pr3ljB7kczyffYBTwjhpOKOyUUTVpGX2nfavbCip8d08sx2MDBtJoEhTPd/Z9UJRjKh0bjgweLlSBi1+BGv0OFEg2rotBx8aj6AYfucwAPZFEf4aahgnoewBD1LTbuoz2SpLWG1HSPVA8bzVtO8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFuJ7q34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFuJ7q34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CCE5C433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707993496;
	bh=roggKDybCEAoW0PG0oull4Zk4+6+jH2TEOc+zmcBgXU=;
	h=To:Subject:From:Date:From;
	b=lFuJ7q3457DbKhMhrbCTMohLzfsJn02VDY3AeaefcIt9rCkhAtMVZFJmGMlOOG13v
	 Gz57eWQN63MbpHQznGFmRz+wTEf4d3eTxbNT/sETpBobvLiajM/HMC+2nG9x0NkGuU
	 50Xpi04QZhCPSgaWoEGqRF63WW5gVpp8GUqcUhLZcdYmFzfBuT/Q+n/1BaTdBuyr/6
	 9KRnqnqfuyCJHCk3BAiQ6J17bVaqAl4igqit8iHXghX6tw+2Iiu374aWmvPi0cR/p/
	 uxoH8vmKECeiUPtw5+AxsNwxldJcO4KXLgppTRhIkT+OZ2CX10/xYiJHZHDLrpxsdr
	 s0IfjHur1fBHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F4B3C48BEB
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170799349644.7956.1646590107482379505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f358e5e6b5b74491c288912dd216b4983e41d5355163df98203d1371c8110cf2
Date: Thu, 15 Feb 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707993496
