Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5878C374E48
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790576434; cv=none; b=PnhtLcrREhP9oucT92Z8TP86opizFcDT3GLRCwbzZ4Eff6xevOUqJ+BQZ+TE/xr/Q/QC+AZ2gA6c0x/7pdi5IkUOc/VqMZEAA/4GRWtsW3rJE/B5m+lNcPBTTB1Lo7No9mnpJqc9orXLidcJbon8U70yLPYeWa2lGcR6UyBB+9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790576434; c=relaxed/simple;
	bh=XhrhKQDFz87TPEeIsIHSFeUFsYlTIpeCkuOfuDh25h0=;
	h=To:Subject:From:Message-Id:Date; b=lIVG3x7yuIGTADThpQ6mckEzfalSDR7vvFUorXGeTVyY1Uw0sucT6t88PlK8T9R/phRRwDv4mhMc2ZZSSHn0mK/yS066lyMr1na221A8+Njr/e66NQp2PgzpWdL+Cl7VA+TRL+64IFxUFb2tMRakEGcwP0tJp0GMf4STxyVwSIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI24B89Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI24B89Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D068EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790576433;
	bh=XhrhKQDFz87TPEeIsIHSFeUFsYlTIpeCkuOfuDh25h0=;
	h=To:Subject:From:Date:From;
	b=NI24B89YBBWw7+FpyzZPxj6NXSjDr70rzXB+s/jUXQqosKM+14FX2CJ2rL/BeG/6j
	 zDuvmgHgxpAnsx386v9NVRNOnBB9172nRrmTh3deqlhMERHsqWnk2GAIsffM7fAsOp
	 heTyl1I9FQ/HONrLnKGMumA6L40GdXf93Sd4P+YxYdcoYJ/Bj7+1GQJzwoapEv6BHR
	 4d4XowFBNN27WW38JHWMkrh3ktLX2rVE4pRgvV8VJcsfby2DCokMi64YuA+JHx12Wp
	 Rek0viZ1UB3G6C/qAnNf32/sCJYTqO6FpaVmCrSsZmuKyuxKqa7uu8hflfDyMqn7QS
	 XnTpDP3qizjuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9F6C9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057643369.2865.2826458052870777913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fbd786820fe69ba09c6d65818b48b4cbf402141b39702a9d60b346f05c79a1
Date: Mon, 28 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790576433
