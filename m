Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7872E13F441
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719510863; cv=none; b=gKme0UjRoXU81ExDdds579LtA/JsTbq+ySXs0MiHW+9kJARgMMpSTrakzFJHNNIQPD6nBHfne6P2YEa8gVu6avtEFxPIV4biY7GnsX47/e45o+Uq/n1w2QDTrRFhKZ5XO/b5/JZWSDBKHkjjql70V+LMqu+7yOgfScZHsvYH6kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719510863; c=relaxed/simple;
	bh=Zl0ExgoH9H9oecvSPciUNqD/EJjMlppHTPFVGlJL2vg=;
	h=To:Subject:From:Message-Id:Date; b=aaRAT01HEMPMnxyCK8bJ5BaAa8q59fSphY2kj5FkbXmmL8mTLyUEC3YmZLbsLPOJB/RBfs/cov02UQBpez/hikJdsXQyNCBK/EoScPairr903DJOQhDHEZXXGcw9lbtfgpTYpUJZnoP/7wasnglPeBiGwn3YK+zdwp2whvwR0mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLNBQt6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLNBQt6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC34DC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719510863;
	bh=Zl0ExgoH9H9oecvSPciUNqD/EJjMlppHTPFVGlJL2vg=;
	h=To:Subject:From:Date:From;
	b=bLNBQt6oQxRXo4I9z6Roiw/FmQ3nwNytQAu72Ffx11y8s3SniGTr2r3HcVKoIppeh
	 9nwx9jgdfJyjrcxc+idon42jHzdH0FOL6r7DV6pfDSgyHmN1YmrK6mELVkwAZLk3jc
	 PAc3LbN7ONlJthND8p8uDAP0InU5ycyr2iaJdOqvRbV9KfoBCjy6e2mYlBsW3BmbkF
	 3VHRxWsT/jlWAxD6UVhmIbjv90Datg+nkRza3a3u3ov3PrViPmmCusPH1T99dRsYpn
	 7iAj96BYiPny7eJSB3EA1vyXMfL3VK5GgrSpubXj6XbZfzuZ3AK+BbP82LDo3vbxa9
	 7rLrf5W+laRGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DADC4C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951086284.28724.4681674452858112169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337cfc98af5750b441bdb2ca2e8982fd7b3f7c5a5812da353d0e28b0965e8a8d
Date: Thu, 27 Jun 2024 17:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719510862
