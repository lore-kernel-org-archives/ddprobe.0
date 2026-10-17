Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D6AE555
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792257634; cv=none; b=VsdpxLg3X1rgGH1iL/KhABLsQslngWsGyH595YPXiyNuEw3+euLr85QYqXsog7Hb9CZmdb//QFca4a5CTNFaacKd4Hxju/5CMzeq+juY+s0IhMQB3ZBIbJfSjhkHsRvChyJWnA5+jG8mlIpkkSvLEJxVRuGIJmn5gwXbqiRA/fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792257634; c=relaxed/simple;
	bh=e/IQnThoHc+q/Ug8RgmRebGLmDuI1fEPZPW4uQxGTuc=;
	h=To:Subject:From:Message-Id:Date; b=HA71VEzNPBAn/d1fD90WJOhKM+bm/ym4om5tDUb0gMMb7QAf8cgQF3KFnQeKTnGdSCF97PnoYsdrYEwsTVo8bwn08+CdpzS8krHIncETD90aWljK9x0OUv1xqRAU3xKaZ8fLdS7yzoF3pFhk6JMiSrNbogDTlv4GuG1iFPnhFWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/jAYJuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/jAYJuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8857C2BCFD
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792257633;
	bh=e/IQnThoHc+q/Ug8RgmRebGLmDuI1fEPZPW4uQxGTuc=;
	h=To:Subject:From:Date:From;
	b=P/jAYJuRBbAR5qNRVamjWnl8M3cTtT5A/iyiaKTwgFdNSNus/EUmiUDI2vllb27pi
	 M7s2Q6W/BF5YAYDV2KGps3VsCFkcaHBobIi8xk2nSwo9Y988VeOZXcMczdv24gCzW8
	 3M4dN7RSsIcTaoBDl7jDodeNX6NeplIaOfrF8ipjVUwav7ik4NTR5L9s4ZZViKcEi8
	 LzVczOjAcya0MmryDaTZ5EyLFqpMI6m+lVDgp4FrJE6c0WeJ8uMsLmjoQ0Gwils8EC
	 wbyGWpm7g/lau2wkh3DlutyQxlTtyz4K+XUQcl7Dxt1uWRU7QdD4IHzpznofB3Pjpm
	 x/j5YB8gpJ5Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B519ECCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225763373.22756.4529431679646272986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113f64349b742fad76f1e06b44076ed5f0c43bed8182c9b0afbf89eac953f78b
Date: Sat, 17 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792257633
