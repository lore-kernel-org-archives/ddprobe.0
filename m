Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A7220F979
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737642354; cv=none; b=r2mdccXr1ZLmfIVlRdGpbkoK8tjoC6K7XE0sHvbcjGwC3Xx9OTLXO718QgX/Xw152tXqE3IMpuU7A7wDkh7/nurIGSE8rG4WiJXr66JnpTgV/QA+d/8QhhP2KYUmjHvnHuCbEly4miHidWe5l1CaV7HSaTjtpyGc4cGrNo6oJ2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737642354; c=relaxed/simple;
	bh=D/GBTtkag09AqI0DSaHfVHqu4E6pWyiMNOynxe3+ReA=;
	h=To:Subject:From:Message-Id:Date; b=hUVVz6P8a75DKlI7WXRy+l7N5c7XmqImblBTB2ijoN9+Z0PFd/rSzSEaI14+q7nYgtpl3ZAyywXjW9DumfnlODAC/SPLpUZDCDt+BjL4npap2wqD96ERmeO6lZxqrGMGE2Ay1QNBog3phSTIepFGnHut9fiDex3dF5GGjap4GJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXZrlH2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXZrlH2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B94C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737642353;
	bh=D/GBTtkag09AqI0DSaHfVHqu4E6pWyiMNOynxe3+ReA=;
	h=To:Subject:From:Date:From;
	b=UXZrlH2LQ61coaasHAydWMJlQyfpsEpt/Amb74D8Lp0HW83CpkgvXjLes8c8Tb7FS
	 50KsohdEnMgqaGOI2JAauoETwv1MwQdqRNfJzuTEkIiK5jLJmvZ3zOs2KvOSTnDIF2
	 1kt1vCi4OyAgbLpBmGnMTOtpgcc0itMVy8Ytu4khZ9B1HD76wTkhNkJhdJruQWBWJH
	 4fcgezvPys5hv/xkraxdqcxYxOPtv8mddTZAP1nK8XuigRCsMLEeRPWkNfSbrD8q9r
	 AORlhEHZk9TRfaedi+pWvvk8rfmhvqd8F9/7hqHd8IjdHYtm9ZjtPTqIeG07SecxEu
	 oONSnDRhte5NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F69C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764235359.1198.4794517864994126418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88d58050653fc62481aeafe06340c4d38917891faf99fabc922f569e98585f0
Date: Thu, 23 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737642353
