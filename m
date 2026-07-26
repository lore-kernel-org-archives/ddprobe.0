Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46457175A87
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785103234; cv=none; b=YepcBoyu89cO++G8yGSVLBE8whWJ4hgj1Jql46uaW5pwLqf9zCfAsI5zUd3GUMt7gVOwBQkBGfG7EUI2ctnzxwc9V39wI9hdQTI33gYHxeTa+8GVaDc1d8GshY7nMYhRcbTwf4yrcFxLTnWdfhTKBjZCT9hYsBo8eycH9ygUEFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785103234; c=relaxed/simple;
	bh=dPY0+Mb3IaXyAM4JZB2S1Wz9gRyhqyxtWHZRqacAjd4=;
	h=To:Subject:From:Message-Id:Date; b=RL88jFotvpSNa6fEiIuMOBkuA9yDvw5ktnsFS+dw5qR4ibpFYifaLSXycCQP55eCXABtPsHTGMy+dEDje5s2yDnIjuYyDn2xCBo51uEx3GzDsqUJzEQjgb43JhdmweWy+nCv4qIDGFsL3xJVINEfA9Ca+egnJ+ajkEjfnH4j4jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXCI5sBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXCI5sBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06B6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785103233;
	bh=dPY0+Mb3IaXyAM4JZB2S1Wz9gRyhqyxtWHZRqacAjd4=;
	h=To:Subject:From:Date:From;
	b=ZXCI5sBwLfFWoACaHiC/YQoq0PodpgROGQHqzsnAFQE0ANZZlk84h5hyA1yumJvib
	 IWFgR04fvi+UNDAGRx8XdmVfe5T9ZB+mT6URv2UBvEbB7ObWzfs6Enbs1WcZvcDDNU
	 nVKvXjSb8W1b7FK3QNySZRheEhqGLDQQG8CjStd0dznnypNlJ9lInYFwvkeBT1msf6
	 FwupopCSPf1LMJ8VCEPWYmU/E79n5KM83QshXRhIbdTyMliV5Q9bIzFGjQd/+ifuoS
	 FuJvPEUmYdD4twijcSg/GJY7oGMhhnjHjaEF/5x4ZvFkjmOQUWICk/DGwEFdG+wU79
	 RiHN/cfFy/y8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5E1C53209
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510323368.18010.3278060938211288426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de74f623df76be6d1aa1a712ef1d1159f0d77f7b280233d48bb1b819491ac290
Date: Sun, 26 Jul 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785103233
