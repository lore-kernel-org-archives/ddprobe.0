Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D3A21FF45
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755836994; cv=none; b=o7kpse4wW+jH5dHhvlHHYy34dc5Z6icQ6AVMpInVwiZJ0hilg/oFeHDrkSFqM9TH2W+yt1NlhCWOn7FzApZvJ57Agc7MMFPqer0TRRKgRDkJShNsLPtkGIZlDxr/Avq79ND+uEC6sM+0soE9XUDOXN4n5Tq9LS02Rm8qtsiR7Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755836994; c=relaxed/simple;
	bh=VM2iCIwyEdTI6LwfASKpdLwTJzTkMJeuqs7d9vPZECQ=;
	h=To:Subject:From:Message-Id:Date; b=tu5wJujNZ3aPNbSofH/OMMxpq3+k//Q1YWLfcdr0BzSu4P/CRLJyc4CXMHoK/G4Fx0C3+eh8M4UgQDZ2xgGBHRc1EdmcsOmOTNJZId50Ip3M9hHDmyU0eaf4jzmnP7PmNSfHHNnX7pF8Z/9lu//YkpRkBU1bHoDJuhBCZibEj1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BV5hfmpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BV5hfmpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37F4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755836993;
	bh=VM2iCIwyEdTI6LwfASKpdLwTJzTkMJeuqs7d9vPZECQ=;
	h=To:Subject:From:Date:From;
	b=BV5hfmpyh2leCTVps3decHuysdP1GrWev9RRMxRR3dSkf7UtSi93LMeVsPx4vxFHp
	 LXLSr4o6ErriLMDH4YABvBnAnDLMht501P9AkQwnUro6ojGjmmLlyF4vz13nUQrxyZ
	 ERN10tSeGBaKw7J3/xCQfoQxkZomtMsFO9PlYfBD4xGrD+MmWWwNn08mhpY95s6C1a
	 ETM0zRxgrvUU9MoYpqEfH92RNikpvmYxg+ausfoXUPIEjfzR4UPJMg0FTYPZPjATP+
	 /T/vpspE89DLEmZZHPIV2E59Kn/2XMuvsTowwq5hlkXKcrRQAHiAcbp6G/775iNOk1
	 BYyPe8COwj2mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0330CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583699364.20126.8687402291883082302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c9840407b5228cdefeab8e67b2a4d3af3756b439ce33559a64adf4493d86d7
Date: Fri, 22 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755836993
