Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB383161BF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789624234; cv=none; b=oqF8gglLIWMxVBAaNyzm2/O8q9lWlmqvrHh8xKrL806lqa5GhEaO7AxEUGctlvEJ7sAlKHowP6tSc2koGeZrUXOiq+c96xvYNeVW/KL5iFmphea+H0oemg+XIZOFj2S1wSw7FXnw8rxLp/FmEF6O+hB2PR/7ytQXHsVi094bkfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789624234; c=relaxed/simple;
	bh=bKjN+IGRnWRoayObXLZYT3uMkvSaLLYg7IcbruM/gFg=;
	h=To:Subject:From:Message-Id:Date; b=QFfqRVjZmYacYvdrR/R8gC+S8wTuWIEfZpMGDnHMRcUsRsrle2TksebI5u+MDpwXED3KEa+O0vfGtUBPPtRE8r12nDstPlKEQnTMxvWV1MkyfYdzH2RaDKS0K+YNywD6QwnTpk/qNM6W4iE58OTQle4GVBO+bjR9TNTs2Etu7cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et+TJ/a+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et+TJ/a+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC33CC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789624233;
	bh=bKjN+IGRnWRoayObXLZYT3uMkvSaLLYg7IcbruM/gFg=;
	h=To:Subject:From:Date:From;
	b=Et+TJ/a+PzHqj36J9VyfPaQ/yvc3yzUysp9XEhXCOr7PKpGFc7xBp3xLp8mny4i64
	 kc5QfBf+HLyCwQFc6zQmns9Whv3NMZCQl/PrrHTR7p26d94pd4WpJu76rJp2p5Orta
	 Z63E1J935DYIZTif4HLi+ypD5u+Z90GV57yvzkL7ZRrswy3tmj+c7tCEpnZvH8RXVL
	 oforiid3vfQ/tUH+jsXlGTTZTYVci/USuM2Yj7uyUSeEeyjRQnZSryaCILTvbRZkn9
	 2fbIiZW64konHTlKkqIHykb93gvAeWpZb632b3kwZScGWTI0GhSLD6+3h1FhnWLCpp
	 y/F1RcqwuVkcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95AEC982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962423368.1070.11924790043209463661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83018e20f5a91707492ac469b5e5ebd936c13e60b179e40bbbd8b3d7418dfb60
Date: Thu, 17 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789624233
