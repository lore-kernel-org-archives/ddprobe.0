Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3737B15E90
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746239395; cv=none; b=EpaHfTHNKKOzymLruvqfvm4w91jDYL9p6Vyv3cbtlVOur/+RvNl/RW+x/X/qyJHdPvsJSeeeOxuYX2v5EGX+vlfG1Swajd5FBBhST6gv7Kw674HbEWyi38S2frUCXxNoHrl23XpYjRth510h2lb4xMwLHrgms1rJcPhczOi/lqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746239395; c=relaxed/simple;
	bh=JqUUDFwS/PWW7jCaw/eCnh/WB9yrfU5BY/EYuPb5xFE=;
	h=To:Subject:From:Message-Id:Date; b=PiJiwDgdAt5mYspXt8zVXhzNy47xzSQPkexnCVgf0AGRrdN5xIvUST2e7CnBuLKHUr2Idk9FrK75ofLB4D6J8JDA03441Z9kUL6yJis39HAv1BSzylNdKDjDdveLdzv5lUDICaTmgzYJW2GgnGxA6oDYPOUl0ALliZKg6HtVot0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRkgqDZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRkgqDZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3CEC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746239393;
	bh=JqUUDFwS/PWW7jCaw/eCnh/WB9yrfU5BY/EYuPb5xFE=;
	h=To:Subject:From:Date:From;
	b=GRkgqDZ4NKeBFmDO12jyXrHbAda/cTKxP7DCASh2/sYxAlvBTADOkRxJtIAJRNOs6
	 77vSn3cYV7s59SWYZRYMIN8BJgRDXYiGcHfIvA1phDidTFu944DAlv969oIimE0nyh
	 qkSWp5MnV77+io3QAb6vrKcuWOsfGnEA/w6+oqvSohx3N/ItwmAgZ3LJTGrKQTgK9h
	 7B6LF82wbD+QuI1CCESxMdssp6I3jpL5hb+uuaM0PbCRmcmGxuofXQd8iPO+D+rco2
	 k9vOrxfFvUeUDfeN6c3HsCXlZzelW14dj0BVSfNwDGGE0Zoj/ZyR7X3hEstlzq0J6f
	 rWrHjMLCzc7CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9681AC3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623939359.28018.981708063280798201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c7b0abfdac10ba48076dd8daa4b00d872d290558b4ebeaa169ae3a72c9d162
Date: Sat, 03 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746239393
