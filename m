Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA503AAF71
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788814834; cv=none; b=Kh0HtwU+0Ap9KVVGE0BRYhj0gNFNOAdlpGYH1vCFkAjFdDARIFBdp6rbjAHHYrEGjen6Y4FT09U0HF4ek5VErl1olaeeuMT7XVohzzKYA3AB9NW+Y6GaMElJmrLtD1fvlutax84XNzIO/A5G991lIg5xdFg5JwNkMcXvbL4aNpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788814834; c=relaxed/simple;
	bh=vYxVViGtqrgihDw0QfW8McLbWcWywDmqJk/xBGs5xnQ=;
	h=To:Subject:From:Message-Id:Date; b=py1KmFGxzrlx1g0mGZLHbcGR7/aDPMTDIqDRIoVnalU2gF+G+QaAv9WCrpetAWU7TrVM5f2GV1g8ETSFUWJ3WUQCL0eCHLIf4Og5z8w0zdj/y2JHqh3tMo6BXcZQdJXT4VKLKR8MtggZ5t8aUJxeI/1wDqoa5a9bwGPukQLQGoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iffYCnxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iffYCnxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78EAC2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788814833;
	bh=vYxVViGtqrgihDw0QfW8McLbWcWywDmqJk/xBGs5xnQ=;
	h=To:Subject:From:Date:From;
	b=iffYCnxHzJRls/vS2Q/phWknGxN8rcGUDQYfouDEmrxU3He8T+tMA2IwJ4x8GOs+6
	 ZSl68Y7AvfMmrFlL7t3GzolR311770KqklA5l9GiS6f1XZ6/WAlp9Fzei0TA5aVDoW
	 tPBS4Tbnl/daTy339gyR2826olFNanMHvZp1mYnhb4Ycd3g6I+HFoEE5KKtm4e3sMf
	 RmszFt9sjmOPVsVsYk3mwuEK5XcdwfLkRty8QN4zQunziz6KiAylfRTBZa5u9lljBn
	 ZwDSwoGpK3KjQuU3DrxodDhzSDR9mE+a7Er0RP7HEA0cmT2Vkz3Xd3o25LHeobk2lF
	 Ef8z4l5cCtBeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E1FC79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881483373.32227.13398134888809584671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a18c3a568ceb0ca926d8b858ff488d28627967651844d36da2034e125f8d8a
Date: Mon, 07 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788814833
