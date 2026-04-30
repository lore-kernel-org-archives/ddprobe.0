Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BA63FB073
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777552054; cv=none; b=d1cCCnraEfk996R8Zv/8mUkWPktUN7m7pswpO3a8ESaSrQPWAwrcT0yj3eI8gn0OAo4mXttlgifMACoueUkfOFB3+a6YrCSAgOGCr9OHjjG2KzC233IbcXui2NaMxPWUFXQ/G+CLagnfa4jx7E/nRt1M28Lcaa3QCnnhd6PtuVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777552054; c=relaxed/simple;
	bh=qitjJfu/MrECQTbzwsXJcG+rUvT03AhTN9yAWJ8Q3EU=;
	h=To:Subject:From:Message-Id:Date; b=ep/lkfqNvALytAgyW9BPqeDp1lszKd0qr80roOlHtHkaMNfPM85Twsuz3LJstW3+IesAbHUjwpFLBw/ymnzOFrBVyF5cdxSLUGP82frL2KMaznZGMloYVb38A8clwV11omUHB6nD7l1lcEQq2pgd95yr5lyhOB3cKeYX6/UY4yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwnI6l9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwnI6l9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B2AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777552053;
	bh=qitjJfu/MrECQTbzwsXJcG+rUvT03AhTN9yAWJ8Q3EU=;
	h=To:Subject:From:Date:From;
	b=AwnI6l9NWzco4qc4hcEeuNlWLZX0EABCOcDiKcko3I58N154KpxXdPopHaTIDGFvm
	 VL0yAujvo2hzrrEFhBdkCvCz8ed2sQg3fWjIvnHfD+xEORyv+5FV9D4IQpkTmkwit4
	 K96V+Hv1TgZncJGTtxA4xLe0d0rcBZY2qMZQVzOV+beC98Ngb2j89ZbUKKS55RQjya
	 n/BlykydoQc1+Zzp/EK3mtgpQ/Z99B2bMocoZ6TlDK2MdShNjm+rxPP6/Fn7ZUaPyl
	 YiI7p2qGwraem1I+GZVlmwsaZwydWwE8RxzBxB5N4vRWDDUWDbdrp8H0ufKvo8PvUa
	 seGDmBdbuo1RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA02DFF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755205368.10928.5847344674177979907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33fa8f080e8c02bd700285885f4143d8d97c7dcbc346e9c650db0b18e208029
Date: Thu, 30 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777552053
