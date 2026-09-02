Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4554D40861D
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788340234; cv=none; b=TeTt+6vk4goW/y3ROnaEFotUZ9u1mfh/b2YTflyDrfUq7OQuJzytw0E34SMs9df+UtxnBlCbeEC7AQ4cECdzZqCcxOfXca2+Wx7BFX4uey6yYi8rUTGrbTaHVsN0B99VANgv3U7IzC63wOigRItJqOpxvx++52bgyJedbHVF4Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788340234; c=relaxed/simple;
	bh=ilKGWmYEc6/L8xvJeIRjQSXRIUIQqGt2boLF9Bhgf6I=;
	h=To:Subject:From:Message-Id:Date; b=GXK22c3tRVqqVFZOZyZlIghLYiO8gvULEoPm2G36IJbu7T1VlQytpjJJqNYHXmErxUTtNdzRgXWPzjcLfTW02bxX5wsdAeJbomNErMsDjM03sYdePn2jjcYoAHjfwjDrMCd5sAc++cfgTXXvtl8HmehuEXye6RtBbl/nXNTwL9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCPLgg2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCPLgg2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0362C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788340233;
	bh=ilKGWmYEc6/L8xvJeIRjQSXRIUIQqGt2boLF9Bhgf6I=;
	h=To:Subject:From:Date:From;
	b=iCPLgg2e56i4EqyCY5Hk1lQAsfifGTQ9hOonm1Dq4FLj5gY6meK3avORo8LiCMICJ
	 bFcc2mouK6ixFRnWVy79Eaw6DjlfGrLA6TumWJlQy11h/UH4IuqHExJqGqPzUoNFVd
	 2C4mXJNKkg+fixo/5VT2pudXfuqWBB2uTw2ZXe+LT0h7wTw9Dfg6oQhDCWzSkFAwyu
	 9cdLz5n8S1OsCIGXt/ww1WqnvhjM+M593iLaWACdgzoz1UmCRwtOi6Rir4MM/8cCCT
	 nRwmjNntDW/e603owdlv2/SEHUIG48Dqo71uOdSurtMyTbsQpDhjVkM1ZCfw2OTick
	 beJgSgtm0GHbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB300C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834023369.15301.9371563358948611457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed852207243fc72b2ae066db68e0a37079b97b9aebc1efa6eac301cade788a9
Date: Wed, 02 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788340233
