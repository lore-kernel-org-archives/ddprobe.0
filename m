Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5D23A1A2F
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778755834; cv=none; b=mYcteoBUGYqKoKbq5nUupSz1MBvmrZ5xJwAEwhTTJjtxcDKTgzArWgRpraV/38UvFrj0VIwoWBP8oV7AwBc0+d5B7fjY8E6CqM75D6ijTmWgTwcnDtT1KqPF24u7AkKp51PgLyHssiaZY/AdFifzdmCB7e02hyZLkSYOv1RKQj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778755834; c=relaxed/simple;
	bh=zxi8xrW9Ebk9eJE8+6u3b/N3tWuM/1od/hLPbPBir/0=;
	h=To:Subject:From:Message-Id:Date; b=lMvV2SsuTb0EUuhxnHXa5f2yWLeEaufIrgjBqVHzDENAMQalQhSRWFjsZU3Y2g/EthlMLIMBcPMv/9r9T8ibH+R7BgDG3M/PncIHugBfvkVB3I6PBngaCXXS1jOb2quIlI/mPxfTMTACfuhGguBcAwwwcYieDV/Aqq8vMcTVquk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ns4IBpTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ns4IBpTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C544FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778755833;
	bh=zxi8xrW9Ebk9eJE8+6u3b/N3tWuM/1od/hLPbPBir/0=;
	h=To:Subject:From:Date:From;
	b=ns4IBpTMmcAx9D0XAmb9nQ6NktU2svcYMPEKr56Tmx+IP/fNOe5bWjulbSFdWrsct
	 WEMAnB3tf6HkXRDhItvejOShEBfOCCGY7H1wtA8wMfJCkQUKNJrH8OGakLvRLTG6nk
	 ymb374MtNSxP8uajIjIPh2F5kcbb5uNuS9oJJ8vOhjbnpzuPXjz5wL01FXfhZbGATw
	 49BLBMJUbA9RlnzNnubBnYHIXl13EY8YA1vdBrwgq5vbmVA6/rGVosoIIlLjwWdPhw
	 +tGFcPk5DL41i8HWFaqA71VnVa/pAMUZ66w7XiKKsE1+ghX0B+ihANDPyr6mh9jO6p
	 olupTc1Al5iQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC765CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875583376.1326.14691866294261374819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825073fd96e1245e6b7fdbb88e15d0f1a6928ef0585f34aba3683f11f5db3b83
Date: Thu, 14 May 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778755833
