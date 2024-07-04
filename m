Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEDA6F09C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720127723; cv=none; b=JJDbmajh4LuMFlqMq+MPuhohVZep8zpZx8ovlhgBtzGeLlaVp71l0zi+3GoFTLRZNaogSA7ogKWaiXU1M8SwGOmvCTPNZ6hJLd5x1HpG3loPSm+U8uj55f0RM4bfU+GHYdfwKL/Yai9U8RB67e4iNBmqkGJEWNID/5VJFfu1B4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720127723; c=relaxed/simple;
	bh=PkqFKUShOJYqPVA6xx7RtVMhq2JPxpgfKSxuCXC7hgQ=;
	h=To:Subject:From:Message-Id:Date; b=Dkje11o7Web99BUG3dZ606FhwIU0T4ixmM/49MwpTuMSCHW76aTVUovFu3SprXNQObx4MjBV//EnKz3TJa/LlsBacd3B6K2UkAmUyRfeej515rEZWwwLJNwaedpppDmE+O6ypOyX3QvWqIQ/3HCabmMdzfIRY9NYe0ZaICnKu9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFIYOpAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFIYOpAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6120C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720127722;
	bh=PkqFKUShOJYqPVA6xx7RtVMhq2JPxpgfKSxuCXC7hgQ=;
	h=To:Subject:From:Date:From;
	b=oFIYOpAWktdyGJTlkFQ9GWZrOFQdO94I5DUMjTIE4g+UeQNvUPeZcBgEEEIoK6bKF
	 QpmAelbcwkhPQGiEAMoQidA1YWICqcZjjIH4S7OCpAS3X/Iq1qF3o+AqRKQmKK3G/E
	 fW3uNwou76pD/ubF/TjZgpwf+MYQ5cN9ZHKmDYA/AKg8rFBxeRFrhceYh8xHy6KeLN
	 aNlvgLi3c/a0JvA5c/JCNJXEvzSw5xrVEKH0dmj2Lmihqx7tngwYg84eN14mqyuE2u
	 KyCVTaAwxKBsvy+dDT+qXsjGoAAMd5J+puopCHzhPKVwGoTLA8218ANcCsoaK4m3vR
	 4eCR2yu1QX1gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9261C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012772276.32005.16650889305596253162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc43a36db9433a9471210d16318c4fd9b3da854fced12f1c1f1b5cc558b26e75
Date: Thu, 04 Jul 2024 21:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720127722
