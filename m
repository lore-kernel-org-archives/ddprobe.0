Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127F3DDC3
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757617794; cv=none; b=uedop5m+NIjWvJLXcpkGin3ApqpFpfMMXcwfMbtalyzMuxu5txUtFVVkEVuHMJgOlPRjPvvOg6xc61N/QHTb4+/zd3O6EFvihaDDZCMFwkG/u9j5d2k2gqmSgN+vlKSXyumSgpNEqJvxkMkf5uzeZME9Zt51WcoQ2A2Z6bX1MDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757617794; c=relaxed/simple;
	bh=q56wHvRHC6YRQrhWdXSy9swzUnwoU7+pnn8Ck7/FMiw=;
	h=To:Subject:From:Message-Id:Date; b=lCcnlwvE5rCITCbOeL/hhcBpER6fpPUZebPzhi+Aq2QMOfGmGjekQeVf0aVCjb69qjnFJnSOauQ6sIryU1anIae5cP4oVkrtDXMPWVy2obAi832hihLTXVKAsuNFAxT+NgKKnQ1kZLcta3XCH5jkWS3c6+mCnlhbjcX8BWIld/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NG17mmpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NG17mmpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C9CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757617793;
	bh=q56wHvRHC6YRQrhWdXSy9swzUnwoU7+pnn8Ck7/FMiw=;
	h=To:Subject:From:Date:From;
	b=NG17mmplYatn+s1LUXXayZxUXhQam97LSTccAHZCUdDtSPwgISzjf+5quFSOIMAFY
	 NlhojRB4bhohzlIEPLdSrA8zykGgHxZhQZMOsrEAxT249Op+DJK6sIvk2m337ClIO0
	 Lh/mxbXelrtARo0GiE65UrZeWtnw3nqTDXDEpxHLzpcOGX5lB6npBx+7EEX5c+4Sst
	 fmaTojGURPcKygQj3uNSR0dElCdjKsywX4Ez8q8WKa1K2BnkYjxay78xFFWuq3uY/K
	 mTJdI7j8G4g/gKFqjeqUeBGS/QTAHVkLZx+HDEdQn6DTwsO8s/54wqmNn3eeZVxYRE
	 eWXA6dV4uXzHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91699CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761779357.30684.499526578599443650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87b94e3bc55b0ac94229ee9cacfb95b4e8fe45db4c17677e38725bc94bbe4e9
Date: Thu, 11 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757617793
