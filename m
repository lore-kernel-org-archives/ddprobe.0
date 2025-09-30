Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9BF1547F2
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759210794; cv=none; b=PiSQUOTV7gv3Pw5XdlFNz+cuwUKcko/i/qs+Ngh+D6IQrsGAQGJVJT8GT+KEvOtb0Uc3TWp1Jb9iCVDJl2xLE8M9hateJ0ILWfHS15xmxnlDYJJyvBjHbFbEjsKks5MI90qb9dvAasvniGaCADDi3oEUX3EDpHYTsEIp/LXPZcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759210794; c=relaxed/simple;
	bh=xlsMqcVBwWAqHiZ/4oUqkqYXXVq4fNNiNv3bp4O1w3A=;
	h=To:Subject:From:Message-Id:Date; b=L1do03beZo2rBCl5pAsbi1LPK22RzdyECrh/k1NfLeN+j4R6FqahyuZjIl6PsF+x82l5+NfxBrcngX3WCoXKzo6DazpKy70r+CUeqwHsG0oeA5ry3PVFNCzGX4fHkPM000F9pKA3aCm/bOh8FQ3omK4odRle3jIJWSfu5ERIURs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0R5fA4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0R5fA4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4186C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759210793;
	bh=xlsMqcVBwWAqHiZ/4oUqkqYXXVq4fNNiNv3bp4O1w3A=;
	h=To:Subject:From:Date:From;
	b=W0R5fA4POxat7lLCfPHuM6wMTB/LAuxhJCp6lbwVtjeF863S2h3xIZVqi+aJNMe3K
	 mau0npT0K9nEnksSDKecfLwW5ZVat4VEa3Lm7p75HXSXbz36+R1ht9ocoEWM/wn1H5
	 Qdsx6HSIfKcad1VRUqs6bQ/Z52oDhnIFRDZc3aGChrQd3VNRHuf06I0Cjy7iGEOzZg
	 kwPm3G5ojrRNklVZ5e0CoaxnaQJcdo/8uPfeD/mJjDgnrDL57LV2iM8joOjXfDF9y1
	 tDbCLhpJuxs4e1tW9ipGdWTnqsjBmkkqFMSInfvqqW8uFpoy/7h/hibMquIWoXlsFw
	 5urWh62srki2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE8CCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921079362.12390.7479357188237265829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafe9e17ea595e56b81ac391456ebb3103b6201449e5442d850d880950c6e2f5
Date: Tue, 30 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759210793
