Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE9921129E
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742374194; cv=none; b=Xj1MycdgkCsZkVMznS9xP3+2nvAgiX+4C4jpJYgdAD6xI961UAUjjvn09XzzZJ2SFPsMK4bYu8cEtXPMesLTN1hxzSo3X+do10mj/EJh9E6sujFxpqtFURSATAvrcSn+bRPklXHedhx2Yi92GmcLBcbeiOaxg4UURgTsvDno16M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742374194; c=relaxed/simple;
	bh=9fJO9i/DSsS02bsS1r+Qfxerb+cDnSN90kH92ZfbESA=;
	h=To:Subject:From:Message-Id:Date; b=k6fKXg1muDKKstVe7V7O0VlgqDo786uyWiXUOl1TSWBRTduLqJunBlIZFjSqLFhQnKYjButDqaIkO6aSnb20dvLNuSK6Y3SRReXGFhT6ngSYTMoEWlfkYuf8pOFieT7K7k65oeJ9DA0Ok+Bvk/6PVsUz3Trzq1WIcfXALlLp/9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGyV+4Y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGyV+4Y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E15EFC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742374193;
	bh=9fJO9i/DSsS02bsS1r+Qfxerb+cDnSN90kH92ZfbESA=;
	h=To:Subject:From:Date:From;
	b=VGyV+4Y0Eh1tEL7dtmBXMaPZtS5sBMEOO28wSjpULaDmHp9cPvXFoUUxRI66YP7Ck
	 urJT8ba/6Kg4YtXxw8YRoazL7IEqsd6juUp+V8G9d6eisdxl2EqKGhhFSPgMMa3Lp3
	 RxuN0DuxV8PzZYm4H6aTjBP7uEKjb04FxrjtAWQe16RNYjjqXcw9OT8gw01avh9lpt
	 gJ9Ej7ICpxWgaynk7D4BLSbmr3pHSam42m390otn3JuJbXHyDGddgKQaD61rYP1T99
	 JUl3tehS5xiQszLvgid70n5YprVK5m2JjroOvnV3A6iKeLv26QTPvMF8weUI1CGXs9
	 LMxxBlUJyTZFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBED3C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237419375.19988.9164921339553018597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4fcf0367026272e84c13eec376c6526f354aa27db167af85e354dc26c1f0c68
Date: Wed, 19 Mar 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742374193
