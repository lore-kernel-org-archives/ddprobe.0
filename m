Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACB91F4703
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755100194; cv=none; b=SEhfiqwLS19ZZZarxupXeAYzrH2Y1xE0aAqYVP2UsOloqAYt+cb/4O4slxQnrf2o4jPF8OFU3mtZsbNNPhOGuzPVJ8Ej2mMpMS00vr9eTzAXlAOte8nENrIq5RkY57fRVyPKl6zwj19nrdJqgA5J6s/bYprz8EUNS7RHoyW1yBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755100194; c=relaxed/simple;
	bh=01NsgKW3M2YQS/ZyZhTyp/lHLtaJZ4dRDgPQWRdypJ4=;
	h=To:Subject:From:Message-Id:Date; b=i/u07TgWEMSU5tlYYACxLh/b5eWwFM8WiexUlY1XFEklRXVinqVe8A/l0w520mOt59zQ01m32YnV+Jdhf5aMQsT440p5nlpVgYS13vpuQ9BU17MzK9K/5KexbKTzjzz9/xFI9PAA/K90DAv4/kRcBGDlp4b5dgcD3ZFnIJ7SqrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeDV1OuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeDV1OuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755100193;
	bh=01NsgKW3M2YQS/ZyZhTyp/lHLtaJZ4dRDgPQWRdypJ4=;
	h=To:Subject:From:Date:From;
	b=CeDV1OuU6c0nvrvDIpW0MPG/eu5JuKwyh3mJqcHuFIXqc5atoRg6rzus3SrYo2ryg
	 xk/gvCNyn6vg6qic97d8V2FTda/OxsWvLpo4oBj38seAPP4x/GZt49a2KL/jxtm/DP
	 acJfHaRSw9dO0PmK/rgl7nPUat2XE2fJpYmYfLfNDl2nTKqYFrGFAX5yhq5ILSqnF9
	 wX1Zx7QLBdF77F0Dxv7Yln0aLFf/rc5vuIqtZjpUjHWaA+KkJnMPRQYqnEGK/H+DSR
	 Xt2p1lwsIW9DmxgubC0Rpj6ut3R0qgyLZSCx+7QsddEUxMk5GO4YnN50HMaz1mvgU2
	 gk57To4Lde09w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91492C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510019358.27141.6883472845645521799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2803088e0adf95bd71059aa2e3abf08e015933d56cf34d169a5394d92fb5a2f9
Date: Wed, 13 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755100193
