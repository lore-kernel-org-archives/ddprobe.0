Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CAE2F56
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735100754; cv=none; b=Y6uEoaesBxbtvGeoIT2n/sWp0iOG5wgKW7HtUnlzxTovxPdVx+xw458UuIOuVfdfT5mWwMbmG0UrEw+yOtO9KgfacTt01TZLGEvMWziXMvUA7DBhIbRq2geEAHgEiT9B33hidFdH41xUpNdyQVzfkevPZLXr9zxEnWYtRjfaCRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735100754; c=relaxed/simple;
	bh=1IxuLg/OexaSZ4kZLko7SSxdy2liNqinhF5Fijx1j5Q=;
	h=To:Subject:From:Message-Id:Date; b=d8bOgQcoJE/YGYTHCJoQwRQ4XH1Whr4afbghpdQOZ+7TorSlFchjA3UeUmoDvPItExdC/Hubbeg+m+Q2Podkyxx73LsWqyjt5Fn1b/1DidonuX+lglobZlug62PovRETbHg4+DSYoI9ONBuAKHe0w1j2RB6Cgyst2a6xGRmT4fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7YAtclU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7YAtclU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1A0C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735100753;
	bh=1IxuLg/OexaSZ4kZLko7SSxdy2liNqinhF5Fijx1j5Q=;
	h=To:Subject:From:Date:From;
	b=g7YAtclULlqdVu4wlGQVlFQKDT+gpQhjnOEt3dkdZNk2HxMvH8PI/5sD0AygAWe/q
	 2/GRpECg/i8GGnLmTPqrbWIkFhazhbCPdyK3R2efh/NkKOuO1i3Z3P7tb8YfveoxAB
	 ZEVVAHEkBy1wqli+iBSLRTJ6JLLQWG+qkRLYbho32h7/VO0Pw/TxQUS1uko50AZRxo
	 KdDzcttsWFZPsUbgAQ0ht1po8jWVPsw7O0MPfNqATf7UGkmxc1ObcbBALBbLorGoND
	 rbxy6TiWiFcKvMM3U7c4m8Hkc+9uQ/yNjlPgTfopqZHcS6auILIoQTfbo5mXEpY4p9
	 wmdDeiPAROw5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A719EE7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173510075363.3769.17311216116970378654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b80ea66aca0fd535263edea510497db078c7aa8eaed25d9636632ef5dcd6414
Date: Wed, 25 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735100753
