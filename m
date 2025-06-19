Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279123085B3
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750316994; cv=none; b=jASRVs7TR2YF+XkoGEkxmx28r3BwvTk5WwRZOvz8CvfVt7Eh8JutxB984flavC2qH0sY1R0Z9rxoPtiPoNtVPuyEQkg+duZtaqryt0Asm48r6NPAnJD7DocADcse7HUJ5sgS9+Ytz7vCQOccf/t7OSFbQVzbxC3fjzYCI6lCLRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750316994; c=relaxed/simple;
	bh=dw7zJNlw+Os6o182cz10cbUSNVINTGZ+XvcsoAsz9tE=;
	h=To:Subject:From:Message-Id:Date; b=d3RzsfbzHkz8rfbxIBnwpG+4fy/sCoKaE7VM08Kw7CIx2Hp3sq5D+wPYq3AeOI76NP54kQz8FwZ/YJJRMrGhrIaxnTNIEHL4NQUKFdhy9dw9j8k8k7+ok2fyTJKvWy3IoyDeQBsafFm0ZT22tCVlKyFQsl6wbhHpz2QgCHNwMYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siqlvBID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siqlvBID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1243C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750316993;
	bh=dw7zJNlw+Os6o182cz10cbUSNVINTGZ+XvcsoAsz9tE=;
	h=To:Subject:From:Date:From;
	b=siqlvBID3PDEBCeZiwa8G0uSntYhNkX8XAr0bqPSBzY1QDu8mg8tI45v6Zj/OZvMx
	 eXErp9xl3902hf5Bp+uCWtq0UP/jc2HM/c03qK1q59t2rJNl/6s7Yp4Q9W8ity8U+t
	 gikyCqGp+xvKfiTobKKilFdrFr9GQWVrCld095M1s6QtmoOEDyFaxUx8p6V22Umz7p
	 IsCahMVNyc0LAU7aWM2krBgw7R8JuztZq8rOvOsVQ1t8/GdHSguaV8BMBMf1R0MDMU
	 n/IKu7gv/3aTystRDWyntpCWc8f78yv9BPyUIpAZkAzHE19g0kSwr/6Wj62DbizVzS
	 sfVMo4nA+0HFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90397C71159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031699358.31871.2639114433015093370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b2afe2d7b1a1e23784d73c93f70361add45aa6e3997620cc6e52a65f0bb664
Date: Thu, 19 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750316993
