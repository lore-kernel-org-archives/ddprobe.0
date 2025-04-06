Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1E5256D
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743909595; cv=none; b=IckMOv9xC323u7D8UTU3De5A4f7ZlQYMvqmCfMaNWln7Epg2TR/vt0PgsqBFgG7as8y1kRJwBn1uQkXYPOsudxmx1fp/0pCwz1fZREnqB/FPtiGU7ll7u5f3MPuY9zyNQrb0IJcxLQ24zm1poiXUEzvScnq3qKPRuezi264iSUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743909595; c=relaxed/simple;
	bh=fSAahT9YASyz4d97kGAWf9aUgVq+7D0/nMBTlMDgs04=;
	h=To:Subject:From:Message-Id:Date; b=t+1+wT8xfrg1z9k9txUxYY9hbhD3Kp8JsmsvQTh5SbJHvW3FNzmMLfRInN3snzlH95N1ugJz9Rn8e9iAs0pm+MQlFMAMAg9bKPUF5VBezhUn05AqKMSxFNIYBC5ZeTNRudg8XWC/DYfy0GUzwYQX7TEGn9WrmHl1bwslH2y+0G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feKxzF5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feKxzF5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A4EC4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743909593;
	bh=fSAahT9YASyz4d97kGAWf9aUgVq+7D0/nMBTlMDgs04=;
	h=To:Subject:From:Date:From;
	b=feKxzF5jtjtfSMbWvFelyx2Uy+UWV5qKZihyFwE4+Q8o4qBvLFHm6q5NLaG9SX4ds
	 FW6RFqNndeXSCwoialEfrJycsq5b23WeRDD3hFOkUyKnWcHZgklefyw5c82vVPyUfI
	 k9sYzS6bOeCQKgsOsSJk7COTkMdDHCe4TLNZ8Goe8xSrpb0KLFaz1dNFi5JA/Wgxnj
	 bSY5y11bwwm+PvAGKL/yoZjCqZTh4ykpkq/nfJ0hHfF45rOvBd2CL2ebCraT6davbJ
	 wuq6tebTH6saGSfQX/9IHc3vXCnUjqq0KNAXkv4fg4Gy5TNEUDXbuk8hIEjjDAmjD8
	 JL0bKqonc4sGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E16C36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390959360.28673.9665817849594774373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4e8937680edac7e3ecd0051a0ec18096d8046b40099a2392ede66e2e432fbf
Date: Sun, 06 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743909593
