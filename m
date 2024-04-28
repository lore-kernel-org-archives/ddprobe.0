Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2EA56B67
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714309943; cv=none; b=nL9ecIaLt9KVPU/R4/U7zqrh49sNlnKNNVaj0m8dihap3K8on6APM9v+9wrtdGGkhvATQQO5Q1obqeE3515I9pCcfvOeUrMiYXHpGF2iw5yAqnDdVDRkwjyfFEQ76MSvxumdwA0EMSPFWV/7kxIBAGnC/snWhHNqJEKf6joH4qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714309943; c=relaxed/simple;
	bh=pN72rN5iBPL2uy18dXmymPsj7GF7VsqkWT/3P5FeBLs=;
	h=To:Subject:From:Message-Id:Date; b=Dth8tqHorTu2+Zbpg2HWxD/CX4hx+A+1VuLS9e9J3ieg2C3K8z7F9bZZfuQErdnEQmvoQSUx6WSzCe9jHY+tVqL2yIsdJxVj4vCAKK3HXI5B5iAlJ2T0IIZ0ZAlmaKUuCHTs4AYFUNml1i7e1P2lwXOR/nFKwYzRVGmqiKZ5+j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYvH70nD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYvH70nD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7304C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714309942;
	bh=pN72rN5iBPL2uy18dXmymPsj7GF7VsqkWT/3P5FeBLs=;
	h=To:Subject:From:Date:From;
	b=GYvH70nDf1XSjQEs0U+YKhdtvHYKDcGl1TDO/FCT3aYduFAe0o2d/Qqy3+bB6fMT7
	 fIGery3E0nKyn5pWC6mnE/Blko6x8JyCAnX1eirR4w1xyuA4tP/I2on/Tpf+/JGX3D
	 zUTSMTtQkTwoMmrCsbJeQZO7z62s0rLpqQldwaFqP9qhkLwK4c39BANV1Rpp+1Zlom
	 vXjpaFvPQPFv7KDde0t9BhZPlavUQPYyPcreR9EzMZpo6En++588mgRC2pLaXKNKWG
	 QbjpovxarajiZoyrHjlauTt1ZDnpl0Ttv571nCi8hqoGmqwdw7/IFMTB9vYcRZRuly
	 /hLn3dPKeEZoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C235BC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171430994276.20743.10778750734420632731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a7ec6041f2faaf2e7734beefb2620833c3c5c85365189c65ebfb609ea5c3b3
Date: Sun, 28 Apr 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714309942
