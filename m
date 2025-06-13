Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300EC226D18
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749858594; cv=none; b=IH1m2r1P19gbsbk8ptkw+0HHprnER4g8kc/QaUWIbn5/CDM/gwj/a+WomltNql4LbNyDovLo0Qu5M1rKlau7qWBs+N7ergOuR63H7WUvOyHpXgap+XOLPxVgCtIdnyssEqVn0XDIz8vQ3aHbINFlrZV6Uf0nYQggtMc+EYh0KCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749858594; c=relaxed/simple;
	bh=RGn4l4XUBFoirqZguMmcmdAC5iKY+rtglOOXO4NPajA=;
	h=To:Subject:From:Message-Id:Date; b=IcYmasiuMVbIdYuAf99goHPzHukQIOaQDzL0gAMLfBFhd4p3EOCcWLkaOZ+1mcODbwdV5nu0uBIH7txVtBgGgpC91cI7e3F8o0OXgCNWQhLiVeYmsrOueyqguxKDCEUWPdGOpCxeexfrquJqBkvRyyU49GAvsHlsa1P1se4BAHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOGtjR2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOGtjR2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB34C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749858593;
	bh=RGn4l4XUBFoirqZguMmcmdAC5iKY+rtglOOXO4NPajA=;
	h=To:Subject:From:Date:From;
	b=lOGtjR2Oi7KrzXSI7Aon8oUyi24i86MJ8M8pfA6atWo9LnMVlttCRzXcWtm/G0+SN
	 Vtb33P6YUmb56nayov7QuEp9pBgjnbLK4EYNjakHJflGnkQzi+AIlmnu8kLiXQKZRz
	 MpQTsYlhCOEwK2gy4KRjuBl/LUYbvqsPqEXdy4Lc698IYXmivLLkBSO3KiWY+bzXBh
	 gfDU2h93++VwGvyd8dq//zfTPzS5DOYMzlc3jndi1RQhW9puSkcdo+gWhHTYDEGVr6
	 mNoRN3s/cYwTJPnpljplmnlVLyM/t0Mj/yLWWoi+S7s86EA1bxAHF2NwEXrC0eD3I1
	 XrssMwIU00t6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95224C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985859357.23349.8460317355071920775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad6927e5c8d4357520b8465cf302e32cb48b222ffda4f959288af85cd7ec559
Date: Fri, 13 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749858593
