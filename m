Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6E229B22F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767429234; cv=none; b=Dy3xertQpg+ChQgmPgNNd5V8Gq4Jb3Oqqzc6R7HrX0vc0L0EUDTEa6uH8KCLT0snrLvh17NfmLCd4Czsr+FO9L/CTe1uxwFUj216xKLiZdyoXV3DKioS7M8DncvIp2LMWqj4bMV0w06pe76LGoVc7x2sYJEuZWAuD/hWIwyxmxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767429234; c=relaxed/simple;
	bh=F0jS2eUfegwHEvpXO/r0S1I/jZrXoHej3GZiitYO28w=;
	h=To:Subject:From:Message-Id:Date; b=RV9YTiqF41qd9oB8jfCp1ACSQuOoh50cziNUr1rZyP6QsEFsDLwSrbYfrC50c0XC0Gbxmrsq1hTRV81C9SO8Qy3A8gmfOcK6BCiGsZfKlVEDr7c9ivPIJii77lBcxXwI11Tf7YDt/AXSwUR96qXuCHR/BDrWAg3M0VRa0TExrH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjjhX5Np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjjhX5Np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D71C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767429233;
	bh=F0jS2eUfegwHEvpXO/r0S1I/jZrXoHej3GZiitYO28w=;
	h=To:Subject:From:Date:From;
	b=GjjhX5NpYnFsDeKOqongtbyIq15KT9um8Fgc3yK+OlPWsufzqRG2EBzMi7mPg/6Lg
	 aSJY0EjWh0oX6sNWdR0lOybqye8QmmuU+5a9c1c9S2yQT8wFvNtST/4hK6fSIQLgIF
	 5gr/3Idmvr3Ykuyu4k1fHfH9W29pyS9z4i4Q/2projW2vf7VjLzuy99vbMrMIs2zjq
	 4WpIYmg6upARP4vhpFkYqsIWS3bgTCnV4m+teQZilvAXyKlIA9cQmrBuUUvEq0dLaC
	 k8kYhIkCJghCkUggd3fIjjMAbArS61JA1EID5TWbvxNAhcuT3TBdwyY8BUhoflZYEa
	 guxs070tnRKHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9050BFC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742923358.22767.13937916198672198666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7643becc13f8f371269b998e9b1109c9ed6f0db00281fe50f1eee2e14a30f9
Date: Sat, 03 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767429233
