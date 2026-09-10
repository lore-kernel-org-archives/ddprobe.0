Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1C9D351C11
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789058434; cv=none; b=H0Z9Ehp7BmmnhtBlW4juI+hC9h4XBm5C4HyqtSQqHDhiPdAneucZv3f4YUYU7JVRzTseleGZgbBiyKcoL++ytb2PSZu344WvIHZCbjh7JaV3oAkYLR//dCkdqoa6WxcfrTbpAlzmignPJ5hu0zTO9dExNU8tn8Dw7zP6S9P1EMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789058434; c=relaxed/simple;
	bh=0rIvLE52P5woYmxGlO+IcryP6IUX+Je1lCJ4BFu4koA=;
	h=To:Subject:From:Message-Id:Date; b=CoBeoWeaC7KCKG/R7TP0xdSqjueYu+TTmFUgjUYHbm2ln+2XC2HB/C+ldRvoX2OuUQliNLXo2iO0UNRuXwFxHPVOiWEF6G38Nb/QmfvzJdpKfKFgu2oLRX4KL8l9zNJlMUVvZ00Cpo8roD9En/7lylivdkdlNhQ3SvbfsGwzc8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUcvh3v5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUcvh3v5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D21C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789058433;
	bh=0rIvLE52P5woYmxGlO+IcryP6IUX+Je1lCJ4BFu4koA=;
	h=To:Subject:From:Date:From;
	b=XUcvh3v5Cs5IgN+t0HrjfqN0Uo/HjbbGgSPRWEYtFb8oAiioFBpdD38tvu2LgsFS6
	 bhlmz2SJ0/IANbJQ9opfWC0Oed+lXsaN4hbapqohe5yFXgQ8RtKhWUEQet2nG6Rzs/
	 KRHkdP8u7+VrCO615C121ErCYwN96AYGtuVg3On2g70kWt0mAeZ9NEk2OOt3QDk+eD
	 NEFgNYnbyK4uKUw24ZVY3DvEqEodQIxBeJzUItMmfByrP08pPdirtbDPK8+BYDGhUs
	 ORUQ/qM9u0pbeTTrvs5qq/xuuM0jxPWgLMYGmd8gCCgr3LjHXO29EszGzmxHgvIXOI
	 Z85BaizK4mwlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA031C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905843368.5748.16046065599841017080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860528d36b1bbc913361a0943954c357853b611fc54ff413ce3ee6b5b5b2a6fc
Date: Thu, 10 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789058433
