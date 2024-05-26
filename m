Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7345A79C0
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716707663; cv=none; b=MDurxUmMgq54OVLmCWCvRFxaTBlxmlugMFT7N2wvPpPFW6Qv6LMkdGrNphDgpt1CwmFoSnPMH5AG1rSOKVDssFjt27PtCYSogqKoHzZG4vfXfzmK4hDcdw7s1uwOWP1c1ike8+zKh9Ltnaw/QEXTx4ZZzxTAxM+EG/w5guPAO78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716707663; c=relaxed/simple;
	bh=OKvPhDSKUL2xXMYWMolUcW+t/jNgpyATmeQgFnrPSRc=;
	h=To:Subject:From:Message-Id:Date; b=dX2SEO762WbUPbBw9uxYmmCHemc/gX03MUwpLFJX0r0GtCwme39QSmT3Anlz6qA272n6LqDEW+IVRfZZLeA18+qS8d8MUIG9MMvFmyCl0+eOeA83trUsEAflHHqFF19MxcOZvQTx07xHH6iTQL1T920oKAyk1zoyYodIrF8J9I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksuFtSbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksuFtSbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0A8C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716707662;
	bh=OKvPhDSKUL2xXMYWMolUcW+t/jNgpyATmeQgFnrPSRc=;
	h=To:Subject:From:Date:From;
	b=ksuFtSbpjO6tmSbA3oZJE6REjuM2Z9sIBayzcA1zqMt8KbMPRYTbi6L/YqGE0EDGL
	 mKTRKbcHrwow54YfhJWF6TplCw2dy2qpqQXhqlp+PsFIstnihqjIS4CwlUgd7Ut+4C
	 yH5tg8Bnv3huvEazihZzGqFowD4lfiVfpcTZBH+9OJNQRfpngnFh9lk9ltaIDfg9de
	 MqdP+FTxRae9xYooU8fkSSbOInEVq1xVj8SSBCpFa/0oJtaZZRB6tA4ABUivKYny9B
	 62SOD/wfmeBisxJvheLxN25n5hD9nx/Oa3mq8BG65pwQ6/oqRE+kuRUZEgcwxwBsLm
	 wh+iCiE55ZhFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41E6C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171670766276.6498.15192160508812108936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4ec42319cb348761d5a6ba1de879129894828119570428f862ab79434a55db
Date: Sun, 26 May 2024 07:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716707662
