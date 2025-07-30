Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9AF156C6A
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753843795; cv=none; b=PrufeHrMfx0qNK9SFV/l5nk1sBkvbtXskmdeALDDhzdCz/GymQurZbTBKm/Sdv7EWE7teCna9qarMmzb+0ha8oJlw+VtHjU2KL8gwcXTOeQNAh/FcHoCNlbLRZTPJGRF1PzGHAJq6gPK9w/f1xhZaJjMO6fkO77XQlaGikvTxTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753843795; c=relaxed/simple;
	bh=Da5Ozl1bjQ/eG+Is8udrFBLXt0nKO3DPB2nugWnx7CY=;
	h=To:Subject:From:Message-Id:Date; b=jg0ua6x9xT54SXSXt5mny1DKKLtmIJm3MIkL36tegzXdF7GV9VxJwbuWC7qZLmr7VkQpXZcHCoYBr4pjH6OrQpKx301u7LwH8vELkifNc0t2p71msz/mg0LDTTe6XRXQ4BLeK4y5Us6bIg8MFJ3ee8Hb80hlC+/BuO+D+g8uClM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQQql+6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQQql+6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B383FC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753843793;
	bh=Da5Ozl1bjQ/eG+Is8udrFBLXt0nKO3DPB2nugWnx7CY=;
	h=To:Subject:From:Date:From;
	b=dQQql+6G4pDb2iWdtiD11yrFe2PjYRRXFRqBBxlPT7oSqCwHbaM/52RNk+pov7JgV
	 LsOebtehWBeWtJ6VA0X6KFWMuwcXZsof0jShNMTiC8RENUZXim1PYaQymWLYqH4OGh
	 NFLMgH5XZy0Io/c+85GNnAHIBN+2o8gk37LVbd2ica9KDvBxHtzXTGAQ8SqsbM7AFQ
	 hqY6LWx0OzH6Ub+WClwGzj0Mk00RYodD5aE3524wHXRy6CkzdUqZXo3cVlZlemFZhS
	 +/MDl47qwDvKYycxqZoBb7A2lIybaDuqNp/VA+8YeaWTo8LQnskZBkSRyhsB5BRXtv
	 jqJ1++AJm2xFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C965C87FCA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384379360.32103.3523204239833357557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e50c612ab7b6521ffa0b207232b82417c59ee8dcdb17cb413dac24b3e587aa3
Date: Wed, 30 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753843793
