Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D772E62B7
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764969774; cv=none; b=GQde9czXlDgnEH27PClxQ3WPWiAr0K+/hZhIBH1XA2MXThUlfLcKnaKyryRE6t2eSZZNc56R++sX3nTxzeKqYel2xD2fjGTPlqpR4hZVz1S9kzhkObog6P5mGwI2gRQMbbN7BgHNuYIddDZdRUlbqpADwtlyW2k/uojBWnB10Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764969774; c=relaxed/simple;
	bh=fWhGXJpTdsLyELtIZGW1yymswiw+amucfoD+nYn5YLI=;
	h=To:Subject:From:Message-Id:Date; b=ED7oEbQPYCEwUnbRvif2tnWhKLUEhHc9X7z64eU0E98kWpnlt62IOAYfdL1OhI4g6q+5ZxGVd3zT4IJClb1exCQiXqRGt9VS6Y9gTSlLet4ZMj9RAuyP+KRnzZZVau4NTT73zS8oT0gwMdm75zHjFvnyTHkzkyu36GfViSHCVhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnGfW37l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnGfW37l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF060C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764969773;
	bh=fWhGXJpTdsLyELtIZGW1yymswiw+amucfoD+nYn5YLI=;
	h=To:Subject:From:Date:From;
	b=hnGfW37lz4qRSgIwAwO4t0N76kkJKwyEkZZEWY8E032Kjfsm2aH1xSPTYTP/eev3e
	 ulMOizI3LdSf1kTTZl/9yGqNcY5Ax/25ohtxz6iDrEX4wdBTt4VykdXM7ek5ribNUa
	 CQkKDh8vNjg5pNoF4if797HMxcQfpEYb+gQBi/ueyZyFG5KNjheRzX5qygD/4S9J5n
	 tV+QxDeBwjNtzUh/olnFDEWG619qNehJ5nZpopk6d4Ip6ECmY8a3tPi9AZnhIHqTFE
	 YXj0vxn4aroZWBUNY7u0Awf5Jkr9XxbbPdTp/YVO3gIVJkR0uOUPdjl8+7sigFlrPM
	 z0QND4i2lkrbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A66DD374A3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496977362.24103.3050411306407426990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455f0c4cecf6ac3c9d86099e150b09d167b558d48c4346246b4b664a3b47f52b
Date: Fri, 05 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764969773
