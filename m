Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CC640D562
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785883234; cv=none; b=iP4qyluOgenbpp7uXLj/i1khaSLV9c1uU2ujvZ8C4yYuAlX3io19GooE4/uiZMZSkLEROubtDGEhcCJL7fzDJVsfhIDP+OEaOIg1hvjp5/GDJaJfUGlBrXA0AJhdnFo2CzlsqFs/8fjFvTAKby0PedM3qI0wM3n33w3iy01gpcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785883234; c=relaxed/simple;
	bh=s24tysYt4TPECJZ70LM/nZ1mUvYdnLLRxwwNzOdwNl8=;
	h=To:Subject:From:Message-Id:Date; b=f+dMC0TWxf6/IwCA3Lsy2MJz0/1n0blKmnqcbyOrATaRPGf14JMga/mnhZu2K3Flpccoc0DjxQQWOafLaX/k4VF+37Csp6aK/BCTJXUy0MvMTcWrt6FCzMNBA5vdgYZnFrNTvehGPsfYn9NDlfJe6pBPvpT3bmcI3h6qPJ97ThQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUUKHg/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUUKHg/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FD4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785883233;
	bh=s24tysYt4TPECJZ70LM/nZ1mUvYdnLLRxwwNzOdwNl8=;
	h=To:Subject:From:Date:From;
	b=bUUKHg/EX9xyeGb58EfbI9UhdDmsJsxI0Nb4oPsQlCn4UkaBNUJeyLkMbRW6wTBWV
	 phmnJPmaYYOJwdMND/xebTwbLeE1PaeEyoQgWlo13cfOAeuaeSU3LApnPBGF5IYKAP
	 MkSpPL5wRFY00Pj2TDM3e+/qXuDQOcXhQwFdtb4DqEPKDC88EA56sD1DHmYdVWXlTs
	 A1hMagHoTHxh/EUsqXau+16D2Jh8Jac2RWrZY2drQPupOTDnEbe+uxLHTu3Bof6xBW
	 tY5lFvlHw8Jzjkzok1qd32SOhgoiN5ZZ0VL8nXLR8cqTHKjXcv4Mo+HrI0s8T8WEQC
	 gEl1schm8xtyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B3FC55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588323371.25383.5465369023545790413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c534ee8e561657f667684bba6b69d75f649d19d116b0b48512c823eaacbaeab
Date: Tue, 04 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785883233
