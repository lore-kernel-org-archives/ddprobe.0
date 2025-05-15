Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB39253358
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747333194; cv=none; b=kInMDcBaS4wOyoZmg5OZ5A7ZxrnUej/Ruxn1PptwiBwybIKtMwYv2zQjMUjpBQiQcihV22Mfe8sHEStQ84zxRlKhrykSSM6HErpgThs58Jf8fJ2L8k+YmVlLiZv0OEgf86FCz/1S2JbDtyGz51JQVkE1y7yUixBmNQiOkUNiqk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747333194; c=relaxed/simple;
	bh=/xs3ZhRBXh2iKuGXaGGIPSfTvSL0ylwVCnMiTKufjxI=;
	h=To:Subject:From:Message-Id:Date; b=TGtPS9EmQmJP829iHZtBCeihcmHZuIrmWgWARqh1NQcYaDL6T3VZekIVDLeU7I2bqWastifdU0owORqc6ts1LRVaVWYra1VSWu71p8woFe13gJ7gT+IRqNFv7kzJJror+/uKo25OPbSd5Bnt98xS9jYbGvWSRtt76jW8Fsk6xK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VroK6XIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VroK6XIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEE0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747333193;
	bh=/xs3ZhRBXh2iKuGXaGGIPSfTvSL0ylwVCnMiTKufjxI=;
	h=To:Subject:From:Date:From;
	b=VroK6XIREO4nSn0iQybpailjX/2LqBh4uKD9fxAPObkjYiCbQctmgWaKAsdLdUTpl
	 1DBenJKrXQvqs9lvqKfp/zrlFOaJiX6lztBXYrOxCsdHs6y/ycjl1EZf2q9k08D++1
	 dxb1Zl4cUAY4sTYAk29Hl+O4rbC4KZXZXCjqM+6C+t+ehndZKDHV+qepjgbpXm12rP
	 BJZk4ONnvZ8qj7LNqkhcgwbLk6Pu2p1r9yJ99bu9eDME0HV54Czlczi27ziqe8nJeo
	 2NWI8med8iU2jpGzi+xyb5InS9YhAsUAVHmVT0466U2e4NNmPxEUhT+SQtVOdhLfjF
	 7LXOK4kVqol3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90774C3ABDD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733319358.22429.10374206647265706627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca7baea9f0a74578cf22c112db9bc1698eae0341dd4b53eebaacd9f11a9e8b3
Date: Thu, 15 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747333193
