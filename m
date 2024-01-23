Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C3250244
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705974497; cv=none; b=ng2Il6TveKNBGZPfGbmOdJU+9PA1ZBfvkiqeyv5jllYiD0Aab5tAqWFhfn1ztaeUjc82HEz3GfAN+ZCE8UIn6T3IyDU43XcHJD+a7wovuoN9aO1kxcyn/oicQFvWKsXAiZE+Ox2PFZ4zvHNCEcOl0E1Oh4kHqiM+tdASnLsN1sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705974497; c=relaxed/simple;
	bh=kEKzVMcDZeWI3rBPqJGThu96tgOzkY//fMZcdpYY1y8=;
	h=To:Subject:From:Message-Id:Date; b=Wcm5YscytSbqBQczBp2Rcr1UzuGsxwSoACPKoYfwyVtEavn+qTpCEqRwvv+nvpS1oof+3FFkcwMKRlYewNs08Y427YFIMQ0WBvjp8qdWzfyY4CzjXZI7ekaX+I5zegX7c0L8g/gwjHtZNnO6UiYF1RUOp/kEXNaQ7gz9/8UOn3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csALycCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csALycCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727E6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705974496;
	bh=kEKzVMcDZeWI3rBPqJGThu96tgOzkY//fMZcdpYY1y8=;
	h=To:Subject:From:Date:From;
	b=csALycCjMdZwvBDN0r1rpAfAfdekjhiJTSYw+p9EJZNCyxlwoqiPN/32gZDkh1hRI
	 Ou2h/8cSS3FTi32niuQ8ZzpFHMvamNKd2Q3XiyN7YZNPNtzwflYWn55BlrAnBfDobR
	 PHIuDQr9LEwj2KFg/KmWbIxJL/XCqgT1c+49Uue9z9bX78vJx3ISfkLtNeiinFM8Z4
	 lXMoj/HdGyd2U+jfRXkAguw5AbI3qgEaoeThfwonWJLXjNsJm7So3u4F8336kwrRC4
	 Kfx5SXi2703qqCbBm96wQQqBNbRA41nTUc1G/Cx8QJswul8t3vp3j3kr6Z2iAZ2ILF
	 i2monNQqMNKvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B630C47DDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170597449636.30800.1525283510754322698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adacc7a5af7d0c53daff1be3a93a84ef56fbb2deb68c8401c1d0cbf3032d28ff
Date: Tue, 23 Jan 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705974496
