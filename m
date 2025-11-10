Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1178A2F5A18
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762774194; cv=none; b=rbdND+G0RSBUT8qhxa7y818RHi/Edo5ZRLbZEb1+1eoTQ4Cf71H+xu/eOKXYhvbuxZU8KzB9JrsavTlLGlaYHwENmEUyL3dyAJfKM3lC0DGBMPA16Y3Znak26ALcaXJRESmFE4xD6yiSTta/2pCr7napVwDByqyQBcTTMPkp6nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762774194; c=relaxed/simple;
	bh=7vD99dooszlcF845XVHC1B30Ib4je+IzSec8bApwUfU=;
	h=To:Subject:From:Message-Id:Date; b=N75pnfLmcgpUgcTsstDAxgk9/GOLiFgGq7GVJRm6aKTlBetvLd3glu0l2LuScH+Fx7Rz3guDnX/XqetSSGhjP2xs3fT7h6G8mVzg/qn59YL12K/xTFw0u/yNZt/OORVaXd0iy10FCheJCq2HrkmBiYMwN+2hS858wlxi/XxFsTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ifmf8aFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ifmf8aFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA33C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762774193;
	bh=7vD99dooszlcF845XVHC1B30Ib4je+IzSec8bApwUfU=;
	h=To:Subject:From:Date:From;
	b=Ifmf8aFc0VadFlOPXdrCOpGQ6CVuR3YZI35AYi3sSNnk9v1482R+WgWLyQRsxyfhB
	 wWrOB3R2GfpS8/lxq263oRGQbn9zf+SVGWGjwkcvmd+b8lwXeg8gSKncRR863yfZlo
	 A1lAj8+Hfz/gICcBpmezBjinth2/hd736FMvuRYukMDTDO1Xh7AcAlLLPtMfTXnQoJ
	 jfpc4ZcC0TZ7N6xwrOhqyFfn48j/vuZjJYe301zxX/zpMLo2bsW5lHHnVVinBts4Sp
	 wMesmBukVynhIdvyTe1WuzFvbeuOCXPWQfBvLiClUPZgYjQ4LPPOBZ2AUlPGt6svQk
	 UM8iDIB3uru+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F773CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277419357.9557.12974983241113966045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881768bbdb517a4849d5158f2163538178a453c4afc82b8387c5e80eda35c547
Date: Mon, 10 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762774193
