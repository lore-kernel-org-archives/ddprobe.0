Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4E030E82E
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758922193; cv=none; b=k9ArotjypdffcG7EXsL7lHM6uNajWFjpj8WRSEUxWkgpdJ5SH9gw40WiIft27DU8jKhrlRrZgMeC0SsuKiGCHxhpQzSOoa5VQrFRgCUD9Dd3OFUk7VmlBJtyt1QJZ11YiUG6+W57zBQp0EKncTT5q84BiR3Irbb1vv5qWWiQxU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758922193; c=relaxed/simple;
	bh=2Eq/qMgP4DbrCdIfRpo9iCsoayQj4xWuO96KZ34fHz4=;
	h=To:Subject:From:Message-Id:Date; b=Liesejjjhc2ZfHis1HkfAqo9EgWaTO9qcBu9SMn/JVu7Czlvh35bKaZlrWm77ef5KA7SQs0vZ+JAR484SB6bVnLt5uNu8g34BhBM5IdFS5gVZxDaWI22MllYIvEpo56z1LAGjnFhyauv/gk/rH1H0xSVR7WqjPYcWj+GWFBo05o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfqGLVJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfqGLVJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C43C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758922193;
	bh=2Eq/qMgP4DbrCdIfRpo9iCsoayQj4xWuO96KZ34fHz4=;
	h=To:Subject:From:Date:From;
	b=UfqGLVJi8/aQWpHPkkBTU5zL25mT/2+QcB1m57vyh1xGI9uW0RTbm4iXGG6urhAbQ
	 ZuPZiUs8fl9rWxGdWhmmvsA3ZBhymfI1C62xYqecBlg6TvvSdL8Ca8XXF0YLMC4RPm
	 NAryMX8dUbTLnm2OJvvk7W0Yh4FehN50atG0l8FrydSP3157P8Pmxo1XEfBMgj9T+r
	 of6gCJDCxTpNRHSum7amJ2ERTl01XAIwg3zWCxWqzGRsZI/Tu4haaNGPcvwh74AII1
	 nNS0IFyojvRCZL1z8dPem2OAOhAmbyWzrvMh1mbZqdFTn3n947lgHXVQ2c/hzuU+nj
	 +IJm+Gbh6BliA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963CDCAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892219358.28984.10265569246889866814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f99d5337aa25c71624e3a7ce5db9a96427ce9149eb1daa556f8ef91dd1722f
Date: Fri, 26 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758922193
