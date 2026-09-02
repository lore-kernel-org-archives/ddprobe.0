Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6657080D
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788324634; cv=none; b=u9U6Bar1+E0YJIk42kpx2syrAhGP8LHtky1VTdRd38L0BJiPPvV+yJcGW8P1w/IRTuVFNF40yOZ6yOYy/dXkoPkT3MJTTR+ezQRlSPCrYdP+Ks60MIYiCA5DTXhqDf2Iz64zVFD1OuFBpQXICOk4HCXzI7JbajwoQbPEfKaPBks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788324634; c=relaxed/simple;
	bh=cV6Gh8QxU7shRMdmBuzwcUvu1wAtbRWVfsWqYbU086g=;
	h=To:Subject:From:Message-Id:Date; b=bp1imlIVbg6yHPRVh5O677IsQ94FmRldf9313Gcmof6NFyvmgBq07U0KK8otjILLMczFcRjt8WN57jhe1ohXXWkFYKbME4k5gT2qjwGe5k0MR0Xv8JPygIT2GzuYxeBhFrN6ygK1t2UlsgtGTiulSuyllMZlhsLzOl+PdYKgVQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMCWMEj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMCWMEj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B4AC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788324633;
	bh=cV6Gh8QxU7shRMdmBuzwcUvu1wAtbRWVfsWqYbU086g=;
	h=To:Subject:From:Date:From;
	b=BMCWMEj9ZPM+OsoU4Q8QAFmtixVKGtmL+C/h5mcHQFG5v3bQWlg2dk8KFZm3+HfUr
	 7sN94h8eaVHKKD+gti/ffrgmFvdKozjaoHNaA8TyH8fEfF3kBqWH71PhRoHgmGuUVr
	 jN4eJebAC6SJNf0x9kJo4dJTkFgVpHd+Lr7AVKijWbDob8Hd7jLglEDepdQDfnCuqO
	 tvFA/5IadD2H4p6P9MCiNqhvbdVKntXtLQ0hjy2zLy7rtFjEoqulJgmdlsM2VA8HDT
	 wk1/CZR56UpOy42qoxwu9M3UAFp1k7dGycTuNuiDivyMbO1rjZXEUpoBYxcRMmHnHo
	 HVAmlJpAaaliw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B833CC624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832463374.9184.16262169740858224073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d824b74a149a3669c9697f0be0faea768a4fb71c6905ebf60e500625c9bf571
Date: Wed, 02 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788324633
