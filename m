Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDCA34A3DA
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763548315; cv=none; b=IiNl7R/UpT7APbbWzt1xQwW1PibM+n+JI6kHJT+AogbYGjuPAGNVI55DfaDg49hGiayGcVYqVhgJZTurr+Q06XQx84GC5PE1/wqRamwm2K1UBAMgNUslgsXW2nUhPH2wIVEGXge1vRKcOf+dhWfx4gXXYfYj4fsfsFkZbH1YGBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763548315; c=relaxed/simple;
	bh=wH3z55Bu5lK1ek6oZGgKydzZYudKK6v6VqTXnqKnTy0=;
	h=To:Subject:From:Message-Id:Date; b=iUaHv4DXbWyPpOY178edxHEVz6DNZLe6gOpI6CM8jPB3hplHsifCKpO9upcb0EVtXH35o3UrDqnMoNAQX0uHdZFx3fDg3U5IFlIMShpE8sTbOj5qtCfR3wfDVRR49XV6NQBdQshxzdF0x4YQFK9E5ycVWi9D1khj5GePdyum79o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIOmuMch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIOmuMch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA898C19421
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763548313;
	bh=wH3z55Bu5lK1ek6oZGgKydzZYudKK6v6VqTXnqKnTy0=;
	h=To:Subject:From:Date:From;
	b=VIOmuMchNF2P+pSEzxo4CX1kqxLQs6VvqyO5XKDYAE5f2uLq91nr0Kb5jGuc8inms
	 DLfMxChY5Ccun7uu0VgQ5CfjNqZbGSmgj+Awe3oF5d41dQ2a0QEbrUJbL7N2vAwbsk
	 DeNTEFuFA1/UyIefGJBUTT17P48Mlrqose9k7n+j5wsLbVl8gdR4H7raZxMHgwu5fM
	 S6HGuOOOZzpfi8uz1VpcTTnT0VUpkZ5ST0u/hBh8u3ToOK3RzTFa/1hJLsx/AOAYq0
	 xrQCwUUI+9CnGZI7ka/48XutGJeK4AH0WEkDIZJDZlXm1D9RXUlR12FYMxlxsNSSM5
	 cvl6aizFD9SiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933DECF3185
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354831359.11029.15623137572138958348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c643408968cff29ea14088044a8d090d464dc5194ec39789ed3c2d8baaea48
Date: Wed, 19 Nov 2025 10:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763548313
