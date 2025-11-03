Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C267320CB5
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762195794; cv=none; b=HQXjlEnOJi8H98kjzMd0hg3hGePbJ5C1TdNQnbBPQ+7kDwZVn46v6ea0sMcrI1LUHt3f/3DHsynmG2l8ijf7nw/2xo226GnQ7msit+I30MRHyzLzdQ6CRCG3EOkQe7cE/s9b54zq9hk6MajlWAwrYcIVOAChEYRY5iszQm+f4aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762195794; c=relaxed/simple;
	bh=9nOCl3oCJ0c5v6Ivhy4V5/W8edZTX4FqEXNfrhlvc5k=;
	h=To:Subject:From:Message-Id:Date; b=PkzhZrABuaS//z6J66VlVSRrgUBpvTbkBdUk/gQF5Cio882SYdtpwvz/prUSjPpqTYK5MlU2/Mt97OXZM8XVGh8iQjTT0tCfLgD8hd7WiU4ZSWLD2hg+zaV5YIhWWla8Ax5xAK/IFDem1iGlMuMkaqn6jeju8CMyjqlJFLgoL0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nl5HJLoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nl5HJLoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE64C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762195793;
	bh=9nOCl3oCJ0c5v6Ivhy4V5/W8edZTX4FqEXNfrhlvc5k=;
	h=To:Subject:From:Date:From;
	b=nl5HJLohBZtFkHZ9tLDQJf2if4Zk769ulzwUBUOQp6ouOIvVhpUONrIS/FwiTp+s/
	 5kqpiY3KTfoPye73RLOLO+98AFs5Nm/6lgHzQy+unPzhgvs0/Oyi2K6JcaMMSErHGL
	 fde8N94jqy7pYhgmJ0lmqVsagW3+Owk84BnNnPb3VeH7XV6e7qmlIPcru/pEuOmp6s
	 heL7h+UMYjZn7F/JOiPChneHC8l9O1R9goS95Rr8JeJ1j8ASR3OFZgDRjhZzv9KA/6
	 dmN2HugJaboESo3HpWCmrbXgbYyZmDAF/QnnUpZc+eQtwiFqLArTbAWhsnspTrTssC
	 tVGsPP1mF0LwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B607CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219579362.10252.13471497267900464189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98e7513d097bee469b4d1c4be6ce6010070a876d7d4901afdb8c26054c2134b
Date: Mon, 03 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762195793
