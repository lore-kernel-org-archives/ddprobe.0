Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF1E1C3318
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727786754; cv=none; b=q6bSGSzo9UcNk5AMa1kh6wca9A7Rq8dMJHaKoMAZUpZB3S83m3dd/7eEXPYcPlF8G59tKKUOCO6zfH8dR3XjQ5QXCJoI7UroeyezCc/u84BMzsSDeoGYVyO8ls2wD2ep5R9VY8Ryx3ZqZkoTKPUmb+070x9bkbSSPzsKRFEreFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727786754; c=relaxed/simple;
	bh=+7GicWSMkAJd1gmvCkw8Om8hVAKI2V070oKymzIsI5Y=;
	h=To:Subject:From:Message-Id:Date; b=BODuls10YDuIxX2Bvg8nUEXsVIKHYElnzmGcL3wArqiwOhOd6e3f1Z74ptKHWlkzwrBk98XJ0HC2H2VUUybHrs98v0ds5zLJMmqNPvQRBnhy7H0Gdg/PkQnhlWWfksWmY0NlnMIMMRh1SBlM+QMS3l3H9LN/TEudoRwV6XAeia0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZ2NOUCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZ2NOUCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B377FC4CECD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727786753;
	bh=+7GicWSMkAJd1gmvCkw8Om8hVAKI2V070oKymzIsI5Y=;
	h=To:Subject:From:Date:From;
	b=mZ2NOUCxOSmYEwYGiALt+5vWs1vKPAUUAb6f6h+o+jLaEu8MQKwTcky5Nqf7nNl3h
	 /Og3MoSp8VN0HXjlcwZ03P++KCBnT0+HVIxX84S3oMge79u368zWafFq2Ke2Fv3GIo
	 PmEdATVmSAHNiEXE5YwDKp3wAMPvTPALl6d4BCW7Y+kh0YZUUlTLW/wqdGN7cetGNu
	 xAbQjnxnyuxXh1/RIw0YZ5CD6aNsoby9O0HElurMnO/8bnEYqrxbAkDEnJ55Zwlj1z
	 pkzBYKCtF4qwt36WrkZOYHs2P0BjuBL245YrSGpQiYd12BqGUfjdeC44/dMzTW/weR
	 yRLFfDFPASoag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C57CCE7D1B
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172778675363.24312.2701802887466822309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ad78cb2382ff37d0faa7ebb3e6e10d565fcf11d661a594a8d4c8d8fa057d08
Date: Tue, 01 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727786753
