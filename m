Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455E62556E
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743882594; cv=none; b=LLRglBNIhK5NX6bUPpjrWE0gon64wIynZSu+Yny2KGvP4+fXUVMX0p5ri9SRjIFSu0M8Ocu8+MmFG5abBkAms9nngQISUCaQgCFhrS6GNBCqtkLKnDXHmp7H7MwLg2YGcx14fJkWjdAIKSv45F5YlqfP0mZF1WwZaK6FzSc4SgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743882594; c=relaxed/simple;
	bh=pspcHSTQ5hzkRXKDRB7vLyFY5LCb8ajaoAIlLwfm484=;
	h=To:Subject:From:Message-Id:Date; b=JoxhD2VcOg9mGDwD0r1Cyj2B1h0FjpHDOQ6GKYxn0WlJozMJ53LKfHESDFGPlwG93KUxtGQyu5mVMbleNAWjCTkL74yMqJoYoF3a5kKnNn+hQbjSTKmKqW4bboJulePahfhdksOIgVZNz8Eo9DpsYM7hir/NhtjJEQKCLyIb0tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCFVCOJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCFVCOJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EF7C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743882593;
	bh=pspcHSTQ5hzkRXKDRB7vLyFY5LCb8ajaoAIlLwfm484=;
	h=To:Subject:From:Date:From;
	b=LCFVCOJcXjZdz9KNginUpDSw+Vs3Tp/OiBfvEU4iJAbiHdLQ/aX1bkNEv7CW75+aI
	 5xiN4FdvAu0cBtgyhTZfYi+w1FaV+tGF3KCfLLvdm3Rn7CjPLFGhuFr51ivEcXxPqE
	 NAfT2HrS04uVsLKb8cZt20h19psn/MpK4omAISrV6a4TPtXKg+usabg5IWXPMUBSYy
	 CdkH5jza8HSf456M4H1g4MUVUoVs85yI0z5U/m87LG0LAL8jKIoA6Ba3W/hA/1A439
	 O/5GYSd6ueWUK+CdtZyUZkZ8a1uoYEioulO0oTXHIYO+KM5o6fDk+JswfTm0M86wv8
	 OpRzWVoFT/0Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A97C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388259359.23171.7730245569136935465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed31e767c9aa9f1ed9e1225ebc95cf3494f1a645a22824c8e5bb4ff4af0a85ae
Date: Sat, 05 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743882593
