Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A59E136349
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751749794; cv=none; b=YXbLt2o9JwdOUj5GyreEM1yMi0r3wE3ywzRl/hhxLElsdSdsgO1dj5CNM2D23yNWtzB0Wqc3WgrVwmDahQRPTK1kzN4SkyFNW+ct+O0qZ69GhuKOLcpGslHDZyw4QUMtLFGebVmPhmL/mlnP95WY8mn78kh+oKQqGPs428JGiCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751749794; c=relaxed/simple;
	bh=kI4l5JqHVomszUZ9BdSBKrxGpMEEaOmr/oU2BC+xfqo=;
	h=To:Subject:From:Message-Id:Date; b=aiuTMo5ORpVzFYbXZsqF8ogNW+JxfVVsEG9Ot3lGj6h/jla57eliKchJhY6twGUvaBteQ+YLSx4Gir1fwgzSy2zM3SmZP0VIkwMsHsrrdR1dglp8+3SAZwQQgX73m6K+EC0jeemQ7vepfBimvBODxVmK9oHR59wM9krT6e4VM4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsAufyVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsAufyVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD03C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751749793;
	bh=kI4l5JqHVomszUZ9BdSBKrxGpMEEaOmr/oU2BC+xfqo=;
	h=To:Subject:From:Date:From;
	b=WsAufyVDupI4xCKXeMQRqM2Zb2lXDTzvtIlG69Z/AOECsUDQCUM0g2A0Yxt7SJNSo
	 +nsDIk5LsgQUwJoKyQRAQkIgPmcCZIbVpr5Owxvp0lp6S1Z/dKnM/NGVOMmbIJ/1E4
	 8o4Rd4UqE+5tr7l/9cz7zsvomK83TzmXXenfIw+RHUFEDTOOZ/LcNIUuCXf2OpUn1V
	 Wqttj+ECieUYUdckC3pvP5EYaoU5zkdEtkvg1T3Eq0ho3kR2eVEHapHc6PI0LI5A5t
	 ua1+PDs/PV0mxX1IIX/GGymoDwgICv10daYCS0o9TfvFkkb6+Gb//J/VGSFLgoQM+A
	 MFx+u9ERQVG0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9186CC83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174979357.13424.17624169316637955715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23f7131a0b32bfbbc4e3e4ca76e22cf8b1975191ffc4181d413a34a78a8f4e4
Date: Sat, 05 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751749793
