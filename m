Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D53A3546C8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780072354; cv=none; b=PHLLH1MKRIcDHZBPX81IOYdKrmB6QJzrjrsLBHBX+FjI/GWlBjrUmbIZJbiczBacfHcpFjl6c38s0BcFt0Resd4iEPhjhzRJpYPsR2p9NjKAbUXtI/sGhzzNdmQbM2gJnNcbnS2gh29avziBjbZGE9GHsTjdcaNTY056H6i0YaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780072354; c=relaxed/simple;
	bh=BVgaRvHIUxRNPYxt4lY+MQlKCgSl1TwDY9I+hUlD5b8=;
	h=To:Subject:From:Message-Id:Date; b=KCTeDrqY53xVoAmrU4r3fZ+Iq7qd+v/NxAjDTw9gfN66ElPGPfQGPARyweumkQs39CMREyhFhZ1qYY9j7YNc2nWXv4TLiiCbVybQe5Si3k67GMNj+4IQo6jG58Cwh/qpDa/BEGXSsp7hcKYuPzko86W9h55m66TQfjwXyN22b6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyQPRl+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyQPRl+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E945FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780072353;
	bh=BVgaRvHIUxRNPYxt4lY+MQlKCgSl1TwDY9I+hUlD5b8=;
	h=To:Subject:From:Date:From;
	b=NyQPRl+P5tsMHcRFbn94Tes+ZQUbJyv4bgfeJq2e3bK5WOdgXLItQRWkqSQfvGNje
	 KpqtMtgHwiqNCOTZx0AR6KIXxuTDH/R3IpXgAWUhXNXfQ71BLu1Lo/GDwf7E2/sZc3
	 Y6RVzT2JR4anD7vVJXCAcJRHzXiOTcmIPdVNPYRlmHM9JYc9q61WUlEwo4wZz6vVML
	 8gZ0er3lxy2KQjU/EqdI3tygmFC/ZWQI4E7/1nrKUPacQdgqRRdJsJA4fY2d2iwJkR
	 azTqoCuqTVM00MIA2Sdhab8Jr/wA4ixmdxQW8+6jeWja6FZl1eJLNHnun7G6+c7Nca
	 DC9BG+/0UHvdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44ACCD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007235378.10159.11194547836760446694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770491749d8379dff049675a938d8e17187c3289078a8f7e88ebc60435df05b4
Date: Fri, 29 May 2026 16:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780072353
