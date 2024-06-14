Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEFE1836ED
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718334503; cv=none; b=C80/z5ko21reEkTFpBmjVu/7yLHX/50mw8yBYqXKVTluhki/qzeMsF2gD1WWUx6qkFf7by8+dMfhpVbR4+x10Nikiwjs4V2HLfXQpAPrdouX89A45LZfxCKBOt2FvSjNIESxP2p70CNnksj1VsKonjx3yPcY91oQIIdplu/fSqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718334503; c=relaxed/simple;
	bh=HlmRz5AiaYIztaijilmUm31o9o5yu7xoFusEc6YEwjg=;
	h=To:Subject:From:Message-Id:Date; b=QuSwndG5H1rlbRUOHvdTEFiKHWZ/3B9voMhetj0CzgxoyPXRtQ187lwg+EoTug/Szrc13Myy105fqR3sHY3KGkv5p5fziCsclqFOovBksMjnbDZ5F912dnT5HSWF2M1ZIAgyOuRDbiCLZFfj45aOphHOVwn1/5RPKuESRTpWLPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnSZwVyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnSZwVyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3D5C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718334502;
	bh=HlmRz5AiaYIztaijilmUm31o9o5yu7xoFusEc6YEwjg=;
	h=To:Subject:From:Date:From;
	b=EnSZwVygn1Hj49vWZ473BgO02RPvgY2TfNNJeHz8t2S5cMSX9NfzvwIV0hdmpNvuI
	 /NRRWLDHzc07riahaVPWhkSlJG/gx/V7oo725GYuClnaknFmjGqLIAxC/T1xWl/oGb
	 evkUrW4TI37Ciu2yiqrFWrp+LeOp7Ih91WFZ0+jtUVSvhdxnt2yhNO/QQWatujEX9N
	 lFCxouPD018iqT2WZk6w/PRHm6eUrGrlSlpLfn5+ba4Qxzj1gEMxTxxiCayM0LVOSi
	 m5sbixWLX5L8xj+oI8pZ9wnur88PTZRKBVzlltPq0JVePPUcJw3IQQ7YuvKMfGy0UN
	 uJcEr8aRxRJ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9CBC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833450275.14243.9112769626542087240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8014b33308b48ebf2372b827547dab5b36fb24cacb319c364a7e299997b012c9
Date: Fri, 14 Jun 2024 03:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718334502
