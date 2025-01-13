Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3986CC8F0
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736730954; cv=none; b=Tnauqih5Slg5xXr5ledkRszER3Yd/p2VAdyvpBubcTenzRlYqA6YESJzdXY1lae9mGb9A5oOm4D94kieIzR74QBSaSGaLMj7YJEuxaT+pGpNb0u2opJ3YxIe0KRVCeADk1weBf3ymXy/JrWCGTCyFvY9WrSwOrlMPDdEgk6IVcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736730954; c=relaxed/simple;
	bh=KR45rYd+L2nh8HexwCSiRPRCMceQfC1ngxKIiMUZ9Tw=;
	h=To:Subject:From:Message-Id:Date; b=eFYNOpchfsiM74jr/plZC7V2q5FxbeyaoqHVY0qy/X2rMtyf82urAqLQ7+vBkYa8klTAN00WYAvxfgyiAmN4bPHpjY7HSD0ddXYUm7dGuvMAhwH6gdAnfy6CwWpwVss2X3scQHZAnaS41xDzFfNg50VIdJC6iso5rBNjlgEbLBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRztZbVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRztZbVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD577C4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736730953;
	bh=KR45rYd+L2nh8HexwCSiRPRCMceQfC1ngxKIiMUZ9Tw=;
	h=To:Subject:From:Date:From;
	b=RRztZbVe05Fj8x92SBUzoPl4tdipOzN/5z/4uoghMGtDwY/iWs57o67ydRPNx9Yh1
	 oQA/r2wJ3NB72w2nrCDYnQFmMSi/Ny2BObO1XbTtDCpOyP6Upven1bFcGY41zveANC
	 L4oD9rZWKF3z8oLkrOpu7GubQ2U4+ATVIZ2L8m251BFAU2J6r3Xb7tROJDrn5XiwES
	 lFJkITjUdJe9P3kWBAU6Nz8WYGPAEYcOjuBoIWwD2l6bjZ0NKs7EgkyKOAwdBusJEr
	 4JHYKGqteVgLHff8YrGdbXrhshsQpRGOQKNgltcOvixMJhH+KE5yfbVnDXE4McHT6R
	 MSnxauSH9hruQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98393E77188
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173673095359.29043.10594699822642602802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a2c6249e0ad4d9706e5f1513e6bf33fd3813fc0ec4457dcb8b56d93cbbefb1
Date: Mon, 13 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736730953
