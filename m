Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C86A1C84CB
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751742594; cv=none; b=cW00uKrjFP32l4hYNeZaaMPQ9jCXa/8EUFx+taEJ/GyOJir2EFfhInSZ0oOkmaGxcuYxPj/mRPgCvhjqJ1d5uiuzYnX9M/bT5y+DD/VEsYgA0cpS5t/J+JsMYksjIw8oOLEPw5AeuHdjtyF+l2ZnqIBuZRdTuDZH6mkWQi6KsCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751742594; c=relaxed/simple;
	bh=TuAxetEuZgWa47V7oSyvdIrLvuuEQsr1TenGVp5mcm0=;
	h=To:Subject:From:Message-Id:Date; b=oXPOqG3a1U6VncEXmw+H0C1LhF5h9n5xTqj7wd7C1DRfeYFaMd6op9fDhcWXS7ELmyqUXBn2hvZqtvVPSFZLZJY9oyLb6GHyWzUK6OrFt0Hw9DVdRmskPzLnqEW0wSA9AM4NbXcAXZtN9G5zqdObKSZ/N5N7Olp0PCjhHHPG/Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEAy7I3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEAy7I3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC1BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751742593;
	bh=TuAxetEuZgWa47V7oSyvdIrLvuuEQsr1TenGVp5mcm0=;
	h=To:Subject:From:Date:From;
	b=IEAy7I3++y//CPGIHy/Zmwl0evP1nFyUpLqYGqfb6e1QlRZ7ojtNfIJwTDi8tbUqD
	 rK+vxP85MtMfKunqkK/luUsZ84LksGk40P2n/jqVlXPUsydbJkCeWRcDg0Ow9Ow8qi
	 pNNI0kvU/6sHk88D2XpZcaM5l8gpreMUsVGu7r4RdVJU8ormyRCvl/31Ffc5wtY4k1
	 Ohhs3J/ycrKLxe/RsNVEto0koahVuX9IuUQEhx+gcclzZ+uUgYU3RHVfzdU/1xdOaA
	 0jhMUPL0whLViAj1N112Cg1pWaQsE4npSvF3B4WDWZAhykko9N+pRlmxtVyPiQ+Y8r
	 sI46xFHNe+m7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB8FC83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174259357.31439.16137400269522091344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbcad72fe03a01de57623beaaad1b6f2bd3ed7aff9c13d75c7825e0558e37cf
Date: Sat, 05 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751742593
