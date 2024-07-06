Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E4331758
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 10:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720260923; cv=none; b=OI0VrfYnxwRlZ5amkIZom1Z1qF4vAcq+w0UOH3f5PjmzZeFSiAVPvqszforYrV/GyJVghVDx9YXswo6a7GuhzEM+FknxoTr1MlF3CLY6XJ6AchNeR7zFiAAE3jgWjQzuNps9vSnMovafveAzXKNe291WQJy9VFePtHpfb8MGBAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720260923; c=relaxed/simple;
	bh=9vJOaY2Vn8bgTV+2nj4UvxcHUSJZq6gkxG/qCYQPFvU=;
	h=To:Subject:From:Message-Id:Date; b=vEFsERDR8SsTUnMUy9pS2se3C4AvpJyaLX0csaNwBJxk15tZfrerlAoUfPc2D9/aD3Ojb48ZrCTc2s030/YNPPqwhg9pJ2fo8p5WeyWCYTk1tBycIVX2LbjGwpYFna4Q8cpDdpfKnq/h+qpM9xyNGV+6vUPgWjZjKUjn1wGqRfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCKFspnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCKFspnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F90C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 10:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720260922;
	bh=9vJOaY2Vn8bgTV+2nj4UvxcHUSJZq6gkxG/qCYQPFvU=;
	h=To:Subject:From:Date:From;
	b=sCKFspnUGRg2bnZFixt+X8IPVV/q0i52JPSQct8poFb4vdlxxBMcoPdFUYkxOqaig
	 Tk6jq32f0YWmc/oFJhpsb5LOyF9GARXhL1xocLXh3IFNp30cz1W0FueLBZKHcR+Spo
	 TiBlzHgJbVcUw7o0QC4DgiSdKOWVwPvjCtseOTrJInsVzz4UvTSftHpVOcQsRF26e2
	 gyNi59knOqpsO0muY7VumGEZCPJvzgt37P1bfApREK90oKyvJA+SO1Kr0C1psArHsE
	 OkDxnjuEKQPu53HUYs5M9hG3+tu3Rq/UY+YFEuqia270FgqnVKievq0p59jHvHrZBc
	 VG7himKgkEmRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD973C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 10:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026092280.11293.14159027362430108687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3fe259a9fa3b2318c772b8eb0b2a77df985662960822644e1212f5679e24c7
Date: Sat, 06 Jul 2024 10:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720260922
