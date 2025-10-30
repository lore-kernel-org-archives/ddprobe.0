Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233F63FC2
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761788994; cv=none; b=STJsfDjPVjf/ZHNeRYCTzyV1XJ8Vxke9eIQsojkJlF2abBdlsWANYs9AASBDDaoX6BLuC0+zhzrlYXWZO8Ci5hILrxhtkO6r6M7dRQuUPKmWjHe1ksrSCXnp2QuhSPsDAfKNGmTrP/K/qE1YOFYM/Y62MSIinxRFnf/eCsTVvjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761788994; c=relaxed/simple;
	bh=C3XQ0hkUGyIMGmgLtCEBLPWTWuGpWWvw4S0qCR59vCk=;
	h=To:Subject:From:Message-Id:Date; b=HqT3Tm34do/4YF9RcIgXOcvrR6rNFMva37/3lqHJcf7TEpCpXuHld+j0XG9SwtFcV8dB1Xl+c8Fsm7YAheJ3p/Hxr0Zek4ker7XY8eOwwjAs/nKx9msprZmBJO2hWw8Z+MvkV0CiSi8E3NWLotIMKh78NRRnC+ydGMO31mwY4nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXYFQvoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXYFQvoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FAFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761788993;
	bh=C3XQ0hkUGyIMGmgLtCEBLPWTWuGpWWvw4S0qCR59vCk=;
	h=To:Subject:From:Date:From;
	b=eXYFQvoKC4wr+Chxbttwm9Nl5F2HxW/xb23rSzj7FnBMulmtZpNOmL4R/Bxxvx6ON
	 Cu2jVHFN2V09hGc7RyL48wOw+XmoLYr04MT5RxgT2bzbFGpKqzJpC2TRvnRZdYuuzc
	 3RY1BF0graVESzrgRDbW6kH5KCkaFNRYRTvQ5alB0cK65DnktwPRYDuWCokZ6obfqG
	 y4GOroPAPY/Md+guuCOhdtBHz6DjbZlXlJ5Fvm5ljPqYQ0HQPLTmaT+MyUs8DdIYZB
	 RDDn86/0agzzO6/7TB1Fbjxf8cck9RBUnkI0CLjCVfRDtkIiFM4XK127NUV3XFcWmn
	 HESwixMzGQ+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1CCCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178899358.7329.12804820567047476447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db1fa7ef638aca2499ca315a3dd73e5d35acddb5c7a1ec1e998baa27364610e
Date: Thu, 30 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761788993
