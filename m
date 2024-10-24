Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33343218D61
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729811154; cv=none; b=GAKzQvCMKI0ywHY2/zV/KX5NZEnarXJEWuxfQF9UWX86W7yjkGT0dpOVD8/2jezR+kr30IvWQhfRkYnH9DbbeJqgARM9cMyvCW1Vlt3gd35ioGQEVxvfkVAIke8Rq8PU+jpSkju48hOaj8Zb2m8NUBEOr9T5zQJ4fonaIL/Rk/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729811154; c=relaxed/simple;
	bh=kZRM+5SM+4vVFVi6dhgw15Qz3hPSaHK+4XnBPSiC0F4=;
	h=To:Subject:From:Message-Id:Date; b=kd3SKS4CoMtr0xUIxv4qsHJNm0Iv0qxdgufxXQEFDlRib4Pv1dfjzb+Bre6XatWLSm4gtmijG6su/mJoknPxehHBQjGYrWRjG5m0ckzDL2eDhgA/htR0N9L1hMhoS1/tcDWwMqxWnD/vK/WGtK6jbMLk2AlIpJ5JHC4SeDRmjCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzMkaDvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzMkaDvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF4BC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729811153;
	bh=kZRM+5SM+4vVFVi6dhgw15Qz3hPSaHK+4XnBPSiC0F4=;
	h=To:Subject:From:Date:From;
	b=CzMkaDvE5R1EcEtTDcANx02DPHicSxxa2sL3Qew1r/E1LndawLuTln/l39EoZsd7P
	 P8JNo/IPKXElhLwvxw53NIQYtx4XizRZmI/0BvTtnoUNy7yyTJAZVJqRJPhFuXZZyO
	 Ut4wAvVnVvpuZiq2PuL0TSjehFwxhL+vlehWm7eUzP5aAh28I2iN2QdS2TBrskUOw2
	 M/xgSj2PKR9ea5kD5w2Y9LKNTWftmdMbFN2VJ6ijLcdQXGwA7aHb/LyDjk5LRZtx4N
	 s5L5echvUzQFyJVM4cuWbIa4ntkLev3OGPf9gF0FQkazSJYUh7cy2qX2KgMH8D6KBY
	 LLAR1H6+yRNNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A040D1038E
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172981115361.27080.7443564277989721430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921db7dff7768a8c200c51b2e3fe70ce025af14755c0417b715d4773e4066efb
Date: Thu, 24 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729811153
