Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CE7205E26
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751189394; cv=none; b=HKS9MFJ5hc7ecRb59bb7ymvN19gkfTfIbfp9apwt+sH7bmRLSTyVSlRqf3dtG8xbupENwPmaqcPkyWTH1HGilIduMSIPtj/YcQSOTnaMCKEAGjDYyVSM+Uc+1RafkcsF6x1qIOB9ZhLz3Et2N7CLO3EGkJPcDym6mtHmCGn17/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751189394; c=relaxed/simple;
	bh=+7jeFj/oKIt1vCsSsOniYHU4NThTN1/znS8SMXUKByc=;
	h=To:Subject:From:Message-Id:Date; b=XiSrYXafMucfVf9liFcIPC8gCgDdq/tBq/EdiN/4yCncUyjwp1JxQduOl/LyR21Vk+29xLVfHxULwPMLOtyNirv/QCJIYWs37VJsXcZnHSVUJ7IdADI+Kqra07BevBLOGnHONii9yZ1KIo4doUEWYB2IK9qSbYVfXNeaYN3caEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvVoYLrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvVoYLrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAB3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751189393;
	bh=+7jeFj/oKIt1vCsSsOniYHU4NThTN1/znS8SMXUKByc=;
	h=To:Subject:From:Date:From;
	b=HvVoYLrS1YOlKmTXobD9pcpoFydFoCkk5TJ/Uh77ixrLZeqxMmwdAqmjuohDPOsUi
	 GLvquNLzBcCoUW8wB/pXSMxT51PGuSRNtp+a6GOvChMNF6sjT6WJ/emRDoTcaaNDp4
	 oo6pKDGv4kNUnX4XWGhTirx6/tc3CgHqAONKplfA0QjIOyIGSbfIkFFKxFbgVh94Vj
	 cP6Fw5SduYzkWQWH+rkEfkqpCtzK37MD/9lLkZK/lxLJa0Ow5M9pC1pv71qqkiVGBm
	 mxxnGeHTcMnqkVZ14WZG2iuoOe/d67Kew+h1FaAzOydJzkl42h/G6HwpTvkNdq2Fxp
	 KfIBHToX6o8tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C4C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118939358.18056.3007114632862865105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0d7e8b633c79b6a6cfe9a335c1a624cf38fe8a5b0e2bc8bcc0aa0621398a76
Date: Sun, 29 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751189393
