Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC4D158845
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 18:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715797343; cv=none; b=IR/jBO0p3lky0+vvcQmbIIZCME0tXrFC+VnH2d9YuNzT/vB7Nn5qMlEM80E0P9gIPDKm2L+b4BynQ+zgUUo66ehDpaoylevUaV3g4xczQ+pk9p0Ac7hTHUojhVaEKc09f2EvXUNKTORkLLq4SUpEf0Zfy1IBS5CPEHMVdf2JeNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715797343; c=relaxed/simple;
	bh=wMo06mBwje3qHBQjHNweeCvuCmgAVy78P/KFoJJji18=;
	h=To:Subject:From:Message-Id:Date; b=dIekLKR1YJqoAukid8ZukDOKfoJQPZRPnZoQcsS/39ZRGJEk6Tclc1kSe2m3yno9nEkr9bIEB/c527+umbbfuT5lpcY3NygMBj1uMofBCWdkrexXEyApSUFlc2ns5WcZ0GVj0H/DjIrmzgu7uHFFfXpwgOajt8ViOdPGu9I8kyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyeOOYoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyeOOYoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA023C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715797342;
	bh=wMo06mBwje3qHBQjHNweeCvuCmgAVy78P/KFoJJji18=;
	h=To:Subject:From:Date:From;
	b=WyeOOYoAAw6OM3nxRCMMdeT+IZgleEmo6e+9gBGnOSm2TXuai4Zs9hIkGW/xFjH6U
	 CnRPpnn6SSu89P1RHdKnYnz4UvH37e/w05Y6mmAcCosHBfSGapoTUFEvmPIZiuPJZs
	 suDe25plGAtQn6NN5Uuvthbjzi5kM423IggfXEtf8sAncMvBozMl0jfy/wWvXZjR4N
	 hpVs9PQUTI/pN/UCloO4epkgzcB8IcBEZbgZJ7LXD/1aTyQtQ6P/VAYPvjitsc/zz8
	 5p7AT9ZJsWfqax9DzHPgfwtQZTI7rMyNJpvkBc7z+BQjsDUsoyd5JDJGEF13Ebet/B
	 hb3Q8XdICPElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C711AC25B78
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171579734280.31263.1167364136242190891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034713bac2ef7ec5609a80427b6ff7839d72401b0ed52ae0f741bcaaf3acfb77
Date: Wed, 15 May 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715797342
