Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0846023EAA0
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768133034; cv=none; b=d27wTb3bbImFgDVmBedvdRAftgvN1pv38nVlOw5SexsrCnUkr7sP0qdDPv+/Pi1XtEsBPBBMVan5vg1TPIzDGX6sKmBGox7nvMKLqP9ZFIAZ/nerRjfCo4/rqoGjjN7m31zkFVVm+RJ6EZjpgj5Vy5yrkK5Yf6ryA87QihiONNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768133034; c=relaxed/simple;
	bh=AEbwqaK5Ysfx0pC/1Jl9cqapzL9ztCEaNbKrl49ZL+c=;
	h=To:Subject:From:Message-Id:Date; b=MXWS4uw1Fe7krzNKQ3tp3xyAYbb76wdKDGCGbGc/niSQYnWcor6+/ntXEMmPMnqPVQRnuzEPMBrj/gu9KcrHnkfHmasytkRsxiduQwXAUm2NbE0exC6Z1JRxIbr0hKpRPNR8hFqdWilsuAZF8QtlDnQA58Xrae7L30igf6YjwOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYojAx5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYojAx5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EABC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768133033;
	bh=AEbwqaK5Ysfx0pC/1Jl9cqapzL9ztCEaNbKrl49ZL+c=;
	h=To:Subject:From:Date:From;
	b=RYojAx5uOIq5z5kriEjL+HwgeAmwu39CSSIpdYgdrip3lTRm5mTPhCQHt7D1gZa1N
	 Ysa21OoXKbiiTSA7yiioRMta9cVd/6MeWrxE40qSwGH/XeChSnSji0ah7LTogQUsTe
	 5hBR8yfVYMNT0eL7FMZyYGZUdQrg14aZTrm4rtvhutn13OJqmz+e36chYWTAvwh6K7
	 +siRm9Z2nX/X7IyAU0RzeV4XSf/zWqOnctXR/BZdeD1iG5JmnjctIsXLsPgZQVjRc2
	 NETCGew47XmChw/az6dNvJa/nq3iQPXJ4/hfCeSne+/VRdsDESlah2+Dtjbudsyg9m
	 XUJzoPYgy62Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9900BD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813303359.19955.5030677561809573374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0adb0948df4179ff09e59b9a953b14f83f7c9525f4a65f048e1f2d23d40529e8
Date: Sun, 11 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768133033
