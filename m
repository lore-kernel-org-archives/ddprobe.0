Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C34E2F5472
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765353774; cv=none; b=AK2b0TXyMeA5EGehNOv8BB9ep/mC72Mjb6MUuk1+k7vUW3KG1RzTJL3wBiZ6ck/Bs2c6W3J2gg1II7wBW/IKZRfNNmjOYWPqSVQkOBQV837AgX20M0Byo+QFbOkVCImFnbGAF6EX8d4Q7Ew+3TzwpUDgVr2hAdv8IogMKvP9QnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765353774; c=relaxed/simple;
	bh=BAsQUzNPRi22rmn25QOBGlm99HLe+LHriddx3ZNklYA=;
	h=To:Subject:From:Message-Id:Date; b=csOucddSdmN8eoJlO2rAUBPzP2xGcQL5CNmzc5ehQTC1qKHCiWZkbJuwWNp+RB+JpQROQj9YMVWlymDEKiCspr0cpeLyoFyl6B65FsX6sytxvYinRRu0q8cY0h0UAboAnskZZjwNq4Nf6mpjVyYZv6V2i6jE+xM3Xs1rx5MnArQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLUBlcRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLUBlcRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765353773;
	bh=BAsQUzNPRi22rmn25QOBGlm99HLe+LHriddx3ZNklYA=;
	h=To:Subject:From:Date:From;
	b=DLUBlcRj8JvE/4Ju/M2VF9zDxNNRyYRszjDkPERoJ4pjdfjKiDjZEb7F6/qSMuOqG
	 iDztDJGpQaiaV0Yn/Eo/MmtWRsaUMTg0sJwQtsu1qT9dBcA3vi+42bljkwUyt1W0Fp
	 KbtNFpiQbTsDBDTWNyFxWq29LTOBCfCQVpW8uPUJ7TW5gTxdzp3wVbRuC01plPo7YM
	 DRaCAZCzElSMUGZEgjoOoxkQg79DYnyri+fer+D736x4L/EAWohSaTHWYIxqSQeXxn
	 3BW2vHitUuMfsttpyqUkC4lB5Ne9WkKkXszSUHhPX71lZVvTfbg1sJQ7PXhr8p1fxA
	 ImG//9bnFjEUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FBDD2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535377359.4171.6165616860481507619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6cfb4af5a7eefe21d07a5f7f4685c66317f35d98a0c4914e58051ae1686a514
Date: Wed, 10 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765353773
