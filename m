Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BA1371065
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785952234; cv=none; b=T5f2C7PXRxsmjhSVgPSyHvc00P5CpMyetSsvT5etS1hV1AL7Of/FyWoGTGOh7pFmzjHm2Sxwdtjnz8ulR+tdQuGxnyTOwt5H7U+nBoUp+zoroUaiu+r73Cie2Z4twkvEUe1DmM2UoaJ15EmiNe+ZHCpLdIytTS4oajSxzp4Gug4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785952234; c=relaxed/simple;
	bh=rh0fIwN2+D8gHDHEbm205ztsAhcfg6M9wEgkjLQODbU=;
	h=To:Subject:From:Message-Id:Date; b=WLvV+N2fG7ChKgBqsBg/R5bcshfjv/uF/p2HenNtfrmT/O9YuN9ejIWhih5gWNkbD18W3VeZOHRoEAZbO6vChPkLO2dizKJQp7IW9LpszWjIm/+A2O7Y3VfvKwFgsnEiqLouWgSoN22I8cyQwltTX5E957QghH2ShNlJa46NCTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p14msRn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p14msRn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1B5C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785952233;
	bh=rh0fIwN2+D8gHDHEbm205ztsAhcfg6M9wEgkjLQODbU=;
	h=To:Subject:From:Date:From;
	b=p14msRn7uiRTLFNmjnIh402vSdRdo/vA9cpjKBPt2j4zstjR88an41dK6WUgNOm7h
	 W7YOVEz6E8dMtHHw/HK976bGgSYJcxxlQiMlxQt6zn/l/EFrFMU90Mle1rzYOp6Zm6
	 UbVpg+wdzvRuvjQUTXm5QYA0ZOiVTLV+j6Yxd/s0S7cxdMKo/dphxGkKq5L64eE0QI
	 h9FfJJLoeg5d53nruasrAZkMTXsysbFg8NMwhp7+fYCYjl/92XbGb43OiRf/BTOgjl
	 DIJAvD1WpMg7WNPmivJQBEqMz+dAx3rLjXSc1Z9RHTa3CsqrbMIvP4N1sQzT9mw+j8
	 ISkJFobvfPFJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CA0C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595223369.11891.10559455252059878868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784c0a98ea0708d1f6da74cb4f905c1784c2a7429e05ca4abc402041d072729d
Date: Wed, 05 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785952233
