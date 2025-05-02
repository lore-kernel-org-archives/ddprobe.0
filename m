Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC5625524C
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746193194; cv=none; b=Petcy7/mLJH/nTWI52WEgIAEvhr+Z9axgUlyDiZ6234LQ7ZE5cLIW81plKr+0hGydYEzVo+Ar6aPa2n08hlnnQxEopsS/MoxfLEuvaOoTFoSBkBXFdmwCjDJ05xfAkgh+pNmrHssOOi3/Iget4qrC8FBW83IaOZsl1nXBomYTio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746193194; c=relaxed/simple;
	bh=vmLdMnkQisSxO9ac8yiKNWubLKEXRYzkfxHuq3Pz9Ro=;
	h=To:Subject:From:Message-Id:Date; b=QJvgTY10S0T92xj7TPZog2ujLQiqb7vRzopoJ4f4D3nHlLV7CwdqfLmMfWEVJxkD+BjIQw8Sw3LlIhIGlO3wJ1tozn9Ir0gPY4L4mWPAb6SASc8DSqWEG3GfD9+JlTLeOy+DaiLiCkJ1vCt1u0euq6thot8K9UklsbSMQe99WKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCYpGugm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCYpGugm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD84C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746193193;
	bh=vmLdMnkQisSxO9ac8yiKNWubLKEXRYzkfxHuq3Pz9Ro=;
	h=To:Subject:From:Date:From;
	b=jCYpGugmWXsD+LfMy/ZF0Cz5GMWwjp/V/u06iBfaU4C7kdX9s/yIJJlM+BeotAJ0O
	 ZzoYd6I4xJhm6zf7Pq8QyzfARFDbUmOu/gqCCnszuPhA6yxvTe+1vMDJeHGSEXa85F
	 xe9ZP4CyKkLHaHY+xvVEiByzqEeEuLPFS83Z910pG1LhLiAm4BiTGMbHc8dPgoKqPY
	 SGxeTQvppx0DcNGazeVxIoPZf9BmJe5GNA7fiK/2w3eohLmItBQTIdBWnLn9iFF/JP
	 NM9YJaWkE90DyJn1vX22sr+q/ZwtUiA8XkzC1Y1g11Hb2pG1GgLQGxebbiGdtklCst
	 CsflYKzwtvYUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAAEC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619319357.7436.6853512626638130603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d0a47569bf65edcf113cb8f2982eaab133bfb00525f26078c5a23363a80514
Date: Fri, 02 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746193193
