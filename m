Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA521A9FBD
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782547714; cv=none; b=K6mKFr/Qyzavg5sQyL3M13kKvpSwvoZ3KdjvkQo6MiYB0YhU9OU6G6cR+3Ar1lf9ePkmYFesspEsymrI0ijG0qmy7xKJtm8lGQrFDnsbs20H6faE2xHmrZjs97EGQXnDzlh8aGYLXhTthU9rwmCYVkYG2ctgZ1iAh1XV+T8uWgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782547714; c=relaxed/simple;
	bh=xE71GwV82FjNXOfJ8SEcj3gaNMxjjtZi+aJEiwZOwHM=;
	h=To:Subject:From:Message-Id:Date; b=AfQNqhuruyZ0LEUKDGPZ7K61rTEvV2DRLaP73hD0nGLMmPkdp4juQ223Y9X/FN8NUjaw424eGHslymryx6l/P6KRYL3rq8ZSxwEsagLH0OpXtdT61DlZU0RV6y1HsX4xsZVvDbDhMi8VnLM8IxbvHtbnp73j9A8oOKADcpEow48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lur+sYwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lur+sYwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D367CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782547713;
	bh=xE71GwV82FjNXOfJ8SEcj3gaNMxjjtZi+aJEiwZOwHM=;
	h=To:Subject:From:Date:From;
	b=Lur+sYweBnwEIHH03wnqv0Iw5rOzR6daObeqkNpw0J4nU2oEysn1hrFOfsKdsRK7b
	 O3JBVfLnD5ADuQFDA9q9g6rhBXhxRoA94Crry+V3e4rrLT6OccvQzk3ZU/CXQ3+4LC
	 pA54jB3rAuSA5kZMQLCBHiCLGI8IDbFBsHX651fCBus0/aVKFGpal8YDkHyvvp2U/L
	 kIJLqLPD/xk10NJ7lcx7q8/euSS4gMZioAyO07MH3X2IUNpiKpSgs9xNLRaxck+uwE
	 HwoBBqvWUC4AOYZwUNPXZfSvlaMe1+aQim/UozEijiLYPrRq14k9/Ff6KNif29+8gC
	 Hv0iiAqmUKlUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D6DC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254771371.18216.8520157871847413163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f66c66569f6f4626b980df319a3d63094fe8ac2131a3572fec48726783daf77
Date: Sat, 27 Jun 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782547713
