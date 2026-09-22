Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6276A4570C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790073034; cv=none; b=CG8K47cW+8PjSbkQwBdOBqwDR0QO+pSgrlDdYyZf8fzLBvXj1qo8CnEi3nMydmu8fAl685W49hvJWVx23VSm8Iic/V+BcycR9Qy7UjG/GMH6O74HtjpNXiqxnUpZoAdIu+AzNCHWjRj0bLufgqTUWmvAeEv+WrfKtNkKELZYzI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790073034; c=relaxed/simple;
	bh=btJP2RHgmFlK1TsVrW5SIsV9GBuLi8z37aGMsW+5SF0=;
	h=To:Subject:From:Message-Id:Date; b=GZA9WiciMslmpTuBeVnaD27qour7qiDKtcPRML1VALU+T7Q8dHxlgMnw/t4Pu572KImYTiZk0H/+BksO5GjvXTha2SlHTf36dIRrR/DQ6JNlkcRJWvU5pQG29gPIhg/Qn/E4r+KLPLLXEqte2epaYWWxpjlY2U6jeXdxPMMl3+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oG7ka7P4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oG7ka7P4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66CFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790073033;
	bh=btJP2RHgmFlK1TsVrW5SIsV9GBuLi8z37aGMsW+5SF0=;
	h=To:Subject:From:Date:From;
	b=oG7ka7P4hVaol2nQSJuBLOELoJem2lyA3TNCDNIvo4rAKWt4JY7LKLf1Tma0LVl4o
	 3G0gZXC/e5NmzoAz1E+spwbsc+4EyqsJDmBfmtcueUeszRJwpOoqj+eYDo0vfnf8GV
	 tiCIP/24NaqOk/BkbM8+eWE7cpoVxTOMLdqvZbhx7ohU7yW/Vdp77C/TgDm39XAcJV
	 iCQ2hJB1zq7RGiA9tBgZBuBSm687/vvY4zI7yaE45MHxzUoBMUjnCxbZGjL2JBcBJ5
	 Tg1CKmv69bBNxj05sTUC0+qp+N690YuN2uvIIChlXM+BHAgJ6aOVbKtmw+SCCKVkDp
	 0zdvNyixWtE5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFED0C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007303370.25717.11557997224164263972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1b3caf192d09eb0a50cd8bce5e6d4119a36081f69ddc6a39297e793dc3ec0a
Date: Tue, 22 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790073033
