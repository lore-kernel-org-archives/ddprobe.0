Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104E629B8DD
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758809395; cv=none; b=JDRuIdsiIgXMA9PdNoRU1v5P1xrS3XI3iDbexK+3AOzVjTVHLblYK+190v2fosOMhQBVJ67zDLenqXayiyiV5MezeeRZSoTSK3VPJyianW1w7uswLSBoB7zBk3VlPKrLMbAeXSrFVkmySpdhJIs5AuA3kACSoiojG/oO0Vi421Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758809395; c=relaxed/simple;
	bh=MyeHYYYrMq2CXxMHI8xDlHXeY4NQZ/0Qxs8+oCPEg/w=;
	h=To:Subject:From:Message-Id:Date; b=HRHYdXtrpyNnvtkTc6P6+tMqhCZfF7qEP86SdbJradFZ/6LQseLRa2pyoegy5Svy21xfmGmAvIM8dFXcswPelgWNwMsXQT7X2mwzDGwksX04rw9ktjXWlGiKYtPRxqZN4VTtHUtkZPlcAYI2Kc7liJ8+ODQkZFDuHW0NlHWPj+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvbA8GPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvbA8GPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B5C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758809393;
	bh=MyeHYYYrMq2CXxMHI8xDlHXeY4NQZ/0Qxs8+oCPEg/w=;
	h=To:Subject:From:Date:From;
	b=OvbA8GPgKrexvso5hN6nlJRORWJLtl8AuNNWNpjYiUZPwpP9cirAKt2oVJOWMnq8t
	 VX/QoKjrpEbz0XRNyafpAs4klsXxH8BDu+iqcxNLIsf/048w52kB/OShMv6o6c7X7/
	 9DB+Jo60yTZVwKydsnqiVBcqe01qmVtVTLDD55hSVE2lhaoDPpbgs5ITTBbIbJuVCo
	 wdLKCMfheLVf1k+FH1SxXLn9rm0c2OjlJlWI2KaBA4kgI2oM5ajGDnw046TISnYR9F
	 LNe5pfwETWkUn6y0L+F/gz4VIvHEmEZsalrGmQxcZKO8BOcfH2WzLufQEvtTDufytN
	 sKLAfbI96rWpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972F8CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880939359.20194.12797313952698932882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac69574d0cc839607b5f15688076517ca2d4d59851c2b8283b8ea6797a39cb4
Date: Thu, 25 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758809393
