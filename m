Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1ED272802
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757699394; cv=none; b=sk4OIGaXTFA9nhLfbo1O2mwFiWY4OCXLY20CmvRId+kUOk3gib/O1OWS7kbNv6d9HZLKFAc1/8I+31hjnJKx6DcSjNgOaENxCffhTZebUJUQzGtmnAvTHfjVi5h+qC4kMqEgDpgSBWIQnnD+AaRqDW+tR2Yk86qpCAT0i929Wgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757699394; c=relaxed/simple;
	bh=XdEJN4+/x4StpPRlc5JoALdi6SMve+/MZ1zSNQRR5lQ=;
	h=To:Subject:From:Message-Id:Date; b=J+PpJH4BKXo2aMFpK0WuooQ5Fd67aygn+GDLWVMYToAIiR95DeNL186JoHQQhxUlDS6ijxZdMeH8Z204Ac2vSCo0Ty/q6gmIJkPjEJUd6VSlFEIJ4uL7qNPeHhFVVcKsUO0vjobE07ZYpfUFd9s9EMn4//vjop434ZwZvbvUI1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sf7vR4HC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sf7vR4HC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE9CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757699393;
	bh=XdEJN4+/x4StpPRlc5JoALdi6SMve+/MZ1zSNQRR5lQ=;
	h=To:Subject:From:Date:From;
	b=Sf7vR4HClFmNaY599miUdYoWzEko94crYD49vMWFCyyNUiJ3gpQGlupzKrnSxfBCs
	 wTmCEXEA0voNhyu03XvXA0Kw2J0zWQtzjNr78qh+qqHuXYXYA771H8jf/4aAn+TEiQ
	 qrP1PaqIW7ZsTxWrwMV6i73E6Hi7Ugg0+ul7GOA3H9nAlBKzFaDfyTlrh3yNRsJTgx
	 YO1yzkrbxODWybTeFAtT4f/TyUxLrgyI8eJNPQ4eknTUDOaUfsCJBf2mVnhOb7X3Zs
	 S2/BeZuZzzRvlbA9pvDgvK10goV7ppC/bUz8u9YjVtANCijcZ8Vvhk+Slg6Aqw03wx
	 M5Kd34ksm/cnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D6CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769939358.15288.3713322209695441730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d6daad6f3f6a35221373c8fdb09816078f9e1c51dc041ba0877462c2360172
Date: Fri, 12 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757699393
