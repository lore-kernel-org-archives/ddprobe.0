Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12819279DCC
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776358054; cv=none; b=O53aOZuBltqwerfgVks+oE58G16jc0pMZPwlfHt+Wiz9wgBhpJxYkb2YLq/ziYIrpe92L/Fi6jvWNTA/QTrfCJUW6uaguM6gXauuzEK/FdQR3IqlnzdICEcwbH18EQ+nhSZxjhrqRPaGJwjg8d1qEiNsRejDIm8kgtZWJkbd6Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776358054; c=relaxed/simple;
	bh=geq0gw/o/F11Wu4U77+jdMbpmiHhEbmp6ZV5/A3MVog=;
	h=To:Subject:From:Message-Id:Date; b=B2i1haB15E+PyOz2rdOzhQAoPLeU7VOOl9tB618hRJBJZQh1adLPV2uDLxfmx6WlgcPcEhjC5EeRWRyEpw6iV6F/SqBcZpi6Qn9c5SjuwasIo5mJeO8S/cn6+a1rIfMNYF2tBhxLbwVJ0bcLA/NEvsGKYPTqUudYlLogj9tEZ0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQotgGo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQotgGo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B817FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776358053;
	bh=geq0gw/o/F11Wu4U77+jdMbpmiHhEbmp6ZV5/A3MVog=;
	h=To:Subject:From:Date:From;
	b=WQotgGo3kQl0LowBFfu6yO2zear4lJoFTKJWer1/NqAsWvRmH6koH1s0byofo4j3X
	 koVcRco5tgSc5N/q6dmVpwlwTajihOECKU93oYVxDXl7CRviQaWQIRQ3qfLlnZtm4G
	 HAIuZ3wJaao7WpyeCdcib/dwYdNQooYQu1NP+7Tka15Bn167NFgJ1nfTlhDWDF7g36
	 HwcCVmAkOLUlAEDm7YRitpnAEVwaP00RiGp0/Inh+FIDG2pcV44mj8T90dd2gcoQ6M
	 LbZY9Eu2TvGLvF8VB2W7uW8+U3oLjIf+zjIXEyKhDL64VWeq/1Zze1z1RvqvLjCnug
	 FjpIS9jhjm0hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D66F8D761
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635805368.29807.15075985697130462751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14f950f1f23f5213f593f0d89d036f45bd15cf7cc4508b56a3756e1a1b59e46
Date: Thu, 16 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776358053
