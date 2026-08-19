Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA393C1087
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787154034; cv=none; b=HMoWXG3I3KbgWbZNJ1PUALvsig1N8A+3XWj+0KtykAoF8qbs8rQPY8M523HShfLF414bRT8E3XIBFZm23eBa6IAIFCZWY9LVwmPzJ8aoNLKWXy9pOB1n+gAut6NMJKtfSIMmYpjBJ/SrI5+wVgU9CjrvAOAIIuqCuQ/zmzjNNEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787154034; c=relaxed/simple;
	bh=WMP0OuguUI0T2oXIlWT9Vxz7PmfvICUaKLktDbHqS3A=;
	h=To:Subject:From:Message-Id:Date; b=SuN9vDlWhN98djWpfrndv7BtSQTkX/iRLwztBhcg3nzfHHvOf+0TmPiP5/hxQh3BBGymjcY29kcN4EjM4K7hBozbdgQZCnDg9lGnQmhkl3p9jSlm5+cZ00TSOEwxpyFsq0mYrmBpg27x/phKTlqiaXHeGOsLAY71C+b/KealtXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7KuBz0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7KuBz0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89E2C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787154033;
	bh=WMP0OuguUI0T2oXIlWT9Vxz7PmfvICUaKLktDbHqS3A=;
	h=To:Subject:From:Date:From;
	b=c7KuBz0RXeRL0T/qVdRyOTr/NzscH1GOyhnd7OFSfU43hkRN8oHLPbzr4o8ifRqPh
	 2op8BgSCQWWRdZQF+wr2NpPlwnYk7Do4w/2a1fwOFLDFqCceP8SP5oFObP50dDkyrH
	 MWzHdLPf6D4l4d1cjtb127hb64I1timByKawwmgZazsMBN5oCtKB9bAvoOVPH/7clS
	 6LAqeEnLY5Y42PZGjFYzcdPUNmJH86Z9JcQVF114SbU/0FvbKZ0YHR7GIwz8vQZYp+
	 I0EyLC1FsBpGhubmA4ZJ14cggQavTWNXao8JHs7UK6dkLl5AIQmBk4kvvK3BtsbCE0
	 d34sFa6L2uPZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B160AC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715403371.15683.1628424504772879571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445e902c57b5c7d870a260c01b5c2e1513805d98238d4ca8ec4253e7b5823b48
Date: Wed, 19 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787154033
