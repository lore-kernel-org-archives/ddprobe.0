Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229DB19D8AC
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778432434; cv=none; b=OMo5p81/3KcB646Gm+uzwDVPNZRECwhieYcEY2jorEb3pHx/1O/agwI7EuYMgrfST+5ytyjVCgb965hYDM2PcTN7aBaotoRAPLVvJWgdansdnt20lG3SR37TS7ZpBIJ7MdIJEANDQBgkK8u0AV2FJ/e31L58LAghWa24T58uDGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778432434; c=relaxed/simple;
	bh=NNUsifHQYi3lZJJ6TwswXMU9eviF1cHjJhEtZoIMi5k=;
	h=To:Subject:From:Message-Id:Date; b=gTMWIGQ4sasTl4hfJ00+8bsg8EINBpoFXq8L6KNl7nXCwItYyeIQsXc0QTRIFMrZeAv35VxKAdAdYJ+TCFkAQ2gPRS7sNLg7mDwY0Mss0J23RmEL1IXUhKBByy3+SJxm7VlN+xXCOnp8CTvf5XDRgqEP/kkSAiUpIcPRlAHEJ0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWPi7MnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWPi7MnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC15C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778432433;
	bh=NNUsifHQYi3lZJJ6TwswXMU9eviF1cHjJhEtZoIMi5k=;
	h=To:Subject:From:Date:From;
	b=ZWPi7MnF9IBY85uhBqtY9MuTicNUP6pmeAWVu00Bv2R+IDKoSnaeqRBkvmM3gJb2M
	 KCayZzdkvPSdbH8AHfCXkDaIVP03uB8Splzlw7JeBX8yI9Cn+P3C8QzKHeQj2nWWHa
	 JqP8JlzJpK6azlTQzmBPLYug5i2lr2dbVbktNgQt9a5QdyV/3s32IO5NqHvu4cPPS9
	 jLJ9b85QPaZ5h2fqGnZ9Z7kKsljqH7va0XLVZ+i6f6FL4rkXEketCrurQs9HNH56dE
	 slx5c3nm8A6Du9BNQa0+Iz46AF665mZ9dDnmvzxgyJEi+udwdxlpFB/IAEEtocmQrl
	 L4oYXtACB9PtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A99CD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843243370.19012.1737259643624623264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1887b3c7131a1f87d424c82723904bc2d080e1f9e03958ee2d0b613db420fb
Date: Sun, 10 May 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778432433
