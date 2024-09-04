Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5C615E5D3
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725492354; cv=none; b=Q4Js50pJn+8wfCZZrKYcWUcpEUqRCLcopkvADsgVcXLGDpfUMIqhdluI9kcQR3QBvzntrUYCALhxhj9CAjKMK6lGO0prK0d8oSsIdWJ63Seh6CW7cL81CrfMESfbM6G6filP8Ax7Ktv3okSVZMdX5ZlQIA3JXFJRt1itU7ScoJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725492354; c=relaxed/simple;
	bh=GXyH1VNp2pp0D78g9qNTHYBbVrBvmWkWohIcpDSYONg=;
	h=To:Subject:From:Message-Id:Date; b=ueHy91811QroelcMFUDvFKhj/Ud+hIWxotx1nLsl4C09URULXXYpJ/wpX+p8VjzIg5ighoHRj0naSzjimXSWWfbi4NzcxHwPJ+OrMXF5CA7YxJbS6aS2ZuV/nDR3nW/X9fNu1ZD/E/mq/OgdTkg0nQdxtjnigH7OQv/rODdQ4js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujgh6uFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujgh6uFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E0BC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725492353;
	bh=GXyH1VNp2pp0D78g9qNTHYBbVrBvmWkWohIcpDSYONg=;
	h=To:Subject:From:Date:From;
	b=ujgh6uFXjgEy038pyJj3CjJoz9vVQkkVX/Z5RH65wnbTElURIBeJmC9kj90sSB1Eb
	 u5ydWVzGo3VKgrTsmS9Zs6pMH7zISCNkI1+VbCBhNPDo41apbHltxV1iXrsIhqeyoQ
	 ZsTAW6PD/VUljl2lr6hLRX0LkmXXT6M2BI0iXfXTZVBbC1kn5P3Yi8Icr2FnvM2GBO
	 wXXIeM1tXZ9XnkFMCRal6xIMyUUnbDWQDgrdy/CuJcJciaJ2KCSpx46+2Xpg8H98SG
	 qupNNaBDmXz+Z2x1ABGoZawxdoPBj2OcpoD1wRP1hqeNROqTvLU/unkyfv8qZdflDn
	 6JPsGFU2InYyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A218BCD4F4A
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172549235360.25988.13532317793342616608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce1f797ad7bd0ea046eff38bcbb64cd7d3ea9e9b19976be70669dedc5cac7fa
Date: Wed, 04 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725492353
