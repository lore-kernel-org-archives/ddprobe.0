Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAA5385D86
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780517074; cv=none; b=YnojNBWZYYTpdHkDmakZ/CIGnnpP2dBwerWkdbwzsjg61cEBPoy0jFblhDq/yGwM4IF2FnYjOO/WaVALetcVibQsZD+vAwAPll4HMg6oSnNaQdpKYd7YO0SJV+uc6OypZicSG/SJKpP+BteLGkZx+KYUATNbiVltdAGGmPHR/y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780517074; c=relaxed/simple;
	bh=/zY4hYPSpqKT5PY1EoEMGNUU+RPLcy5j1y1RQrHtkfc=;
	h=To:Subject:From:Message-Id:Date; b=inN5kiniqap2ioRJJmKw5rC6NENb579fZZ8poxKMQOI8Huclz66Y+bV5L333eHzOWCStitLibbkNcMNRKbMyoltA39MOIbQB1SEOtSj7t/bhOK9Qkvfm0NuCaWJcQos18Kbbn6VdpkJ6RabaM+GET88nPVeTmaopNApuWXN63rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiO+4RGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiO+4RGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9C4C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780517073;
	bh=/zY4hYPSpqKT5PY1EoEMGNUU+RPLcy5j1y1RQrHtkfc=;
	h=To:Subject:From:Date:From;
	b=tiO+4RGWRJZeQdNGZ8yKxIK9JL+UkipknQWolpC6g9FLLBdcDSgle6V153N/WzTlh
	 Y+z8wdSEUMiOlSzCXYYTeUpBT40k8Iu/q55edFfCXGJK8eh9yZDchTmnvoBY/+M56X
	 uTBsQzIXnppc/zYaoxVuLx0KF/Ykips7zrSqm9gsq/XFTuN+zX+Xajjq7ibBRIPHgB
	 nrvceDU88mT6dsicq3WdpfTbBjSQizjX/kClwRGGRq4IV4vjcZ9gVToAjqHQqXGbHa
	 xB1IJXWP6ZkvAmtaFGNZ5GRlBhfVTp4R3ZGbQhH3paoCX/aqZB9e9/0fkbjU1dkSEe
	 xIvc4yBhnJFlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF88CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051707368.22101.16685454844742091556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52eed33b239cd8e4c5813a386bc9878de6e23bb05e3c1db83911f03c09b52f43
Date: Wed, 03 Jun 2026 20:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780517073
