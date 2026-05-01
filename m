Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF601E1024
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777640854; cv=none; b=KF5pmeG4N+WQvacrop8kMAgiQotzJtYl73nx16280ovK/pQtV31kSetGfMEciGvcst0hbhZ1w/RuS638FXlHKVWCawT6Y474V0UePLA3mM8AnDnGo6xJEipotABVB6sJhusVAZNXXxf36iCMTodyzdKC5z7fMRIZQUzXEtALTQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777640854; c=relaxed/simple;
	bh=t3KSlbj+QfDfCNBcp1aLEcIKMvmd1VJA8MMjTUHIF8Y=;
	h=To:Subject:From:Message-Id:Date; b=Ctg0TqeTekxX5DeM5Ra6R/kSBi/U1h4+Ohj1T1FRf/7FuO6/JVtHJfysrVaR10hqBvotypFr9Dw7rz6tFAb07GlNJgFqYYV8d+x/Zoxiqp6tr3Te+DSjrA3rWz4BQf+TVDXkpAVzAScK0jMQ04MIwWSQCj5yHQRTYICZ6GMABso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVFRMpcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVFRMpcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7ADC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777640853;
	bh=t3KSlbj+QfDfCNBcp1aLEcIKMvmd1VJA8MMjTUHIF8Y=;
	h=To:Subject:From:Date:From;
	b=PVFRMpcm8lTa1pSbg17TzeAqehMv4ohsQa54MzAv85H2nNjQdOqh4k1SF0Y83wR/p
	 1DrEhXDXpaw2DGEWF9pq4v5J3m+MUUbdgEUjAvoQOyckm1H/xPf3I4DBvNqO3Sd+BW
	 G/sPC5o8//zQLJ4AavVzsU3ZrlGTMYz89DpF0JAdoeYJiAGl3Ei5V9CT+RAeNUKS6n
	 G68OjsBe24BS6ZntfLRMtpF/jPdrp5RUXJ6JKjOftzX287D/6zk0mjqrgww5Nq/MsM
	 yYEAS4wRvxyVfNEXn4yPWAJhWIgjiGsXy43rimVGzkx9UBnCVfTnVWlfthuBv3CYoo
	 lNC9vUzX103Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B9CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764085368.17085.11029752047601565083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0bac15d956dee9f0606d00fe3987156886ebb6b4b9ae9467430ae44898703c
Date: Fri, 01 May 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777640853
