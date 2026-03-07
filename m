Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BC01607A4
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772853294; cv=none; b=YR88dKVtGn7febSmI0afe89jW2hqaGwkegTFuDCS9U74gHTdm2+GtNgB4RH0qCx2fLbTqMgjH8UHEuo/L4qWMS2VD4jmV/UsEm5kmov64WiXGSRVJyRADZQSl2MOk75r30ldcBsGsHhBZarAnRT56F1vkze7F1SfArmGR3O4Y0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772853294; c=relaxed/simple;
	bh=JLhqsKWMcBb3uc3hI24GHLc3dA0msLjOiai5rF8ZizA=;
	h=To:Subject:From:Message-Id:Date; b=rGBcVtloot9ishmxVVb1IvSbuHdzLoO/H301glZM6s+nVzEYpRFUR6Sq9wdtw0wuZA/l0Z8sm/VN2gmHauwA22YgqvczdApxgWmLVJ6mZkZOrApY07M8fCjk/5Wbs9Ufh4w48OzuCG+bbnT1aEkt46rhMHm6jEWpCIAsVPq0GTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOFNVlEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOFNVlEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18CCC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772853293;
	bh=JLhqsKWMcBb3uc3hI24GHLc3dA0msLjOiai5rF8ZizA=;
	h=To:Subject:From:Date:From;
	b=TOFNVlEZ/0mnlxJ18F7JOJoTeXxPNXqDL4Rx4u1vPAz+wabdKgwYYXWmWQzwOxqvw
	 RASH/+7OjjENM4H5Civ/rH+FYPJ5LOO2IPeTzGCbDyYjh/7xuz17rIV9IrConTY+bZ
	 jVfNZ9+CU+M3D2WWj0ZFxnsDOgBgg/v0kvHPJJpn1GnVs5OEHANOJdCbmyQW35gklP
	 YD7pprtw33HVDgnuYct50M6LKFiB877otnJPsRlQwmr+dG+33D3ECgu1IdNnChNsgN
	 nQgeCMh/Qp6Wpifvth6Z91GvnyOkcaNSAxPThsXF0f+28qazanHYxehtvB9jeIgDGF
	 swOYRsXqh4fRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F024FC9ECA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285329357.23883.51771379557012217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa3e71de8e484b1deb9fd15e5eb9f203f47b4085f4fceed4b2eb17c13593db4
Date: Sat, 07 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772853293
