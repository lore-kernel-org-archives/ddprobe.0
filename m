Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2A21D6AA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751279994; cv=none; b=sDARXqq9SXJ1/bIq4aPTT0w6WxvNqhifjrj5XmtFh+szUXUE74we3+YPClLsqVTUH0OD9RTC9sRrWvalYGGYCpSQK2O50dyNNtDLCVl7NCi1DGdhRLu1tFzdmwdAZs+G9Z3ZhtM3ScCiOQ9PdwJgyE+yxnbsVvl/4017og8nQOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751279994; c=relaxed/simple;
	bh=tBX1dSi9XkZIoko5tMmwlbU2CJrV/2EtFlpb3rrGsjI=;
	h=To:Subject:From:Message-Id:Date; b=BwU1887x1rfVZNCo4bx0t3qM6kH7LQfWy1XZz++Wta1kGTtSKTocn0TQuXm6CnhW5R4blLHDigvnn0c2xY3eEfHfIjtg9S32mpi0I86gvBGEJ5L8Xc5gxpvPw7HylLBHgq7+lC5vDyfNIpTcEMOa/IB9a/rgGNNKGtnwlyMkDNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NguYvFF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NguYvFF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB42C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751279993;
	bh=tBX1dSi9XkZIoko5tMmwlbU2CJrV/2EtFlpb3rrGsjI=;
	h=To:Subject:From:Date:From;
	b=NguYvFF+k+1EhQ5v4x6hNiYllIUVsN+SIIGKALC1IAJHs4UK/Z5Kt/cxH4afV3+Rl
	 4giHenqcsHQZmuM0QjGYCa1/ji4CytkCmPsYzIFNfu9C+RsWQVBVxgmC7sg88nVjzN
	 wtlH8EhVrhE4hIlZV94q09f3hQTPcO+NKlVd87ErLdDAX8FIJz8aKIhfbp4H8kqED+
	 kF49jJsPM1R3p0WyvpBStSaX0JrocDfGEwmniRqXEWuj225QaPyaCGGdpxxvg6qxOU
	 HUPB5vlVhiRBU84MHRQ2CJJBwcmY4l7wDhm7DCGvY47WlTJloaiaJRWuEC7lHpJjRd
	 XiNoaO9Ih37mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E35AC7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127999357.25976.8874107443990008632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9227f7369c06226da516d7b78897dc7fd19dc997c3b2b2eb5508ce60ba4321
Date: Mon, 30 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751279993
