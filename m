Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C40D352000
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779193234; cv=none; b=RsLcvwIghsxn6PNkumVy9lageButFAVjqcTsXp8CrPpe9IOLPDb+jErMxapEdh4FdpgN8NHRuMSzubhUXMkwvTaOXTmdt02Zh0RuJJOOVBWEGBMBukMngTyCpIMFM95h7sXyQvU7kYMK0kKi9tyfwmvSUGhi3RKZXQkU/5u58XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779193234; c=relaxed/simple;
	bh=daLJR33g3ZdnXLTJXF/sLIv4E09qIeGX73+NEs3sGtA=;
	h=To:Subject:From:Message-Id:Date; b=M3S5Ay9C1MJpWN65q3xi1v6OXcuwgP/ZIcmv2YLiJEkgeizRvOEWxLTbt6y2lqPOeil/ItfvDKJT+ciVipjCxvszZ+pGcOYoSk0FEo8rXD3/GAqtY3HR15IVupwKSNDL5nGf+RwVhhKCmCwMGDmG3yP36hnSgNq4/MoWfYOaXZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLcYxT25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLcYxT25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA632C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779193233;
	bh=daLJR33g3ZdnXLTJXF/sLIv4E09qIeGX73+NEs3sGtA=;
	h=To:Subject:From:Date:From;
	b=cLcYxT25R5wnhk47USeZM0lds1s0zQvuHj/aIj8UWTMSup0O9GtBJcXd0p1Ry7lxD
	 nnCSO8Zl1M7XggAuWK0x67O4VvyW0hA4aQsA3BPmzPQxUE4MzlD+tSoiYxcNe6PLGh
	 3Yhka4AGK/yjN3elQ+DTasXxCuk+WUbOK3i68QDyRh61VbeXxcOtyXPlRwr1krKfdd
	 speNwjwFtknqWG7QshdKmswZwMa9utzXNVVzx7lQl8q2QxeBMq4pMwN0Re4SAGyQRE
	 LyQ1NnJ+wKWjWGto13rwLZzkwkA2RvuUdr/lBSbVgfF0XNG2Z3kMoaECEp2SPmDUTA
	 cA0VpzeUdD3Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC03ACD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919323369.10976.8183596839214186737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac9c474c08045d418f5ef4cb027afe4108df2af56757916b9aa8fa92aafdaa3
Date: Tue, 19 May 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779193233
