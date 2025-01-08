Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B092036EC
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736365554; cv=none; b=oSnmJCM9eGcIak7biYSzGoBRCpIZ/mTCzfEtbvyEZQyeLHtGkhzGkdm6JIuh/U4o4TMyklkxicwgzMeDeLgRz6DnQ8PkofgeZPtriI3e1QNiw4kvcY0GCBNqC0singwlTPlboXK0UBiKoGx0Y0veB6qZjzEgbrF2ttCZHhGOHr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736365554; c=relaxed/simple;
	bh=EfUtRvgjYf9O5Xwrbs92Z7gfqKb/+YAKX30KsvCqfTE=;
	h=To:Subject:From:Message-Id:Date; b=l1BTedM0d8tbbxt0DMeui5bp/i2Aky2HUPNn15hpSb/mwVUtTe6fgyOs389Kc2HOXt7JzgmcBslgxmnz2+GGdTwhZIgftjsfp8jnDBM836eIQvANGBoXpKwzOm/cn8I5mdUT1Ttfe1j18bAGNA317d33cIptWmGXSU0hljOcHTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqMu/Jck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqMu/Jck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09FDC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736365553;
	bh=EfUtRvgjYf9O5Xwrbs92Z7gfqKb/+YAKX30KsvCqfTE=;
	h=To:Subject:From:Date:From;
	b=GqMu/Jcko6wmJIoXN/ExtOB0va2BNEBKBzcICwx4ZHOr25yMtdKO+DTGpeGQ7t4+5
	 o8sum5I2QUuuhkJps1daZTTvBErN3o/vfeooyTRVFkn1QODXF4SnRW2FT241ffD7qt
	 5wDrGOKD32geac0e4SwtyVd+g8/QHHbEaS8a3JPeNH0V3inwfyXbWKPBYAGpMId58U
	 gPqXhyZqjgXxvAttTgfSOz46qSxajGeNavknubRWB1V5j4V9UA7lqkrR//Ht7ms2XN
	 9suTB7mn44yB2Pi0Nn3EHCTmT7YPMzb/DYBeecTos1dGyoGRtBjwLVkF3jIVpaQ+Nz
	 mbqtatVlG1MQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C366E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636555361.8386.14872621135414868036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a856d5d4f8ebc7c069ab396489cc68ca84d2a6d9c76640c7ea061b33317431e
Date: Wed, 08 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736365553
