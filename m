Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2471743E076
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791460234; cv=none; b=PTMWnsc4kGs6XjAVCPVirJLGTDSNxwGtgOx5Dk9yx1aNt7ncgSsVSUCrdxLCW7Vg/dh05SOjkMsryF5vVLZ2sLkXOF+vEfkPlpR0uylmRCRIVd/9k85fE1t4x7enWPEJVruw+ck8GEh1DpB2+0jNaC+JmSXJ7kgN9lwAbHCEpSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791460234; c=relaxed/simple;
	bh=SSrcKMLm1MXoQdLEtZgxsT3A6q25QpCXsu7M7TVKVrc=;
	h=To:Subject:From:Message-Id:Date; b=TN+7s2VnpqB7K3JUrcP2Gi7cdirA2pmPNSohy8y0IaAdxXvLAYZv9+NRCqk0hcp86BgfltZGREU1tKVvtXcDvP8Ys+thexA4lk6OU9iLsnPu81Wyxlu7Miyhj3TyRD9UiAkGT9SR2Gua2rIRhcRhTD6TeJjTN9B97scphWtczMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jrv6zEZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jrv6zEZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBB2C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791460233;
	bh=SSrcKMLm1MXoQdLEtZgxsT3A6q25QpCXsu7M7TVKVrc=;
	h=To:Subject:From:Date:From;
	b=Jrv6zEZUu2FrDKVsRvJJRLtv87JA1jsLrKIXcenGDHA8OmbnawxIeIMRVlOFfwXiO
	 f1/vaG7SR8lI7Bjsi/uT2okgSrAAcm1/LoG7pti0HYPfSu1aQapycP8p6aqfXdFrf0
	 YOi0Ny3TsWKvvTJ1qbh+e31Jvfv1yrkAS+E4gtD78HtARxe6+2/47xGkbpohFbhfXx
	 zIvGRn+nbzUp0t4fEFxZqnRhbQdRNGbV6Gg/IOX5AnHxX2e3y1bdSOGtphRmo5nfct
	 Kqy8O0chS8IUlBKuJMoPcGep2t1M3ynfLxT6pIO/VbEl9MsKTBAwIFnTbskgFCARYU
	 Jk62fRlWqQzGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA023CA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146023368.10645.3097386856683743804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d7292b2a7f43cdaa36714b2e87de68022c02a01dabea2ca6911a26a1d1d8f25
Date: Thu, 08 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791460233
