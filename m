Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E351547E8
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725720954; cv=none; b=DGDRlFbiZDvQjPVODCHn6nziVSzjlQeLh1CJBCV4/mD4vN/JKFN/ybPkxkI/Ivyi0yiCB4uTLLWMcj0Fj0wOHXwa79h3RsVyuc59mrgrSTtgVHFRekzXL67gj2FWh/3cBBrLBy0wXrG0aZXdROb/pf3UZILpJIv9ZB0mc1OGC6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725720954; c=relaxed/simple;
	bh=n4WdR3Ia75RmM0411WZrakPkKjfrIfdgYu2ttPguwsg=;
	h=To:Subject:From:Message-Id:Date; b=VutcbssR7v4BJGVgpfeJXxMaU7x1w8amnEZcUh7shcWMS0wCpMNu2HKRJ7FzKr3TNBtxT+/5Rvss+l2AYz4AJhthGO1ROI0+I0TyY+joQCjKDdmL5MniyaI6c+Tj0A0OTx03CUq0wJ5PbQvV1hVACY6sS6tWP3arwL7iWK2JMgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8IJs6I2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8IJs6I2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46C2C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725720953;
	bh=n4WdR3Ia75RmM0411WZrakPkKjfrIfdgYu2ttPguwsg=;
	h=To:Subject:From:Date:From;
	b=P8IJs6I27sj/3qWalwr2IIavpHzDo3aFoHxKtYRHcMPxdNoM8NtkHjXCJ9Tpy2Yt4
	 eJtOscKhIRYHrdx1XtY5jXDL+agezJ1ZsD7BAZ83XPAddJSq+nj6yLS9jccgaaprRG
	 QZAIovx87vJZo0C1cfKB8Yo/s+z5jw6nOvjCD1nW3Vm3GjaBA4XgxWMK6itIJO/loM
	 p/Df/sVXfNsl7eWax1qlPF6tXYverRccyoNGscwyRFkhCrIETxzcn0ghKzc8Y9KQyN
	 NLBPiYrV2MQeCZNK5UYvm2LhSqWkP+m+D253tV4ytA9PPjdWRY8iiUv8Z1m/zBP++Q
	 /4jmYVFcBabKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DED9EB64CB
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172572095363.29433.909744789545947506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ef1f3e0a5f9dedd660dd4fcab4e054c818302c8a2021b78b5b729c7eb552e9
Date: Sat, 07 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725720953
