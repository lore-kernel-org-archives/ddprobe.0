Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4662E145348
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770500034; cv=none; b=VH0o024/dZISpmsGuLK47zhPltF3qqvxKQUx5iB9kxaOVsjlqeZx+n7Kz1mwCblnjlg7Loo2EIE72agpVn/rP70mVcrqWdp8XJFwF28U/ehKoZewJFS7b+sfsCT1i5IdV4Adv0KrDks3OX0p8o5J+vWEjX8k5TeWjGwCBgx8E/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770500034; c=relaxed/simple;
	bh=12oARLJxBliHu8creor/RJxbMhQ5/lrMViNg0BR2bQk=;
	h=To:Subject:From:Message-Id:Date; b=bZCnF1oZHpy8Jnf7eBRcNWkJgEB7ivp5qpHBThPSksLTDai9qAgarXkNmRQTJ99dXn8/+llZ56wF0ofxSJT1vmAS1aLBp6zcse3WYjQb4qlqpRUDc5rxeg/dbqVTPa8GPsfHEr7Wyfqubc2bnHtXGKyxChoe6F8L/LiXF34SAgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUaqzSli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUaqzSli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02AEC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770500033;
	bh=12oARLJxBliHu8creor/RJxbMhQ5/lrMViNg0BR2bQk=;
	h=To:Subject:From:Date:From;
	b=MUaqzSli6AyyA9sb1rEkwUkfqgC6FstMRR09elgd6DAskJwXifPseSk/TokJThs0u
	 /yB1O0DHY39SM/WsE0ZBu3ZkZer8L1KgZO0IXrLsVw3Af+r1CiF2ZQZedMf8Sufu/P
	 gel85Blnp5jc5P1vnqK/Ec4+82Xn2hjVr/0/zgpSntOpG3GjkmHLmQxBeN+hMMaWK8
	 LejXYClm+jf7/wtgFu84MvFn3dR9N0TBQKfN6oBr/ai0rKpgyD3Zl9MUKbxvnYv8rA
	 HlJ7WIwnS9HsXEnLAQ7VhgGIFYQCsItmcMnSrt4djjttDS2Nxm7XDZNllkpXfBjyow
	 eYR5oKaSxOsLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ABFEE0AF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050003359.7135.16921237111833499627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0340f36f28e3e3153ae28bc5df5553d770559aa343dc805df8de5d04c0c2d68
Date: Sat, 07 Feb 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770500033
