Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF87178377
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726655154; cv=none; b=OSUi60amzXspk6bfMyBTXb+W05so66D7ZwTISXRAxeatucaew5fc6xye0eb4r0CExstsPY8dQDqWOdginus/7MXG5KMFNXmw3DyIcCsHi8FUcKNqY86XPiP9o7e56phUsXS8Xyn4R+YeNT2aWAxYkyqal6r5DSiw95FOoQEDL0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726655154; c=relaxed/simple;
	bh=1fMclXUMrtb3ppdpg/WNtw9xVsYXpS7KoLn4sklg7nM=;
	h=To:Subject:From:Message-Id:Date; b=YkN3ciuiwLLSpILGqKWLkZW8oXWc1zVdF41MFW16WuyGFC6rKBhUBXGbeUfGeUGbJFiP/R14bbLZbSbUhwoGck6R1o/6+hSJlCZeMirIYfzFoyAw2XuFJ3R1Eg3VKEs8AWKPk/KuHR9yR7qzkYi9QDsYF3A0v6UMgJ8lwJzvEPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N63N6qkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N63N6qkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99A2C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726655153;
	bh=1fMclXUMrtb3ppdpg/WNtw9xVsYXpS7KoLn4sklg7nM=;
	h=To:Subject:From:Date:From;
	b=N63N6qkCc3xNHp00RKMT3Kre3OUJ0+k3B/vQjvCnWFHY/uT4sxqZ4HbtUayYt2aem
	 bUWGRIiVJ2a7ThCAjiouhroWET+qSBvJO13bOXrOfNfcwnmpbmTds5EkBh4CZGV/tW
	 FqFNjYINlg4MgwaC5dAmfvKvT6dpI5czG4SWQdzjRVwIJH+iKHv1ND5BujMFYc2qtG
	 1co42eGJH4VhvtpDyyfYbuqxg7BZU/MprZloarfgqG7822XiA5dwQv7MLJZ37nul1D
	 pRZDJ5w0BMi2udus19VYwIDoSLCIaCyzZ+/qlzhmJVIDsKcWM3rk58zTSPNb2RpR1H
	 G9m+oRUACfKXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968BDCCD197
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172665515360.20259.12676053626027207667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4fd275358642a4653486d56de08838fee8be746986c01c787f7191f4ba829c
Date: Wed, 18 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726655153
