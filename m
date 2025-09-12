Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35183306480
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757682594; cv=none; b=qfk7QjdnZXUojzQ2vZIMS7MwOMWCsu8CTH3S7HgbXvM5acUvzbGJP3+3PXx2oNMXh+WbGG6s7Ox3/NjA72GYb3vLVv97NhnFb6B8fs5l+61Ed9vfsSoORdr46+n4qItGY1LB2V+7MRHKH0EOOs1Uqsr35vI+Zqila3dT1Ee+MKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757682594; c=relaxed/simple;
	bh=SeOvZF6esl45QwlXGBXEM6vwEKbvY/bhlGRCBLMOcl0=;
	h=To:Subject:From:Message-Id:Date; b=qmnP/C20pae+Rpud8As+m04p26qvH32b7Q35ObKvWO9PBBiSSNeS8MRKTxoiLBan/8oBfP/Q2OXrtwL3WX8hfVOZL23T8zA/22/s71hHyEKAOg8qxlSokL3rJt+C3u+rxx9lgcpUnzrWX6LUV95P4cjWbgiTzb48GEjiKek2XDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOGEgqBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOGEgqBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B82C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757682593;
	bh=SeOvZF6esl45QwlXGBXEM6vwEKbvY/bhlGRCBLMOcl0=;
	h=To:Subject:From:Date:From;
	b=SOGEgqBqNCz6QokkncKP5VbLlRBMRqhjQkXSaG59weZ2rY9xRosuRsuOuuciI/Pkg
	 jUXW8SRm7eOKzGnTZHuzAHGuqYSuVv7hYIMVNRCGEm5FPFjVyVSB2EnlQan5svZ6r9
	 n0zlUzDXHSJBt4NSxXgXHhghHEuA3o7qiY4il8CH2ymsCMIJhxFkatFs7RJIweHv6V
	 FDB0/ti8h8sCZI5P7Pymp8tvzbG14fUlISZYHN7iFTBLgsPcCcjwkJa/sahcDcElqk
	 VG3sS6tPbfXzaTa5/P5QoUSwjRZwHZzTzoVIF0k9CvMgAqI+b/EaAxdIH/Z4WqKscM
	 1nmRuyN5W/OxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D5CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768259357.3586.17218905286380108185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f96e6951fdf9fb8776d2288d987fedb6db1a3468de5ce6d764b0b667bc7c40
Date: Fri, 12 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757682593
