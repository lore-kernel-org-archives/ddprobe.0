Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD793BBF0
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719091343; cv=none; b=uywymN85/qZjr4eA57CEl6CKADrQ23/xrsqGFpHQ58T/KqACaj0m0KpYLKIOz3QM3uu9QgK3MkdcINby+OyhSp9r8fdGBBb58xH03mRPiuP19Yg4IkkDHM8lY83aGT8pOUv6DNp4xc3K2DchTNL89RFx3NILjnHatIy2Ua8AKhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719091343; c=relaxed/simple;
	bh=pWOIiwCjK8EXk9YZNd9BV8DyPNKrAoN5FkQ6CE2Z0VQ=;
	h=To:Subject:From:Message-Id:Date; b=a+rTk3IJHJz4vMNHlQ8Aax/dYeF3aZZi8qyvXYXoNZSBn5G7MMlLHuQK+ZZsxlVrT/PC5JPKPwsnVTlHgWf3tXs0PmIzsFWsjAU7anBUCpAQyvr7R7gzhXVMa6INwk/PponW4aDw/gvnWgbQA0AVyKAsEIB4TIrzW1AE+xdMppo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hID7cWyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hID7cWyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF32FC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719091343;
	bh=pWOIiwCjK8EXk9YZNd9BV8DyPNKrAoN5FkQ6CE2Z0VQ=;
	h=To:Subject:From:Date:From;
	b=hID7cWyrml9h8v/h0ACP1vxBUg6rUsaQTGVhs4PBrnQn6vXKpnN1Hm3RBO5iEhEEn
	 S/Ji6PgTecGx0AB/wvK3e7WSyzOvteQQ350HFmgXAe9vgOgDjmblNjDuPk6ljevZaw
	 Ms1OWKtHB3+JklMEpqxquluF5aDB6NDL43yFTXdKX+ukF8ZxwbaQM0NVTWDk91XGL6
	 rQ+5glaoyGLh/k8aCeh/MK56NLJER54Mq3IDL0Reqy18xasz7uaKVRHEi2XBblKxfv
	 SA+auaDk1IryHnhyiH6wzQnpsvjmDYUxKErxDnjkbL1o54xLhug7KfZl1o+yHvXsDY
	 thFacIgHPi2FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D288FC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909134281.20400.3683117963003049616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b7f33efbb25c2caea51f2fbb5c9ae9f31453426040bf2404ccebced512c5a05
Date: Sat, 22 Jun 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719091342
