Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219012E36FB
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752453594; cv=none; b=ZNCR5KtXt11+BSOgNuCNNoQo3yMKNAHhzYIBHBGNZavPUrK9Vs4OwUiiNOcNTRhBPQSWLqc4JKIY1GZxONgfdpd29LGyl0QxsjSt+kxKgEy+W219G0D0bBtmwBdWjQ6kpZIxwDnkDYSQR42TqbsBoMxBl76mY8Tp56nNN+HrOZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752453594; c=relaxed/simple;
	bh=AP0MHO6JJo9l57kfR0UdRmsUUCIqIagQSARznjbW9Oo=;
	h=To:Subject:From:Message-Id:Date; b=llEW2g4rLYRZa0omRxqF5qXGUqWw6xtG5NuJ5WvbACGbxtvwA3RYteSfYl7CMpJzVk0DpEOkNNHZsCH07wmn4trOu8cOWfkndiCAhFAN2z8Q/JW/NyzgIrmUkfKTQnI1QIqIsphmqD/uYHnmMt8xul+d+OTxZLg3q9s93LMO2S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puPPy7HJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puPPy7HJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97D08C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752453593;
	bh=AP0MHO6JJo9l57kfR0UdRmsUUCIqIagQSARznjbW9Oo=;
	h=To:Subject:From:Date:From;
	b=puPPy7HJ+Y87PZh9N+FuWuqFBrrObWmoRQPLhAUdVrDvmR5UClpa7ZN2RcjTanqiz
	 ySpkVEccCuJfyJURJ28oA4/BZlFII9x+aR/P3nqY7bIiuxcHsShujqkBI7MkT5wug9
	 ZuimtEirBYfqTvq3kPgCkQvdI8dBtQTpKiB991zQYZqhW987OtUFogoxO/rzDpvjFm
	 4pdnTxk/a2mkfUVVELvaaK2yRxRTIo4JNnr6qUOai/R/FzuYaicHdCDEzxQ1HA5Cur
	 +3gyLKZWczA9HY9E/OB1SZAv6F6CRndeRfauPeWSxrdZ5ejY9lEhgTS4t9xa5emygj
	 7N+wvhLECJbug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF2FC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245359357.27834.6435167453582256839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3014df523b1f91c57a9bbacec3ffcb6a325953e3cd4fe1b1e3e4ae4829bf4f4
Date: Mon, 14 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752453593
