Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B89DDF76
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754210994; cv=none; b=CifHFovD9UJiuS1jzvZcQIRrWBKpIPWTY9TkF+v/inToPY/wHx8Dof68O/d0I1R4KneDLOfs2o58w7/TUq6FNIu+yc0A+Z3IO41fnuEP5mcvjlOlOb0VoqCfrfa0HMKGrQkoey9Ab1vs2SZVTlcFudnmRZKNpz0/uLkdhVtuwxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754210994; c=relaxed/simple;
	bh=MKcbesLX2IMpIG2tFtJuZmoAYh3tI15iUqvs1ItQRS8=;
	h=To:Subject:From:Message-Id:Date; b=PV+l2Zi4MVp2nZsz0d55B1G3BgMbaakopKAJpzQWP61zCTykMqO2Y2wX1YXuIXgniqRRZYCvW9Xz2SHCqLiVob4lTOPjDL6fZFmR80OWMoMPZHVpojb7K71pBCfNVVK6fD79DHbfglOTwdw+rNOtd3u16E03pGoxrBMMduyin5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXAgkgCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXAgkgCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5491C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754210993;
	bh=MKcbesLX2IMpIG2tFtJuZmoAYh3tI15iUqvs1ItQRS8=;
	h=To:Subject:From:Date:From;
	b=MXAgkgCoTwV+vxVrgAW21gwjyqzLNgDvlj/8TCLwoSohiVIu75Nx+dDr5WgNjpsHn
	 zgKB5rZ6dlV0ZUGHazD+jTBhOOVnM8Cn5NOSaSqTmxiixdRFikZwNPB+mDrRg/vEem
	 fvlVQUUBnuer38oJjEF7srPHyP1uQXKUQB5zIQDXnhvvUgUPCi//9FihRSGpg3dpep
	 IOu3BbmRxQd8S24Q/IstDFgjw3PUdj6Cwj6R8ydixo1Q/8l+bSCXkpiXYlyzbkBlis
	 7SHIR7Ke9F2aFMZlkbgtgbhf31F9yUx3VNZjsg+CRe18xye1Ar5SGgLaSjA8amZ/LZ
	 t8SwUH7i2IW0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939D3C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421099357.28075.2654952133254597684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c090223b262d6a39bbd9dc9720ea3e8f205daeffc8d318bacf349773f3d72d1a
Date: Sun, 03 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754210993
