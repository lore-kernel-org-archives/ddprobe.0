Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C106275AF6
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757409595; cv=none; b=mBfIgcAIfNeX7ooWfI7RN5jeZ4k4xrsxYkfodQzekPRNwNXNg0hKCEPPP+ocgW3k4CU42lIR4/fARb9Ns8FON4NRKmzYfM7tCAXELCzXiGeoM+58qy85BBS4zNC02YinerdbrE/Qh7NkDItuIJbb71ko6tJPPURxc2nY+UJSUV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757409595; c=relaxed/simple;
	bh=T/NhUbkCgKP86WUtFVIQ1qVk6cqV4iiIKjOBgV+D9/0=;
	h=To:Subject:From:Message-Id:Date; b=JKfVzjLn7623je/7B7F7wh9g/rq1Tn2tJ19SHcLelVvg26exuMI8V4K4qlWKipicgmxvpZsCrLOC36wnSJztcxB9D4ENb1lfU8Jb2T7oJOs7WVyhHMFgS0+PPyLAYVxnxuRebUivDd4LP1gE797DnSJwfBq2bWkpAaUxA2olKmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f28xbdtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f28xbdtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0E7C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757409593;
	bh=T/NhUbkCgKP86WUtFVIQ1qVk6cqV4iiIKjOBgV+D9/0=;
	h=To:Subject:From:Date:From;
	b=f28xbdtB0JfOsZWJNjDtEKdWaCOaQspzeuh2jixIR6aqaWj1+T8qMP8mT+DO12hZd
	 k7YxGAiSfE+w3Lg/kbvqdTpOJ3FPPvlRrSoB+o192At3siZc8R1lR2wu5hPEuoISqn
	 r3SCdIGRXnuuckfX6dgM8hEZ6R88AFGXxVYGKMzscZK/3R/hR1UdeVTDZ8HI8FL6Hd
	 Q/hpzSX2DSS9Knl5menW723mMbfoebD2etrw908qxdtZaRKawDS17jdcK3UCF0r2vM
	 QdzcEnADJXcQS3TU/i/ZG2Caw0EYkElpVF9B0WYMdcdPMjZEWcHP+qLYJ+jMIPgRC/
	 M/tNJaf5n7xKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA26CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740959358.844.8417107827210032620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8bc9a3bd5dc2f66568e56baf814d0bcc4564c8f40ccada2bdadf7b81fcf3ba0
Date: Tue, 09 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757409593
