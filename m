Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6258E472541
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786714234; cv=none; b=lp5Gitft7z0a4eihR3mUkFuKuYe9Pp9D2KQ8IfgEnqkKeXfyw3dez5XosyYKtcBCJIS73jAQqIbXdQ8YVCVlrLLXyWEbvnjOjhj1NYVDFqB3Jw6tHQgDd/zBBYuIhd6GNRe0lLTARcxXWjuWisKNR/zLb9aw5Af8QwNQY6ko/To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786714234; c=relaxed/simple;
	bh=PMjQZWwoR2b6tKE8P3kf9qQ7DhAlruBSpwdEdbuk7rM=;
	h=To:Subject:From:Message-Id:Date; b=fIt7z2Gl9PzVU+df79hPIjGrg/DPcR8J5PTy55Xdw3paFgO4olmZQyYxYSJJHfs5ed9RmZmWa4Jf+0k4cyFnE0NvLNrrcMq7BREf5/mpwjNfWLKLE/8sdSxP6Uc6SzArVP4w4Zeel6q/75OeTWdTUChvwhPRXAyYLENKpz6zMdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idaWY6sb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idaWY6sb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F8BC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786714233;
	bh=PMjQZWwoR2b6tKE8P3kf9qQ7DhAlruBSpwdEdbuk7rM=;
	h=To:Subject:From:Date:From;
	b=idaWY6sbu1B13Hs3e7V/AjFKQ+ivJObtHfTtogz5trZnSyKDEIltRJj9PSYD+9Gj2
	 6K2qwhpxENuFpS1kXD3SGhcR7K1+Z76UW4u6rOLT4+7Awbm59kH73wSBoXAaBsCBaa
	 RAFIpRbzQERXXM9cuY6PZafDClstf6uktCO+UDNk4RjoC7W79eaa1L5wlGocGFgcSs
	 AxtA4CYmbfR37foOC1VqP1DsrmTHnAuEUWqnQXs0PP9zTFhK8POOegi2wUOgb+a4mp
	 lPKbnSaH1Q1lJ1EEHUvpeVWeR4bovfRe03Tzvl1b49/WXRfWXduwEcZxFWCduzVabW
	 TT1M2vK1ucNyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E5AC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671423367.12816.13367058464308842811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1fe9418a8a2c96fc63e521ae78864571eecb98659e5ddea7e944fc1b18975c
Date: Fri, 14 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786714233
