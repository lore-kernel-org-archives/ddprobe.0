Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA1646B8
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750474794; cv=none; b=lMgyQ4FMWesHaSufjhdlyHduyCkXaxILm/QRqWVuM4u0ajQDA8JJJYAKgZ55kcpVzkI699btNdrMXjfGqOyX6WWFJ5k0rTIqnwQN4xxE4wPwPOrMuibcszWPJpOeVkWk88DjuhUDbPljjia5kk9XJVSON13LgTJahdaacSJCsXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750474794; c=relaxed/simple;
	bh=NkkxavbUrbTRXjhwTSGzh4SxgT70Op5dCoOz9Y0A3+A=;
	h=To:Subject:From:Message-Id:Date; b=NA5bEI4tOMsQ6NQdWuqzXj6HXVSXmOcm7oeT4SuU2A2eGLIwooFZwtBbgVN0Iml1UhnVKMQcOWH5DEffQ+8YXhI6sZGEVeLgzQFla1dyOD6gLQrjga8/nCLZoCe2v1H5MYYsMsSgTx37UWTZVS8lERlmVQS2neCM3/o+SOSKuME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoSMSwWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoSMSwWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27F5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750474793;
	bh=NkkxavbUrbTRXjhwTSGzh4SxgT70Op5dCoOz9Y0A3+A=;
	h=To:Subject:From:Date:From;
	b=hoSMSwWSxD14OJpF6cEOHx/OZgDXqDONr6dgsyWcaHeTvcFB0afsiiRtbAxe1h2cP
	 eftOmpYcGxXjTwZhKHLbYlGUH8COQU2uA+a7PKub1gc0I6i9ph3lDqBl27qfn327J9
	 F/yQwSnG0kB2acQqgOhLrStIE0UE9LorD6IWno3sbXkj44ikjNybSb4nUcBifz9P13
	 nWg+1Og/3DOxFLlXoaHJOWGwCUCIXmoHBqx04233OqpL4Usg9CsBIBfjIu/WzduSUp
	 yeEaDAHUiyM/mdn1msmrS2Rr1E2LW7PwKInoypg7AVf1KexcXiHYdOq5KankGUzMzT
	 bC+ed2KwFEZdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA9C7115B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047479357.7932.14597895080615241524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d37ca7048f772a7c18d7e91d83e497ebd011a6600a19831398b14bfa41606d0
Date: Sat, 21 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750474793
