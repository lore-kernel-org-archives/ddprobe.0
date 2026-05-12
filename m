Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8158F3AD51C
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778617234; cv=none; b=GeEDMlQiBlGdtTJND9hBpGN+xuw51l3nwr8bE9l5wH+1ssIa+yfaqtWbs1BCiixXEMxAOaWUUyvOQhafeCiVzozUjYjE5u4Spd7n/ogob50TtQudjpbvMlqcow6bzKu+S11PcaDwSvB67yey/MmNqc1rnP9CeKcV+kuium9j7yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778617234; c=relaxed/simple;
	bh=dLzitKOFkQIIBh/xZ8HwSlN03OKXre32xTmu5q6CLjI=;
	h=To:Subject:From:Message-Id:Date; b=a/0SjumqBUEshGWS0L+fCL2IKpIFrsltbNrd25OMbbqKaBAMnl+52lQ9EcnI+pAQqsC639LSOFX2YmBQeJF6HwP6fIr9uU9fnwgc7u0G7PUhYKlh59+Xd8vJGU/v1Aqh/oR80mb8rnvjo/7RZfG5txB/qcUWeE1JUbJCHjk3j9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zx6eGgnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zx6eGgnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C402EC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778617233;
	bh=dLzitKOFkQIIBh/xZ8HwSlN03OKXre32xTmu5q6CLjI=;
	h=To:Subject:From:Date:From;
	b=Zx6eGgncf3ZX1gmZYNjIeRgv/8dsbrdyQrrdAocihpf7KeisS6GyJ0R7i+dqEO3iy
	 e0vmviClcAH77+RylDbOo7xSic+xCA7lgmR/+vZNJHNojcYa7ad8d1wNxF9CscXnGB
	 mG5FV5slZNaMncn7VKgPa69jGRvAymXP6d+ApZCrV8xf3eRFBOBSlDfu1nyfDzLwG/
	 6epOkmTMEqt1rA//jbyQ5Ez7ZfDYoEt2v3AO8wstpLa+4Vz8X3S9J3io3Dro1/IHGI
	 8lDApYGxgMlRz7z3gBtpumcZOYeXMoELZDLhqVfc5d7LqYq2SUs6YJARRWmuCLRdO0
	 /XOnHe+MdBjig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19C7CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861723369.18721.18005149764904390665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8995e6b12152cb14130aab06db4c0606ff707fc4e7bca869a2a98e91bdccc9bf
Date: Tue, 12 May 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778617233
