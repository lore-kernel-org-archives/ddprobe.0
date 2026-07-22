Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C5333ADA9
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784686114; cv=none; b=N8NzwRbj2HTMyzEEra3DKkBPA500C9a9KL3mG0gxnSb3ydmZREdyxrxC1FIbFGzHkZj7Fh3nJ9BcNp6kcWonU0C++04TX5JR1E3c9en0qA1W8d2N73PJ7troqvTipXHBJ64LN+ldX5YpiY2HXrlSCJElFfE8EtmdyVXaq1Bjsrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784686114; c=relaxed/simple;
	bh=Yhj1ZG2PIWIwn4+AQsApg9DwvW0puasYdQHE8z8OBa8=;
	h=To:Subject:From:Message-Id:Date; b=meV+mr+7SsidurzIxzp9q4aE0gk0rMoAq8R51tezkEpVwmi3oBlFEIPa/4As3ApAEmWsKHNhy9yBaRpEEh6bjNB+2qiDrKfViFwB6OyRKl2NRuS170mld2NC6IGRWZWMkzUgL58kR2s89CgUIMlJwVJappV7YqG4yUp2sP3DxKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hupYHT7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hupYHT7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA769C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784686113;
	bh=Yhj1ZG2PIWIwn4+AQsApg9DwvW0puasYdQHE8z8OBa8=;
	h=To:Subject:From:Date:From;
	b=hupYHT7Vg1SZ7zn7jFFfJ+Eza5lb9mz9Gwz807LohRmqG4N4jHRIFjO/klBCMNIPH
	 Mpq/oRv/yHSFW15IFzbTltEpJbYlAvYUMWAkcgJpYdL4WkG3KcWlH+fPfTxXBYOAbV
	 q+eaJCY8fum+ffE+VKq78Hk7gTECcNVe3TDWG2S+eAZUxQZPr2HUE4dDPeTBAnkyUS
	 nnd+PPbMkijP8ACuA1W3Nuc9c4CjDCd9dC0TZIRzxu6yzPqyDSj0o5Bt2CtnLPFWpk
	 pW1g/dDM/pu5+zx6z+MN3q9Yo/C4HPpUkgnfNLTalz4nhDs40T+hE9yzuNND+d2RPe
	 9IehUnV8cPu8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B204CC4452B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468611369.1695.14310094590290636466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c46e01aea311be6590f40dfde22c0cf9982fa7d2f95d0b228b28c60edfaddd
Date: Wed, 22 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784686113
