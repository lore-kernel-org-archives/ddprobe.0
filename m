Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DED61C860A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779069034; cv=none; b=NrpQGx9kjta0g8Jz0C06P0OKFnPfsjETwjWozAnMRdxflpEAxxJLow/UHqLxBfVzbtpzufF9wAgKYOU2e8vf6Ra7/AjK1pG0PeZRhvFENjvlblx9DkKzl1ufyKTTktLrlP0UWfTWeXHQPLGnDKW0B8QTtYe3bIgWecFUeyHP9WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779069034; c=relaxed/simple;
	bh=KKCfAoE9a9niq4d8BvtLG0QkzBVuGQ58BPFJH2mqKjw=;
	h=To:Subject:From:Message-Id:Date; b=kvS/KDde+eiexFFkPQHAbOOCMDpbtkVTEwz7Ht+vu9GWVKaWwP/eZZHJFp/aHy/4IbXUldRVyYIt33srlG3lcRFmuDF1KxqoV+9ZUNfmYXzAg4uTA8Pi1ioqrqDcKmpSZ556/GRmciHoA9Ntmw/fUPXtI0cMtnRsm5cBmdtNayI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PazdBywD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PazdBywD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA263C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779069033;
	bh=KKCfAoE9a9niq4d8BvtLG0QkzBVuGQ58BPFJH2mqKjw=;
	h=To:Subject:From:Date:From;
	b=PazdBywDPLIR630SV2S7Tli3FtEaU9pGVhhG9YEMxcK/rZMRaODL7xJClvQQTyNgr
	 rWWDOq/yicZhCCv+lBtTQg/wqInDgwvXpggOPs5ZQu1x3YBIPzyda7WeIxoIahm2Ds
	 lrEpditKIpkMZ2Hfl9jSHGBXLURaiIz69Ct1acvJBBzrZ59b86ADNd+alpCq9TA+3B
	 Xio7DWbbOHG9rcXit793RyUmmvsSMU4eA0zp7MzHSSfdOayEBBoYEzShOffbDn1xHB
	 rSJ6SZ44fDs3thXgPTCTVm2rVe3wjqQ56hdagIB5waIV16tiYDEq9vIiPuo/0Z4OMF
	 h0jRC0da2T1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADAECD4F3D
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906903368.8531.264867817841275859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd842530caa34edf7e7c7bca14f75d14952d607492fe91e690304d5819e9d8d
Date: Mon, 18 May 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779069033
