Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DAD26CE35
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756102194; cv=none; b=coUshVvhopUPm4NMZiFevriodl13MScLo745myXiisxv/KzCbPo1j/AfAWk5s3/jb3GEWCNH83h8XAj9cRM2VApK777JGOh/LoTy+qm0AII0T6EiR7+LcI7kMq5GKN4ZUzIR2TmLdqbRWbV8wVOp7irrh+ZabtrjZPaivQMIO18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756102194; c=relaxed/simple;
	bh=2hs4fuuBU3KiO9I3FiVDT7JuXbh3w/1uTc150syiMi0=;
	h=To:Subject:From:Message-Id:Date; b=Hlri5DQ9WlLIhemjVfHAM+pst5yTSYrfszaLxasbiVE1lqZNzuRFCMhEt+Ci3hhHSivGZ+K0PMrdQeFFLW8tiokhs2NghHBKCGoDywzF6YNt5fcHyLrKccFEA99anH4f7a/2cZH6y4xAaD9AhyldRzpkvckiWuc8jrMj7/hCADI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpUjNeJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpUjNeJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48AAC116C6
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756102193;
	bh=2hs4fuuBU3KiO9I3FiVDT7JuXbh3w/1uTc150syiMi0=;
	h=To:Subject:From:Date:From;
	b=YpUjNeJ5UzJsDRZ16MxWiA2X5AmDMdbiYE4bMmMkKM48eLKSEjGUhIs6OPP+ImIVE
	 /89eIyhGhh9rWHmBByJ5ZMFzz3OCLEW/aftqMsoe4ViRhWyR5KAZs2rACJWimWl7Hf
	 epj5G44ks04krGbQPsT2EpowXCcwoXZF/hrAQ3O7mCYUz1WFzMC+nUY3sVB/dI/TQL
	 7wH6hiYWwFZTB2yFMogC26XaxFc6HyOYJmuNJUePqWVvSeOqBKQWSpfr9BzyV4WlNK
	 TMgRCGmLNWs25UmOM7j1nIXKaWW01jGiH8sOcY4Ok0BSZAjN6JTH2/7+YkvxysXAIt
	 po4yvPngRXt5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9337ECA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610219358.23620.8765390880162750433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43b254e46f036f48c9b4f749065507bd70d85a5fac97929844c75bc8c1b1242
Date: Mon, 25 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756102193
