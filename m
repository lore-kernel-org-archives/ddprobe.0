Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D504749F2
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790154634; cv=none; b=uYh8gRb+5LSGZ0+gHZ75m22ByTdtzCs7/AQrajH4gp+ZIbEA3NJCaGMPVf07oQX6xF42I6HKDyb+cqlP/kprmU5tJQ2S/KANhQrG9yNSbQNRuIds6ta3vu8Dm49OTL4sbVFMc1HqN+yi57XA5y5ROpeRJ+oDkwTpv9bDBEr9UkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790154634; c=relaxed/simple;
	bh=eqRRXELp6AlS6DZs7LSx/CU05gbuGaUfXfnvlnSuVTk=;
	h=To:Subject:From:Message-Id:Date; b=KamsV02a795TDoSslJvPyWwsEk40G9y3/dhfnGsPYH+QH9SPnUuCPelz7h/H+1eU+QIF5+xpl0T4QLE5nSsMKQt8CwAEbZxlmJUHBIBgscnZsdlTSj7Iz7tKdGqTurKCrEpccGaUoE926hpwPx3WRKqvnPV/Sd9KI9wRjZU4cUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjDsRGmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjDsRGmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE36FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790154633;
	bh=eqRRXELp6AlS6DZs7LSx/CU05gbuGaUfXfnvlnSuVTk=;
	h=To:Subject:From:Date:From;
	b=XjDsRGmioRQkp2WIGxGnoCaYvHQmRmZAuVo/8vCxCzti/ARw/3u+iGCGj154SZ1lN
	 eYnfGzI6m1/xnvz21sJLwOVJfPXgJjGfHp7IpaYer+uE6ERT2bDEswAJAyXq12rgFO
	 ZFNswLhheKxYWWqh+H0eBpfJkXhigmRyFby7bDLssFJmSWzN9oE3YjY/kQGDsEUvPF
	 xknkEERZzl3zrubvgjoI1f6PO/KB+eyVCZyZe7UlGSaDdpCvYe6eGJnlDQVjnSLg0q
	 RCRlLkoL3Fk673HN/xamLCRiGSqWO5UDSH4Z4DtXTcMJSQAEoByRX5F7STDQDoKgIL
	 OOj0dEi0GEfiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A48C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015463373.10331.2774922722919452228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0794671cf81f546d17ba4e0ecde4df14d206ca2311f66692e662fce2b8df09fd
Date: Wed, 23 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790154633
