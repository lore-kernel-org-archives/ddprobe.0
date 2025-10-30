Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432A02C2364
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761863994; cv=none; b=EJE1+4itg60zTObVeD5zZlHAH8oGLsspk5iQDhZAeOW3nydZhMTWRaS2dIOCV/lDENB0GEv7Byb4ox26c7Rj0Qmh3iZRKHepPw7rnWfRjD1H9wSZfVpfyOMb9Lnnju1bWOGkZFsVYt41G7HI7R1f2A6flQKUIOSC7WnRr2oasek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761863994; c=relaxed/simple;
	bh=Mbi3mDDfjMRm80JKl2DYvH7GgNSuPgBfeiwDUZ9BBZU=;
	h=To:Subject:From:Message-Id:Date; b=qywWnWYuRw8NDBXLP0sK463pO8pHgiOhtVFftnZAHXR98paGztSMLGEuwJReMlkqccCnGPkdIoViv8Dcq87hgHw5rgVXf6NyjpFcJ9URlam1tQ2cPVeUQ5ah/GyZ2wmOsuoy2nxembjgDBcTLFlwXEmyiYAXDJO/BvDY5IQfv9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5ESXxXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5ESXxXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABAEC4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761863993;
	bh=Mbi3mDDfjMRm80JKl2DYvH7GgNSuPgBfeiwDUZ9BBZU=;
	h=To:Subject:From:Date:From;
	b=C5ESXxXKHlrnfpuhbPXH+Dw8hAQbinqAt0BOqn+cLQEXsp0/PPElXj2ODowEFDLOS
	 6mk1q3vEzPbLd6y/lxTSHW0wbiv8canutvj1wCpDNuQSQIuw26G9emWcFZugTQdvKD
	 IQNNqQ2rsHdlYZewxYpiezKbz+ByKloaGKqRlwaHqxDSL2MBAOQLG68uJfqxmNrB26
	 a3HpoVRihY9jBirqrXugQz/wsCEhbWlRRaGkuBEQoH7q5c7nXbXbCxGLFgAsAu2kGe
	 GKj8wP314EnychUPBLLsUFc+ontx9J0nx7fYTM8CfGEvGBwFRWuCDPQq1V2VNswA7n
	 S5ofmG/Kp8dkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA5CCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186399359.26414.16964145131335870030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea23d8d44908b3a74fd0f1dca6c6b0fe10f530befd1fb350f68054ec5d4711f
Date: Thu, 30 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761863993
