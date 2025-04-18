Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37542101E6
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744946394; cv=none; b=RuwGAIV4t5L4dC59Z3H599lxyQNkM99tikf1ogGSE0x36UTwNteC84pW3iUBdC1cXRAg+ZYqrJidv4i9fvtsJ2mcm8KaOKH9RX64uUa7I/lsSdFEnX3VaNkHtd1MX/mSjyaGUM2+QJUtY9CeTrjPwKOXggg+SLk2Zr54toDrr1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744946394; c=relaxed/simple;
	bh=J/qWWBarOlUx3Chouvw/WAv3t2ZWxRtC567jM60+aus=;
	h=To:Subject:From:Message-Id:Date; b=NMG2p/jzvUkJiERmH4Vy5t1X/S6Ug1xBXrE1JrDZbMVg11umZIj+91zO1e0aeroH6Mhw449MVjzjBKnUyP9+rhQuZnmK4h2VA5n++bN+Wi32UkyJXWqQFB90mmwr0JyMKB126xYJRkjPTZ+mpi0bpLr/tKG0ilIxAklDL/nDQKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1bJ5I4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1bJ5I4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4BFC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744946393;
	bh=J/qWWBarOlUx3Chouvw/WAv3t2ZWxRtC567jM60+aus=;
	h=To:Subject:From:Date:From;
	b=P1bJ5I4ZLCf/kwgz01q0UQZdWhv/iUVbOpsP9ZzWV8Ghdko35Avl1l5D9LZfpv7VF
	 X08fZ1mKmBZIT3silnMeP5DF7hL5jUs0TUv8QOhOlBDCWZJ9Jw2G6yhi8wDk5c1hXD
	 EvdhEdApmwVufbzVs+BcLWRDGTRFHIJObIRPskNMKK1RwNcnJO4JuGmtxN58IB3aaD
	 NMmh6Q87a261Sz6ndyIH60mVl5GBSNFhw63hnjvWNL8ApdXp07fSB/UPfs2mxOVz0p
	 EWfooLhMN7WwTxPr9xHR1zF9GHyLl4vzJnxiy6oosU3O7kF4T2uKa3UblbqF8VDBqh
	 WHP3UQufG5ZEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9492BC369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174494639359.7356.17360016786769807025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742a878e906a2c86d5781d2a04844694eb069b97eedc2e02df08442b303395e0
Date: Fri, 18 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744946393
