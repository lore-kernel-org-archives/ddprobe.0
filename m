Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C55E38DD6
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722546954; cv=none; b=kPQgUsAK9iE8Nnnx6mdt0Qc5/8Ih+4pXjQhQ2GdBoVQv1lSodSSWxNrZv/9yDFu03W1QzZ1MyzMeY6pNg1HTY2zbc5YxvzVtsajoI8dQ/RwYaJE2owwuIHe3svqrrP/lysqXjRlXlD+b8jvzXWjzEalgsDWpFXkhdALScs+/6PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722546954; c=relaxed/simple;
	bh=k2DnPcpafRe8KUO5TEEdwKKAHpoD9r6yiAwySVRNbiQ=;
	h=To:Subject:From:Message-Id:Date; b=XePlCQZyLf57BVLzC3ZfdNQIUqp3BIhzdympagC3QR2hPtESkPGQ9Ni58q3IP39etcomZxd2PDRreuyjQS7frfrIVY/mxwAUPG1HEh6U3g/ZTB1+HVVw7o5uAZkAK022oROwLfxZSMa1ILvmO9Hv708ZwW8GdUnor5xSIlLgUuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X19wfUty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X19wfUty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4507C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722546953;
	bh=k2DnPcpafRe8KUO5TEEdwKKAHpoD9r6yiAwySVRNbiQ=;
	h=To:Subject:From:Date:From;
	b=X19wfUtyRrvuOO9brmZOAvTTQRxdlkiitPCVCjKAx88g21cuSe0fKZNEeQVbD6FFD
	 0QExmN+VGFRjAWTcMV76c21bYqZe9rKD7HFBUvZq6Bc+ujDkHZO8ptqCcbOryysPH0
	 WFLDa5kqcI7qAM5D5FMzOshNo2kZ5pyYMTEXHwwmKA6mN76iJC48ieBecCB4GDkl+H
	 IYd1AUPg7qkcz0a4LOQBjAk30EvrlUt0aWu7CrNTCTq1CfHbRkBGk0r0OXSJUvgJTW
	 Zosvfdpz+8ucl7SfFAhkryZynxz08WfYn+ibHcCgF5lHuZpNNSTwzK41clFlIWdxsu
	 8D5kGTLfH/KiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D56C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172254695361.30360.8530746675125770338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f0743432506d037b02ee1430d46394181532bbc0973340a0f1f7717cfd49c7
Date: Thu, 01 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722546953
