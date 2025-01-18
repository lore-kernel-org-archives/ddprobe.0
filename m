Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D241547E1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737189954; cv=none; b=UleKDMUgthnBqpsio09Hwynd0HO4wbc9vT7Wf/D0k01MN72m60GVvkyBBBqlTOYB9Qqv1TfTjfee0Nl3XUtBMrkmQnoWV+HmEyMv760qWcaa/OVAyXTx+QqjtTcY+e+3dh6EfjUN0EUn5PmAq02jUW7GudhljAWZ8ILCn4RQPww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737189954; c=relaxed/simple;
	bh=GwZel2YJkpGRwGw67+GC5xDeUCd7kTYB/D8ELNvJrpQ=;
	h=To:Subject:From:Message-Id:Date; b=jVVh7kqUzYD7/sSeIxFggDnAt7cNg7DQ7M9mgYjkpOtCAHBlDtmeB69d30M5Tue8przb3Dwv/QcNjzP1Gi8KWKe/V3XrT5axef+rcgJLQxBYIL2/1To6E/bDdYnN7RTd6LsuJUG/fULLHSTzKORx7sjckTMrnH6wK9mQsqpubUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seJw6f93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seJw6f93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84B3C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737189953;
	bh=GwZel2YJkpGRwGw67+GC5xDeUCd7kTYB/D8ELNvJrpQ=;
	h=To:Subject:From:Date:From;
	b=seJw6f93QNPpSPXwpqZJSPUH6xHX+Z027SQitt5QOctuNQeVkZGzTfsRRRKCflA03
	 I31+GNp4M4G1sfp2fRw3Is691DR+9CAJ75KWZhYRNkDPbwZhLyEUQPRAZ5526hAE06
	 wBLLWe+lEIlxymbizrkVMgeajpN5shL/pdH2fGmskVAyScqXodDco5FgT09Mb26fL2
	 1owNi4ycTuU+x7o2FAh8CtK3+gWSd+Rbx3elRPv4xK2PC2ocaKzG/oSj9iqYM4aIVl
	 dYbaR56N0Q4DjLiNClxgFX01AI+lq1HbD1OrwjrJZeLEvxaA96f0nivrY/bvn82rBZ
	 H0YE4spWw/kWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90733C02187
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718995358.32603.13122354121301732088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca78dc5d63a3d4381fde82d97820f21d91bad91e828846941d24173730064d0
Date: Sat, 18 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737189953
