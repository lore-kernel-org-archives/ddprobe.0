Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E20B3E49C
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715944943; cv=none; b=RPAM6ZwCtGu8YzSY8Zaq2jrZ3uOOwaU4DAI2sFo5lk4KRiXuceq2X3gajQsJyEjUmfwmiNcsvh/3D11rcgn3cr/BPO2rpYLktz6rY3SLiboKjV7bMTy01gm9QTZ9chhEuBUeRteJvIMoAtWuO1dhQt/vsTTSGJGzK0TuvJw6Dyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715944943; c=relaxed/simple;
	bh=mkvmQdNd+aQIkDM9FaMcNxZUvOfoay1WoB3IC9fbW9c=;
	h=To:Subject:From:Message-Id:Date; b=HLPdVDNR23oDUeS/OTFQQkdx9jK2SjbDlfSyzQD+VZkcQ+L5CzI05KYCIfi6pA41aZURadDfowt/QV93xVkG492qfq97sFo0SdYcyQ2720WaQCt7H3Fq2F99zcHkCmko2C6+jHhzZnX4QEjaQpeCAAkLeXjyLfoAA4ZRGBTHa/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vF7zA3Wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vF7zA3Wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46EFC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715944942;
	bh=mkvmQdNd+aQIkDM9FaMcNxZUvOfoay1WoB3IC9fbW9c=;
	h=To:Subject:From:Date:From;
	b=vF7zA3WtRtP589lp2snG+6Jx2FcDYsHZiwbo+UYhKu08QtGB7zOgoded1OoaLFagG
	 8mfQ26zPR1Iokuqoi6yuuKwmH7WVIlTmukVrfQJfMRVxEf57CVNhYukeL0gwm1lNiQ
	 4pz3xS6OSU2ecY5jI1Y4D+Q/kGbjfpjMFiNNSSfzxPXZ5XHiO/UwW1VaJBVU/daeGe
	 B7b3HrfpfAyUyi4WC1vm9mZcMF2s4paI8az6mzxa6r7Pocbid9SlJQg/wESlt9XtC2
	 hzwNtnTuQbV/NESoGiFuSct7ZzwjaRcru95muW9Ajts3tSSjRu/Q7iwFnv0qX8H77f
	 y3AdKjYNHiPfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12DBC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171594494278.3257.6409008985236162190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa97267c278fdba38c7df7ce995a7def49aed8c5fab949b139eda1ce3da49a75
Date: Fri, 17 May 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715944942
