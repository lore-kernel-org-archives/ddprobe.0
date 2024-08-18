Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A6C138E
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723940154; cv=none; b=fv/alc/1VmRDuCsnqTSG2urtwcAX+1T1KoYjxJQcM2bDN9DDG9PQ01kTgSSv/F6VifmjUpWKH4yicR2qk/dlerqdv1pAw6yFh8Mt9qSJoyNV6Ty8uJYeH8vaa8VLxYu5L0AZFe6QD8LWaApemTAkcJ0fc87LTGz1X54Wizy/HGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723940154; c=relaxed/simple;
	bh=zhPRXaVsu7P04t1vtTvulOVN5MJ+2eBcWzYO9U5fOVA=;
	h=To:Subject:From:Message-Id:Date; b=Z/uoQVNZ+MeFPFR8d0+CJabxyXKmySHeutiTbY/XFA8ZulL3Fy/hF5oYRkfq4iohIqNlRq0TSvgXLDXAlEoYojoC4dpr07BafssWzzr69aDwaR+rGzNWFJP0HhxWIRXSmqpexylS3cIdGTd/oCkDrhp6P0JSMCUjQ5eeKutfvlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbjrcTZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbjrcTZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DB0C116B1
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723940153;
	bh=zhPRXaVsu7P04t1vtTvulOVN5MJ+2eBcWzYO9U5fOVA=;
	h=To:Subject:From:Date:From;
	b=RbjrcTZfbYbwwoWrYfvjOLj5pzh15kGEF5NencjhYox0AM5aZ97rqXBhkwtfqackP
	 ysOUC8lcqVtbpjb3TPn9FwZE/sRdS7H8rvWRsRNSp9r8SWSQC8wWl1Eo3CRsKiJJhB
	 InkBkzQBOSMphWVqSaoEXAzkpTBhIP/XQAvZyATwm/0J82+6bxPJm9tKPLN1fyddS1
	 TLA6Q8pBvQgg1ALU+a/soxetyjRIa9IvnKzPy4rxmdB83y7nUCjLEqNBiwZQ7YAl5Q
	 owmJMpRQMadW4ZeAc6MYb/s9ml+kru5AE9FdfrhhAaYUxWRkTwQpS4Ub+cavESBBVl
	 NMCwaFaxCU1ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE160C531DF
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172394015368.5404.3018826018358327167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9734cb480ee899e0a9f73f46cd36989087a0a5f0c744ab629bffc9878c19b619
Date: Sun, 18 Aug 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723940153
