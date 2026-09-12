Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302FF33F8A6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789224034; cv=none; b=cJd2GTB4pZWlUDmu0h3VGimofzbdZdglLcqwOkj6GV7dXCegMs24TgIfnk8BWd+AoDU0OhIlLib+4qB94QZztKoZVwg/c09wlTfvBmi0Fr9XI7F2xLpEtpKUcEqbMvNUpW009Ic+VkCPjFgSs51pPPOCtEEHb04XcZJa7edcDHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789224034; c=relaxed/simple;
	bh=zjBeL3a6CgIDpqPvOzFBcrcOOHJVEgqba6CFVV78ld4=;
	h=To:Subject:From:Message-Id:Date; b=GwSIWu1QqcJnQHaERDn86abd9ccI4/Jjhc9+MmnHBalHQpsJtJxdVC+ahWy1rkDyB0+zdZ7xwNmz82BJ1oaA+NynugYe8RCxONkhjIxaUbtxVLJYIGK0a6Qasqceby9nFXEHn+Hucmtx9K2BsEAB2iJZ9UhZlNT4Y3SOCWAdi7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4yDX0LR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4yDX0LR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEF6C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789224033;
	bh=zjBeL3a6CgIDpqPvOzFBcrcOOHJVEgqba6CFVV78ld4=;
	h=To:Subject:From:Date:From;
	b=n4yDX0LRAwlVyVWerfqBYpgoYIYUF+ZQfMrNmmN2FMBLmRAQl+bcC+TaEY174Q506
	 Zm58H9vF/qREybgvb+rJewrL+N2Cu2Dc8uCdwp+O+thIYAxzRCJg/hMViC+o1HE2Rx
	 i5o71A3S3nyyVTWWKIjs9xWTIwsrkvUGmzglqEcsYa213UiSdxkgZjwBNL9y7Fu4QM
	 f+ZI8P63JXAIwSwsPepL9jtcFBpro3r6jSnFyEDMshssk+QUY5bVztYSMF9ERf3Ixr
	 4MwBgXjcmOlq5mVOUBCHiadzVAOW1bKVKwcjHRV9QNDXQmVHI/SjTG8nzZdYj4OvWI
	 JWOf4GSbv9DeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA39BC88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922403368.2965.808871934028372699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a022305d44eb1d2acc02ae8a33642237d447d665ea2d0abaa6f89faad2484624
Date: Sat, 12 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789224033
