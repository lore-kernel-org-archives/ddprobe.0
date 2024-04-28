Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7A344C85
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714335143; cv=none; b=u3FFlrlkjBbjkeQhtJSQiHgRFEyhuPUczVSXFKeFPwLiPBkw4DSruRL9BuJ358yEV3hjZAbRG3LtcGUowDBfGae8BEkDR+/Sw2k6aqUcLj583+SHFiN29luoLocobsFIHxbJ4EkwL3Q9yp0LieGCxB/l55x3GJmEDfMuXYX//4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714335143; c=relaxed/simple;
	bh=7OQ6ImhDYUsmj4qsB2GSKqXAm03aWJF+T+D/18dKEgI=;
	h=To:Subject:From:Message-Id:Date; b=q2q8/7105887DuASNJRI/AlzfLiZsy3Oy870rZtQUhnR8/sGVPitx9FghQuC+WmKdM1F2NvUc2s2BuVXS2KYMhKp882PoiysGozJlYUnOnbDjOTTJi3RLEN/DnBmu9P4deKsg9ozT18RIfRjRqVnoFHar2hkGVzH6+g1sp71hqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHRR3H19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHRR3H19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB531C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714335142;
	bh=7OQ6ImhDYUsmj4qsB2GSKqXAm03aWJF+T+D/18dKEgI=;
	h=To:Subject:From:Date:From;
	b=ZHRR3H19pK3L47zSe7zmuzrv87cRXW24kTp6/lZwPDXV2r5t7SpRrvZ2bb6GBua45
	 /fuMQsS4KW8z8GSHYICzLYuFI/QfSlkjNopkheWKSkN8b/fPWNNSEHIyx0yTs//tVo
	 BamAuF0MZXQOnUVLb28ozZaWDuSGEzmb5gQzUnY4nIvCzKf9/GsJqe5mLg7mHthnHB
	 6AyBGOUm1lvX334WXpybWN+FVgH3sBGq7d9agqPdm9c1I3zew7Nxp3wjI7XFRz6uHU
	 0ZVuh2uWAMdFIo14m3+PpM6k5n22wLXWhEkX1368fXW32mBmCrSvwoporMzgx1hYPM
	 yds4n3qW/5Kyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD500C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433514276.16213.7325099379398576842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b9172b7bfb80c48118e755909d54656e63689eeacea5949938c51d7d09cd18
Date: Sun, 28 Apr 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714335142
