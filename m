Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E201926F467
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744116594; cv=none; b=qxDbpb59Q26pawJib3qtEpeRFYWJV3Jb6U99H2d2xFnwvzoCIrssLffxeO9q/LL7adD4y8orGzFtRo6t540E16Xs0SVHffs+Gt7yUnjOA3h5eRHF87+CwFKHnH8oYD57mrdWjkzvH68WwPstrEyaN0xfmBBzu4/LjxjJfb8tkZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744116594; c=relaxed/simple;
	bh=pAb0ape10l+3KqqSVQf3FwA0olGU6GiF1rwZOydt5ok=;
	h=To:Subject:From:Message-Id:Date; b=IYeHdcfd94aWELA2AmryzmfoRz6khG9ab9x3qvfKu0uBAc8GMd6MHZUrIT1wLw6k9/rGabuBliQRqiNpwjREvwdyTvKK9BbPgOxg1OmW4SKEIb082dM+6bXjogZqlaXaIh61uYyMyDRQm4d5Hc4WJhKCApCLTGnKMb94jcTAGRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axIOzQUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axIOzQUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CEAC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744116593;
	bh=pAb0ape10l+3KqqSVQf3FwA0olGU6GiF1rwZOydt5ok=;
	h=To:Subject:From:Date:From;
	b=axIOzQUtzWZQ8yC+Q4hipdMIud4iAk1gSfBY+fehGcUYkEgr9B7WatEcafqtUMxs1
	 ezlthTJy3+bXhF/mi1mdlt7+6qJqaSpJoDxt6b8rDQmGIbrd4phLr9m9pTEzLY2+vF
	 IbutST2XFmIWNXPSGj0MG6CewrSOxMEUqJjICDoek2Nj0sbMiumai2yLMP51AJA3/V
	 JBLVOsDUKHr8SuanJ3xdCOg9jhK65HX/zBLvwoKgGtSkdj0iNvsZXQGcJc3Ibr4yXa
	 21/eNHE33SfLS4blcravYd4k5hj04JvRBhUQHD49xDcL1y6njJnobURtFk+l+vIQnl
	 G1CKFm7x9/9sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E88C369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411659360.7438.12074001933927415395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81bd610a458195f60bbc67b44032c1cbaebb66958c8a83d4a423a71ac6c58058
Date: Tue, 08 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744116593
