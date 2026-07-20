Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAC930566F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784537314; cv=none; b=ulTMbMhSwlV/8657hlKfE8wPxKVjJxBs9mtPGcFZKd3Gom3Sq/dzQa3YrYjdyTmA03raiQbVZbdCpivg3+A2VqRnCsraO9UaTBCWDhz9vK+MgR7PUvYENCVQf0mH++OnBQQ6SoWxWjN2kAq8t3LvaFtdrpdKigpTrBH1Ua58cNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784537314; c=relaxed/simple;
	bh=3a/hCJb2gTVmIobWlHSYvxDTY0eMht2hnnDlcprOzLc=;
	h=To:Subject:From:Message-Id:Date; b=tBEqaZdClfscQWgJTj24hpBs5t8swQyXeRMKVauJMLU2vxwKkiOzwg9Q6ow/vpbKytWDu+EUvCHN1tux64NH1XV9jBnlhDkm1Tb2nJEDk0HxaQXkK4Lz2RvZkYBWO/8Ik+1oxYEg9l6oV3CxdD5RwqR3bCWuJCmcy72bArnQo7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFi4+Oqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFi4+Oqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA3AC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784537313;
	bh=3a/hCJb2gTVmIobWlHSYvxDTY0eMht2hnnDlcprOzLc=;
	h=To:Subject:From:Date:From;
	b=RFi4+OqzDpQ94IYtALOdT48kMT9G/QlReRLvctGcljXD/LkYXr6QaOc4DlbvpgLcp
	 bzAV0PyxusKvCQILvu648LiSmENYCGOymlvFlZtrNluo44YLDewb9/T8T1Ym/LmBpj
	 DjRFiRKVQymSMxGhA+OomelLB9vTOlh4414kFNAy1SMPGKTwMOcNfOgca8GDmr3Cx1
	 eOBHi1ComRAIyH0Bi+FgH1p1K+TeDzex0AsNoqXRitCgLAww1YrqQt1g7xo6QDojco
	 AZxqomsPsMOE4CUaWe4yIaiQ7RSV4i175EPHRFFViQ0ugwsMWLvqy7t+HpfH6ML5kn
	 Bl7Up+ktzQKBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FEFC4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453731368.32072.12155949478960560558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2966ec5385e60f1d9fde0221f3ef928674e37f83557fc2a66563a52771e80d4
Date: Mon, 20 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784537313
