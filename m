Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEE54AA419
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788369634; cv=none; b=Gc7YRJxGUWC8WvY1GIteOgRq3//SavKRHZjNG+5NCVOY73QGk8D5oXOuQgpr4ekcOOPjoYy46MRxQSqUbJieN2ORQ1o6dyM0tj0txl/jhB2KdztGfkCiJwmkVqbeoIYTTAvoszeXYnDI59PTs3GXNgdGQppqNcGiJco01Nsaodc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788369634; c=relaxed/simple;
	bh=veVJgAMlsV3kkSxJ9PxrH4TNr9vSTPYO+0FC1qjB+sE=;
	h=To:Subject:From:Message-Id:Date; b=buquLf2fp6NOnFAhIfYpoGwcORtcruJB0wd3T+cp4dbVnh7u6T8TY9BBSqaDrRDvUVa3UFO4ZNLWS1YOj/FGez3B0xW2mawILD43+1KbUY5d8xtVB6qieQsvOofCv0X3cJtpmLhKoBZ52U9AeUxvroDmW1e78SQSaCwcDvku5H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1IqmKw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1IqmKw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D470CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788369633;
	bh=veVJgAMlsV3kkSxJ9PxrH4TNr9vSTPYO+0FC1qjB+sE=;
	h=To:Subject:From:Date:From;
	b=Y1IqmKw5EvMIfuUFwmFlWJqdzfigpvB3rR1gJQvliOGAs4psUQLgTK3yMn0FF/rHq
	 QTWc46aNWTsrtDaaZJCQEMtiClmSrCoas9Cn8mfA11yMo8UpXyGxZ/866AzTcuFK77
	 rOwF57PRpz/fpAolMVNguJG8UGoSS/4FbBi3uOpPeNTaGsCbNJsZ4E4taLWOuRgVh0
	 1FEHnDQFmEdOw6ms0txzTGfK7UgidHowORwQEYQtVQz4uZ5kmjfTbDzngFyoPlhzq6
	 CChqX611/U7NloRYq2FRgGzcuB5GnM4Tn6QaCTyMLGFutdvRpxRXB4iA9P390/VqmF
	 xeNUDtu23eFcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F46C624D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836963368.7981.2248515501884130146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf64b78d0096b47bda381211815ac4ada009b61f0bb4b02ab28bb057ccd7e09
Date: Wed, 02 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788369633
