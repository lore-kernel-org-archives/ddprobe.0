Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B99381AF
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736119554; cv=none; b=PpZ26LmSzMnWiKhjRlUmpIbcOlo6yWiLLAc6D6ZKRJtDiz1y12nCxjYhrLRWpMQX1TTkTVevFfpu+tTS5UQe6VegiDPCZF5jHgdpcV+duYqvwxAsAUqr4gftINT+FisAE83T2KUG7rkBSWvstgRoVjKvVCMA5GJTiMeRy+kQF/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736119554; c=relaxed/simple;
	bh=AdshPN6IOu5d+ns9SdiKramMlgSL00XTVZShhmS9YOs=;
	h=To:Subject:From:Message-Id:Date; b=NEJGIICcNZs/nemWX62nx3RHjLzMMxj5kIlYYYr5PzSXZsn3sfrayW0vDXJ1zi+cNx3930zbza9jebRBajJXJR3qWDSrHXwMVph2nmujjfic4/sGj5U7d35l9SjPQuuEG7ZsQMW3HvuTrQ3sUkLP/vBr2Vcs/v05+wqh/YwoLH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5PPkHT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5PPkHT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEF9C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736119553;
	bh=AdshPN6IOu5d+ns9SdiKramMlgSL00XTVZShhmS9YOs=;
	h=To:Subject:From:Date:From;
	b=G5PPkHT18vHNrjoer6vEBickiDe7eGf11iv+Elx5F9JB8ky4I3+hwm4qO/1zJRjVj
	 7LZvyOH1vW098rc2FBknqsS+k43O18PAfh6kWhYoVV0xgu9EuWo7kq2YSxGUyS9KTC
	 WSQIvym+3WFaWPPRU4thgo67E18RtmXOlQTWK+cOd5f90TQLhBt1cs+WsijNVPbJSj
	 G2lXLY+bkZZh2H/+eX5b5ML9cbwc52qifipw9imulUJ1ecEEUpVYnrar42XGWLCeC1
	 aWHW8S/6x6Gm87sCf0IXSdMuj3wOa9Y7N6I5IiLZnZ5Z08ro2xD5bt4rEdPFgMZ6JN
	 AFY/rmVZICxhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4A0E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611955377.14154.17424483917367715239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c86688ca49a725de27490d1bf26f7cdf9c75208691f9e7a025afc24957bebe
Date: Sun, 05 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736119553
