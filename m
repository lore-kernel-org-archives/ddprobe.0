Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404FA227599
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758952794; cv=none; b=B+8IeWB7fdCfd/TSzXv7MEev1kOWar2yBInJufjSFmZuO8dq6qGiN33hJXQtGHE7prvOnu6EwL7HTiri75yoTGazhZ1g5FkSJgOoI2CM9VVGk4XB+Q6W5yH2Gtgq9MA1QkYeLYBeTqPMHDOOyYa0a7x1eV/sexM+EGfi6bNOP9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758952794; c=relaxed/simple;
	bh=ajmYu+xPTyERUnuxvXCTJLZuowlmZlEf/8DqJWU/fYA=;
	h=To:Subject:From:Message-Id:Date; b=aPnSCl6HAmXEL8p6i5SMsJaTD6evG8SV8M/w8l6r5CHDuv0zIljbgOOowiPBcXz1VwUFyvzBGgYE8bi+4Q1V2cc/xAySwgQyrnXmg5IfgTJHHDSvEurC+QBtsRD7c56oZ4qgMSjtEGQ6wcgteJT1eooWsCSl6rY0KtM4iH5ZdLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eF4V5hTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eF4V5hTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6458C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758952793;
	bh=ajmYu+xPTyERUnuxvXCTJLZuowlmZlEf/8DqJWU/fYA=;
	h=To:Subject:From:Date:From;
	b=eF4V5hTPx5ImUKKbWlo+Jn5qLCUoBfHwqZScnc87jKNRTN0wG1YCrpiYJGohCreXv
	 F+LmI81WV0UavH6Re9HBH8/v0D8oZ3SEsamPLFm6YXqSliqypR02vS3fLx2uoMgag4
	 RoWKHXRtwnExvMFRf60iZDtpHvP2Hkbqfadjw/+eVjMw7DU4lkX7f45Bdzo3XMA0DR
	 Q5nlD7kxzOMdEtoadsCbEURMuFp2s7gO8nylu0uUlSDPS/nY/TK7XLx7l+d1kW7h1r
	 fPKo2Kk4guZ+YmtZJfwERjfoaoKiC/XytEau0gHe98sgoHzRN8/mL6KhHlXvckBQuY
	 mQ3BP2lSq7AXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FFECAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895279357.23159.3695766113075953321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54bbb9b7669303b0d1c5aff8974cbd504a3e0ac45e16967bd91dd68275167fc
Date: Sat, 27 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758952793
