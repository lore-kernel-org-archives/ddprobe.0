Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A67D219F6
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 16:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717086263; cv=none; b=kbUGE5CE08gz0XX+bDLQ96jAm6mlcvq580BZDsWX28h74UqxaRlDJ3TgRyXrAdSB/Sxz23P1RP+UUxCbxjfU1IOnoog2v2CULVyzCY5NJ0+KOYqyJKn9yBlLzXn7SCcWaFKZqepeRyVw2HO7t/Ou77ZbLQEjgsMCpqaXGmlytBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717086263; c=relaxed/simple;
	bh=kGIo0474X4aphl7PGu/WMHLTfd9/A/wt/OJEF+HQ0+4=;
	h=To:Subject:From:Message-Id:Date; b=JwTKLVyELrG6UoOBSAzCQao9g8/7iySDCL1iF9Vhz+f2YU5jcBi+wnQ1CeWlN34yRx2dORJquB+kUTZmgt1WsvjK+r8X89XB48lqv1W8WWmO/cYpd8J/PKmcT7AQNsZZXyRJr0hENheqOhTyBGWjNEQoT/Xt+oUvo+Ix3pdKN4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEeTYwX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEeTYwX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2651C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 16:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717086262;
	bh=kGIo0474X4aphl7PGu/WMHLTfd9/A/wt/OJEF+HQ0+4=;
	h=To:Subject:From:Date:From;
	b=qEeTYwX/qyntS35RKjpCVx6maSg9077bjV/Jkdbq3sD4fwsZTm/6dq260kVOFVGnk
	 w+zSJH7pQQKpoxRy/6r/D+IFl3C7Vr8uVQETHI0coDmOzqmis5xZpTpgjvooRXunc8
	 brdjXCyzxFDnvmM2LgJT2hEAQBCP1vZHnQAaokzunbEPObSgQajIKpCVgNC5YXKGo0
	 vd2ZWWnyYCqfQNyoG71KwcU193ncMD8KLSvCxCtaIwpAT2hSIRZFGzNFrzcUYhl0Kk
	 rV0xnEtLrXfj5OUnTMIoDAgzGV72J2Hs30fRK99ErNVgY/6g3ih1AVZRYH0cGmbYnn
	 aR7JdcX2vZ/+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7F8C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 16:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171708626275.24256.4913071158699924603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77556aced4bfa97d4a4e07e3f7476447578beb4a2eb006ad1b73a5a7932917e4
Date: Thu, 30 May 2024 16:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717086262
