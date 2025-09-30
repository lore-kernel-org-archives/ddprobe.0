Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297BF35977
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759196396; cv=none; b=YLM1A4x18nqNohMoZqg6Rt7sn85/zsp6bOA/7WjhZbk3jkX5oM4Fu8bFZORas0yvxklzHQBAx4jWh53AjrYWr+Ev6LkF54NrmjW0BnX2lUyEoOcSzWoZV9n7Pf23WC/In4H6d2pmLEPQGtmtG4NPB/ay7EGqncCgQEqmVEb1STE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759196396; c=relaxed/simple;
	bh=WauSbRgXXJC3MRw1QT3R87HJ/0Rl5QKtHUMABmDy870=;
	h=To:Subject:From:Message-Id:Date; b=i1FHLa6zaEl7JRVwC95KiDxxtRKAMcOK8IjHsRN6Q3gJE0gjTpm1Qr8Kd8Ihg3JqSppJQPzlgIhg6Mjun5VfJtVBXziNiA+KAlfffZlmMmhzUuV0lJOxZgBXBYmu11FvQH/Dxn2b5xV0KCfuFAR87dxwpCzc/pcaGPbUjFYOvOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEDUNt98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEDUNt98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA2C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759196393;
	bh=WauSbRgXXJC3MRw1QT3R87HJ/0Rl5QKtHUMABmDy870=;
	h=To:Subject:From:Date:From;
	b=XEDUNt984ePezqiEYjICcgwg/Nnl+PSL2wrPFFw/j1uLjdVlHWzUikRMXDrkuwfUT
	 vJ6D8p13M5IrRhKmZuqa4BGW0HD00Uh/M4DD1eRHgrrcdfWkvbheih4tcP1rUvvRvW
	 jxztE1sNtrkSPbF/EA1UrXurHbtXU/LgFYSvaXCcXLgCH4QACJo9iKl2TRzrsEgyhx
	 kx9djwm/HHpboi5IjwxSCHj9Yr3MPR1c8IBjF1F1JjPu56mnzhhn+kLgRCxYGZPKtf
	 YzABObZzRRJxfi3i8lxdMtN0q1bvk+Bc7cEY+yrUd1QOt7WMBps5pTW2izLl4CQCFA
	 fhTwV6vxDnVNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91301CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919639358.18211.9532344167849731494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f6dbb094eddb89e719aaf3ca9dfedae85103afa8b5f4ec0946f55a443fd926
Date: Tue, 30 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759196393
