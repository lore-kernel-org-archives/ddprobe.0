Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F3EF9CC
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722664554; cv=none; b=Z4bt35BOmgsGgvR5yErXuYTp9Kh9w1g51k9lvgh5exg8NRHSZvCGO7kwxhsifxyS0qnDTIlKJ6CaXCnfdFoPeA2haiK8GI1rk8lV9nJkuznrtkD4vKrxjIihV5QPsCqyvkHixqOP4984nkFDAdIhv5QFZMSndxppm/KIhrhHjBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722664554; c=relaxed/simple;
	bh=lytd7EDJSEQc72RAINgmlNDE6wEi7hPeoMXDctz/u5Q=;
	h=To:Subject:From:Message-Id:Date; b=Hh0DJJZ2wAb5C8g35hvPYwHS4jWs78f3IMeqCQH2U/w10krqpsVkKPdHrwmPMd25pqH3USixc3wLZuIUQB6sym7+zvDO8RsmwPv1h6H4hZkiZGsBvi3jXNPk7s2omg7XXCoGvfhPhrO2ZaEOVVAOofxOGJMjmPknMs3IJCAuvaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXGm8Hru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXGm8Hru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38F4C4AF0F
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722664553;
	bh=lytd7EDJSEQc72RAINgmlNDE6wEi7hPeoMXDctz/u5Q=;
	h=To:Subject:From:Date:From;
	b=CXGm8Hru7MtiezXjG043gdPKGDV/3GX50AMcsyvDkPk3+Ux5DYB3NY62TFL7jDpLM
	 w0ft5tdJyTLO5EUw0WcjyP0jkFxGycCtsaV8iCI+GqLIVSHLrkGpaz5YaER1o9TPvR
	 JkPl3rFvUKpXqA1MhH3G+wofY/mtgkEmNaOXBXiGj4nTqSGWx7TEQcrav5vBbSgctC
	 T83ExMRUlCEWULNGwjGzu3lB04DTH1ZwNlHE4fqy0vuTenO08RNKKx4e/iXVZr2qUI
	 mdKPYva5r6RNUDDf+Hjh+Su0uwbtJzxi1wGaKKi6HihjFbkRJZ6SEdhXj2YMG8s7Ev
	 4iLP+svBAHfUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B670C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172266455359.11668.14132630987172065078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c3f13fa35869588f35c5f01c9eb3e3593f7f1b12b3174b0cf09d3171a2ce60
Date: Sat, 03 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722664553
