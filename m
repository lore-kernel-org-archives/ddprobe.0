Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBAE169AE6
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743149394; cv=none; b=adJl/0jPo9YiWaNM9XdgefC03z+iFSe/R1ISUDrHit1YED1MNcWrDLGGV9CQt7KYdVmVS6Cc8IeSqcwjP/ZvU7t6iPKWbiz8qTncmsnjOIx9NuLTQr/g2xmuSrVCDaXrsMaV50I78HEDqoRclrgdGSXJodTJVmjKi5u6Qpd1pqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743149394; c=relaxed/simple;
	bh=AWqyzgCMRJvaT1N5jn/FDo8Fqb/JMmOGCJwaXplYyh4=;
	h=To:Subject:From:Message-Id:Date; b=F6G0n1usDmzQkCtFph3APncw7/XtXSPR0bXcSoDCrnE1avLQRYlN9gjJfs3ZsdOmVv44+itaBTUsTIUkLp4Rb+YYGFA7HxbMG7I6jQBvpYR1kecQvvjNuCIO+ccXyYsjgz7lXgpOuKr2ycFYLvJQcoDc5Xbs/ER+5z+7XQ19EJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBI//k0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBI//k0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2144C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743149393;
	bh=AWqyzgCMRJvaT1N5jn/FDo8Fqb/JMmOGCJwaXplYyh4=;
	h=To:Subject:From:Date:From;
	b=hBI//k0t08b7+OZXsTODyksJu98devTMr0fqJRUsWcFWbVGd0t1er5IsHHkM8WlCJ
	 docooxfgEzTUsl+Sze+Dgsbs9a8VdyEWEMUA1+6nNG0u/mvdkqMxHFwXGLPZwwl7Hq
	 QYup0F/1CM3WcYw+XrUhBOMQtu5vc5w9N1ywD19TbV1bMm2AvxixSndN4/KJoSpr8C
	 WCpa1DpcHV5ONW7DJrwfD7ExJp60Sx8kIg3aPLveBYc4XNk1TBthrkShYMo5xUvC0b
	 H7OpuzzjMMUQBcz0RhO7D6rlqh1brbDerNhggdTEz2jdUCikwANZDCvu80OpyrtUVP
	 W2+xR9WiTbCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BF0C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314939364.7767.2903735288463802342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 854dd923df7625a2e862c61241c82e10bf53fadcb1de3a9084cd83306aa5dfe2
Date: Fri, 28 Mar 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743149393
