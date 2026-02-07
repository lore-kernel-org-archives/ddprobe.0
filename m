Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF6F823DD
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770466434; cv=none; b=WFQ6SOtA5fr2Fy0OwIclk0Ryl/bNV8ZmAvteRaYP+nxVrzrW/9ymD6sPDoYVcLf1SGBUVZCR09GWV0o18AKG3ClAnC+3JkmknPFQ/QnBqkIeuGRFRuvdapLCUsHH97+rRS+E2qLSUCXkIDO+NvSFTCUkkD2Kj92gGsusPVY4KLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770466434; c=relaxed/simple;
	bh=Ma7JHPfNynLq4yxoJIZC3BZRb3NFyCktWbmDO9Q+xGQ=;
	h=To:Subject:From:Message-Id:Date; b=lnb9yotg78YtPTSs6p2CWVeHruqmbGXjb0RMOq+S/R8qH00rP6baDp2IWWxzW1YIwdmFZfAmAqe17bAXNXg+ENjuK0egPjXoHMPBhYOGMH7ko0osKaxBBT9fo+JtvTNqHeCVorAnTVzlg0mt3sbH136zZOF9OKxm3aW5noB6kW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rez1Whd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rez1Whd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FF3C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770466433;
	bh=Ma7JHPfNynLq4yxoJIZC3BZRb3NFyCktWbmDO9Q+xGQ=;
	h=To:Subject:From:Date:From;
	b=Rez1Whd3RDcbTyi7k+FFmqDkIZScsGskHnLg2QuLY71psB2G8FSJmhQY1NANbqQxV
	 sBa8iHaPxAfO27C9HbzX7bOUsVEUPOkIuVfIX7JNAIevoEK6OMe6V3nN23mhpWvjhu
	 I8nWwh0Poss8VYgUIitXU9Y8/X0ytEUs8e8MCHOH8QbuxrvgLtRljbvzQw2iqAqc2p
	 mY3e+i0I6qXxtB0bAfCaJu7zFfzBtrcucPtAy5NmGYBMxtxYPBzNbcdUniVrmVE0sA
	 3b3CDdmPzh56jA6CBs7N6noYSSMXACOQC5lBYCGWl2VtcPJL5aLvdZ5dxYcxfFs+w4
	 /qrKQ2pmAvG4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B1AEE0ADC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046643358.21604.11729926667518548436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558c5da85b5fdbf09b573d0ffca1d1c90396b3e48b651aa829b88bd5d0cbd651
Date: Sat, 07 Feb 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770466433
