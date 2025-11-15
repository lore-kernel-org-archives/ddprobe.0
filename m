Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2426F1F1315
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763204394; cv=none; b=TAPLJjNpOPHqnzOpLYEG4MvZ060HC3NqFukEcMAZP5uuRPFRCQGKwzUwhpJi6l2ih5+UnElf+zcCsuMCCR8KFn6qTHS2YhhbbqLMcXiTDS2EklnhCadz5VE2fIuz9ntbkr9oXYXxXsCFLFjvaTlogfrep0DvvTyH+M0U9dNHijg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763204394; c=relaxed/simple;
	bh=FP4lv6kv+ximlEGqKzyRdMB7sX306PNuOu/cdxnUs/8=;
	h=To:Subject:From:Message-Id:Date; b=JPeM88z/BmpeTkULvs90YpEcq7jx23MLCjFvgitlEHDvkAPgBZj3kYKWiypJFmAExMj2O7gP/7ZAR0GwtSyl7EGW7Q5drgF0zUbRmg6MWHUKxpMMJIMSLn2L76pj0AOR4kbjA9RGZlbB2W+2291Pn/hUdntSzNJrREwfHyfYZJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2zgtqtr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2zgtqtr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C27C113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763204393;
	bh=FP4lv6kv+ximlEGqKzyRdMB7sX306PNuOu/cdxnUs/8=;
	h=To:Subject:From:Date:From;
	b=H2zgtqtr37d+LBLy57rxtRA599C7s4cVprt//fkVszvjNqDA86zu4dHaqFzHk3cf8
	 x4woVejHfjKU/8fnyWs2B/Lp/iXFMJFjZUCWkbaz1fZODz/v2FIUM3lSQxoIH3v6OU
	 EcYuhG9Aw8Vdrwi0TDP75kVvNguTBHq1uQzhNrwLY+W0Wwg4MXJZ9Oo/HNop+BoT8u
	 KPvGEW9t7qYn9+syvPYThfK6n5FfJtk+feNvB7SpV1FYAez4WyDT5VOP+HLRuJfFdT
	 faJl9D9qK9h99N1XVJtCWcOX7zR477yg/2zbJcToZPPwW8bdIdOWN0LU3QUPs7thbQ
	 SYS1ziZAntMGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEE0CEB2CB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320439363.29420.2172605817639416185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036aa265656822913edbfd789103f34be24971afd601ac558a6fe660d87ca3d4
Date: Sat, 15 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763204393
