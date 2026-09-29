Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676844315A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790644834; cv=none; b=gDb1wtTTI3ZOYzU7hw0VpWu1xDbXrdPgEVNseFzq7GOoQ/13lQmjYgq8nYCctK6x89bDTA9agy9pk0LrlZlr3xdaNhzXV45qBSZDKkOMvjUAdU9hBKWeEsud7u6efDIQGWlTY30RKNHawgIEt41PTMLRxxmLTWG/D+ZHrOYCAeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790644834; c=relaxed/simple;
	bh=FaCZa2QruKs2Ksb2Iwry7QCek1V2LPYnA7d1wdYTg8M=;
	h=To:Subject:From:Message-Id:Date; b=O9rm204je+Ajgk3aWrZCdOkHm/Mt+PEOgvC030EqEpuQC+o0GqhhTUghlDwO5duzBZi6GKe7z8F6GzhLx12kTZuFeh6RvP4PhKUsi4lxaiCuELAbELyx54FsmN6ZgMMu7ou/C00qtrOEt3wyUXQv+KgX0U2lkKmBto3o8ADeWnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/CrepDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/CrepDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A1EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790644833;
	bh=FaCZa2QruKs2Ksb2Iwry7QCek1V2LPYnA7d1wdYTg8M=;
	h=To:Subject:From:Date:From;
	b=L/CrepDvqS/rnrpjwwZhjLMUJZzwdL3zhMCQLYx9lJcSGxuUmQ7LvlYAGW/c3OKzO
	 NXcwFUBSvv9UhQ9AKFAcQuOVJi6lqlGSU2NzvSq53/VZ55e+ZGIc67QH0lP0sOwnnY
	 q4hViYPVpMgJfm9DXm4pH82uZIcyo5q58WZTvqUUQtVYlOH+K6DxcX7xc7d6TitHk/
	 LaQT4s1mwyupRkxCEO0tm0KCt5aeuy4+aaShR5sRjHXm/C5h6QpXbZBJ6iBJxAQe5W
	 aq2rtcH0yWKCa5lfpn1Ans6xESGqcGi8YBh8Qkc/ACCKq2IqL/zzQbuqIAzqi7CNIE
	 n/GLYA0d3doFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0439CA5FAB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064483368.958.11381574140690814710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad20368e54fd2b651dacc7b71d1271335da5e68729cc9c1fa877ac42f390fa40
Date: Tue, 29 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790644833
