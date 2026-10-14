Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4561E54CF53
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791992434; cv=none; b=YCEJRXeua0sq9MDhYp4Ex6fss1wKkubizptG3g9fo1+CaINwxcUzednaicFxSu6fTnv7ibXvEflkcLHHRyfILkyGfsMdg50ues+ex9ehlTkgv9zu7VONGy7hcceupsmYt0pGScxpzxrsDIDjDQcdsd36xuGJ9d5S9FXUz001480=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791992434; c=relaxed/simple;
	bh=NU8p9YZIsFBSqdRCvAcZR713xwryUA90SZ89edgmiWM=;
	h=To:Subject:From:Message-Id:Date; b=PP+bCn+QS8nBxGgg7qeN9YosE6f0sARlc34cCyKMJUJ7UEGsVcoU4kpsnn51FAM0/Ui0kR3Rn1zYQRAkbYDrAPwc7Uqt0FKvjMlM8ukfMwWYqESDLRKZ9vxfXiniR9UCU6A/jcZUCA8gjuGXh55XK6fFE+2d4AeDViFntPfB+yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzW/MMco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzW/MMco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA7EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791992433;
	bh=NU8p9YZIsFBSqdRCvAcZR713xwryUA90SZ89edgmiWM=;
	h=To:Subject:From:Date:From;
	b=KzW/MMcoMQeKfvpRi5po5MzBUyRDSmIxw4FurhupEXsloGWM69emTNz0I2vN0TuQW
	 HAwNYIOAJBK4sEsNsfK+hQHcmuUwb4RV1UCnVbTbCgbgmQqlnjPPgiKOuIjICNu/5q
	 pC0RE6ZoMULgV7YQ7qx+qZxpqTj1bfu4GG8UAQLz3YGLuchX6eCP5Gn0Ivr6WhA6cl
	 pzuWgA0SolecAM86pMzEhwmGU97Hb20g8otXmSONzqGsJZysqa7OnCSCQ9IFnpWeLH
	 okwRbIzH5a5x9kcXnUMSunPDj7ip8wgMqaAVHI2eRtfR0O1o4Zegw+2N98qeu+cpFy
	 EUybwyPW3Qh8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4688CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199243372.20735.8885557186041507315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1094d4d8f92ef9b070b398420034e07c793f857d7ad992563108dc2a55288fa8
Date: Wed, 14 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791992433
