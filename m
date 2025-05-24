Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336641A28D
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748129394; cv=none; b=qVNPJfTcgl96vbHdokmT3+/FE7cQBGQFenxL4SQTcQF4uDWNPYgQUWoJeEssDdwfYZN/ete+eXaKmtKoNPraOZEwUJwya4E+nTBwl8FTjlCUQn3RMgfgr+XkE1AP9noFj/2vCgDCvjFMpagf1Xd7oWTH2E5p+fWO3nnros1M4eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748129394; c=relaxed/simple;
	bh=etgQ0b0X/ZA1EyERps2rwLRYO1QTDGo6nLJef+55QpM=;
	h=To:Subject:From:Message-Id:Date; b=cM2T6adPi6cEZtEvy5reAJ4z4jxnyaDv6b4CSdwDRme48QQ4u5HcT8G+IdTl1yK+DyglsB4k76315vi4Yx7vird4IRH2lRCiULQa8UHP5w23/en1IAnYDMBCrk9uNyxTO1TdGNtQtp3RYxjVvPNj1Ivc+N0Y4wMY6K1XkzaPW0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6M4vhtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6M4vhtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50D3C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748129393;
	bh=etgQ0b0X/ZA1EyERps2rwLRYO1QTDGo6nLJef+55QpM=;
	h=To:Subject:From:Date:From;
	b=C6M4vhtqxUvsDnEz+WEzn0QXBE0Q5uO1J8ROF3FB21BMc2vvYMu4upM/fJb3i4OdI
	 qRIqskrY78y8//kOyBilIrglful8H3pbQ8imuvOmmPEMLR4nw+6jr9llrbpH9rVyUD
	 uba+66Il1p2teAGTKAPSD62mdp4ThEl21Q4Chek/wj1q5W7X97BfTTAu0yXCVTD+BT
	 QVJUQu2hkBRf14MKsRjZu7huTVoxsSquESA3/SvA4EJRgJHdG8ULggs4eRmxHXJLd9
	 4QPii/gXBsNRp6L9M0ASfxd42gwsI2OniCUeaeeysw3YIMrhbV5NoN80wd/qM4weUg
	 Yt81HxPvGB0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936ACC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812939357.3829.2819709486304472280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26cbbe267826511d9e3e618a760ca02582add067f613722b4d506f85185f5b07
Date: Sat, 24 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748129393
