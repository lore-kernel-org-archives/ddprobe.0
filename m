Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08040B641
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725893154; cv=none; b=lnydZzwKU7+HSahNiAukODa+Kd/P436PcZZK6SgO0eSCLQ4DU8kMliG/1XVCpxUFVWWMaf4Gh+0SKTSaFmHt5w+LUHHAV/+uy/kD9ykhgqcgoTGYfjasNr5Tv1whpSzsnTLP1wRfWp0Q7+VGAHJWB+M9xeIizoB97aWyTAnr7kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725893154; c=relaxed/simple;
	bh=tE9RcCq8I302Qb/rC9n7OEJu2lkNUbobvIrXRLxWUH0=;
	h=To:Subject:From:Message-Id:Date; b=RCIlJFef2OnjcbMQxcLONPhM2vGrFwQBvruibT6ALkh/p4faGJZqSuX4EPa1EfI6gnAvCHuxF5fHQrkhx9wXKzh/UPuwPnjx/wA2+AD5/mQm7DhTu/9y+WJD5sHBdc1VZYQLspPyQE/4DKxsNnA1UItcvZDLOeCM28lv+9J8j4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMy0vLwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMy0vLwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C5EC4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725893153;
	bh=tE9RcCq8I302Qb/rC9n7OEJu2lkNUbobvIrXRLxWUH0=;
	h=To:Subject:From:Date:From;
	b=gMy0vLwMl7hsJwxFci1sWEyNB4bFlpWJ7aO6gCCRioX2eREeNxGrNsI00N348lCtX
	 EQ+eiQKiIg+TgUjOT3gz5V+N13jmAzB1Gd1kRqSWUurNtFEZVxMCQHJVR6jJ9cRR/G
	 HGvwKVeOy8kYCAIe0/pXJLdG2qWHkoZ58TXyhrjNK+Gbpqp2xgMTSOTKoijjLAsYYo
	 n5XNqKO4b/NS98/S1Z/acYYkuecR9p3W/fsl30cgFHb5ePIQgWqSbhpzgjidvfSq0L
	 yQ072VZd3qpeb40wABRO/FEPs8M8eU/r6P9S3lRTugBVUO791PKs2rdn/10rCZSOBk
	 GS/uGCxgr7F1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FA4ECE579
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172589315360.21474.11956169547582822431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23f76cba2a4ad90d6e892423f3a349bee5f070c29078aa8ab9f767721e32780
Date: Mon, 09 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725893153
