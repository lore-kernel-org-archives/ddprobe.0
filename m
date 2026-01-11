Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FAC125A0
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768108434; cv=none; b=IGucV6XQokeDKdIdM4pXCCv8lmGsEe9zGpC4u7kPqWRA1nxj0p8YmXXQRBOaOs21VvgJoh6ftPnlN0nV0Ex2rGGqERQH6G+RxSAOf7Z1l6Kh1CwUA35qmvE28SZXX9HTSsE9KvtisMMQ/HrdbFumro6HGG9jnaPWQkVCgwlDpGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768108434; c=relaxed/simple;
	bh=hFdAJKF9DD3wl2QazJhTZSFj4eKLFZ57y6UWJMp6c5I=;
	h=To:Subject:From:Message-Id:Date; b=GjHuNsH4a4v3ICFevZYACylBxOyBGm2P61BufbHMoPbtOL5oZdV2pjicFdL2GSkW0AbmUfl9bta2MKex1NIzPgaADU9Gcae5wrbpdDEot4aLZ45k0tyY3lmsUMDzGFAcILS42a+oIsBvjxVooyT5kiSogn5tEDwQAtl88bWJbm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCtLgXYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCtLgXYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF90C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768108433;
	bh=hFdAJKF9DD3wl2QazJhTZSFj4eKLFZ57y6UWJMp6c5I=;
	h=To:Subject:From:Date:From;
	b=TCtLgXYjomKXDzSLWa6iSaGvHKCGp/cSgBkzV2TtvnyynL0k2yfAmz6Q/tw0BDSgp
	 GUQV3+q5oaf6OsbJ1jrjXc+c2lxOp3KRY+bQabPauOR/9LS8yYahOB1qHDlzreZ+XD
	 Ugx71jRitjqisR0Itd2oi19Alms9OItsrxmFnAPbZ9/11INiepU+GGxwDbncX1Mstj
	 fYz2hWGNCsoXduZyHOE4hDa1POwhQDMp9Pg+8pJUhVjbUDwT/rtzC6m3jCk8rYC7dC
	 WVjdkgODkj+zp8kD0KMtUWHAexSHucknyZheDgECYdt5emiRKvcpIpagN4U7bG8Y4K
	 TWL29wRy0m+Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A076D25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810843357.21352.13800582124093386594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6976c1cd748939c89fd60d334ef921c2e2ac934a431c6bb19d77b90bcd9dfeb4
Date: Sun, 11 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768108433
