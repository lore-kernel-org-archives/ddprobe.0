Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCE227875C
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756854594; cv=none; b=i2A3Kp3fqDgVVwG+BEkUV4u0NLBJ6DtawTamoZWs21H/h29z4Onz0vkYuQU1Y0uXwgDWN52lyegeUwa+x72teL2Z8Awt3GKEg2aUD4KhA1XxsWIzP8KC2Q7YsYVfFn7UBfbUX4Yg7S3Bp61zoxhLQSAhkxjzGo1Vp3y434oPADw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756854594; c=relaxed/simple;
	bh=Vlu/2HPm7bDh50pAeL8YlO7DzJAye6DNovW9/82zNUU=;
	h=To:Subject:From:Message-Id:Date; b=HOuS3xi5eViY2NVdXQ/Al4dpUr5d+GMwKGixbd5pUxaOd/e1FwAyDWcH1KYCVMHURdo5yaESXQJ375Jqe6AYYXocTVYuWpVzblschU6ob80Nt1Z36mTMa71jDMsvcSMRr7+1CPilfF6TcnqfAurQG27DJVQaV6/9TdM5F9bXO0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alNxfApg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alNxfApg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26B8C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756854593;
	bh=Vlu/2HPm7bDh50pAeL8YlO7DzJAye6DNovW9/82zNUU=;
	h=To:Subject:From:Date:From;
	b=alNxfApgOKSvlJtM+kG9NgaTK7SAl0OuuCDmXv5xmNRnkmmyciaOfgUGvr0qb/hXR
	 nHblBd9r0UXWGZYFkHeb1eLUtza14ZZVsSlqmsBJqqPvxlehjv4OdTU98ulMEhtdPp
	 lG6rtTE91wtKa6EK93ctQ6bmfQCc9fv6qd5y7pBkVQirq+gWiugWRucAr87W0ZjiPM
	 xlPvPvy8jOhyxLu0oi1TGq9tBk58a6mUbyvN1lCirCoS//2KScySmhL8RXE1vYDhn/
	 lOIEWN7gjpDJKNpvxBq8p3YBXSlISxbtCUs6ijSC2D6XP00uc+uESPq85nOu8tVjEE
	 BLCbqlpvJSejw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CACA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685459357.13877.12831965138122324199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5bcd88c2ca2525ba499c9a6ad48d276330a1229258e25319bb48962b057c008
Date: Tue, 02 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756854593
