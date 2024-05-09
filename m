Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4426814901B
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 05:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715232143; cv=none; b=tLWFunhstOombkC1GO4wGO7KQkK/ramNo5UPqWA/avP82TFvOreisXAVW7mdpdDvbEn8XEU80KD8TaRjk2NKkbRpSLEjjDX3cDIvj0/574drCv5yKAOFiqhYaacTF3y0/i+7CC+zF4wYu2UbHcU18lT9hp14VtkiZdJnlmAJEGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715232143; c=relaxed/simple;
	bh=0aPocbIZj7PWDhyhaWoURmxZ8tWQHPclsa7Bdmd4OGk=;
	h=To:Subject:From:Message-Id:Date; b=t4muQXz/JuSaebTyi3Sf0VBvS76fgHziFI6uG3QJwwEZUpefn1kn5I76ApFeqFhb+hQ8TuBIbe+4rBQp6j7zdxaqlkrWESh1QB5/i+S5JaIbmqJs42/KZ2YyxfJXSf5lWym9KYGaXScYJ7vfMunQ/bHjATVieNigkeJ4jSzmejU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQdNGq6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQdNGq6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5685C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715232142;
	bh=0aPocbIZj7PWDhyhaWoURmxZ8tWQHPclsa7Bdmd4OGk=;
	h=To:Subject:From:Date:From;
	b=hQdNGq6yXijRH4NzwUABoN60A1w/8tDi/nuNsibLbSb/qSd75mA8zgtXPooEAQ70+
	 PxBSR1pzreAIPkfl9LmlUCE8kk51PmsDueSytxqgseP/sSprj2KPprAXlpMSZgs3rN
	 lgP1A1uVDFl2ngVsQPo7KfOH5RIpmxNkzqtBdpfgX/cnV4K2IjWW/mgRkHi9Sh0ea7
	 XjwFn3osyul8iGiSf9503934v8qt851RvV5wrXSwENeV3kM3HOutIDIJs653IVlT9e
	 5FOtZ3+K6E7h0QBvAJzpSBf4UFIkT+kUQSHVdPgA/osfP5R+anzt1wV1t9hdEzlCLA
	 CLLu0MQevEhtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD4C9C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171523214275.13169.1474177738012935551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ace3e12e9ee16174597036155d729845257d5132ee0272bdf3aa6838a66c1b
Date: Thu, 09 May 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715232142
