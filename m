Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB9635893
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747768794; cv=none; b=qEHTUM5ux6ShXjqHLDZ9PrTl0HfpgxCv9IGFgkgk095aMkhOd2m7xfION4RDWz88pmZnM7MMp/xCZUrw+97aFxvrVpoTv8/87qe61AZkOB3RHrCPQMp97SNSMENPUja8ylwfkjxwDGyyHURAKWZGylL+nbnWiEV7RYueOS/auX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747768794; c=relaxed/simple;
	bh=R7IlxU4tZQYq6EgKGi1ZDG0QYDBPPzBmnmvSsX82M5c=;
	h=To:Subject:From:Message-Id:Date; b=r2GIZmonkZ9jfKXYRVmMPndrdBBvdr7Fq1ZikpqZK5IUSf7v0eeGCz9+SWbaekIF97UM4qGCAeNlsb8G5QbUu913VulUvYvC4/VBWG8IMQNsaFVLrO6R8/nLoJasXb+KF22/XmMByEcH/mWVPukLNH8YQFFeWQk0E0dAPGUveJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Keo1MtTf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Keo1MtTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79FCC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747768793;
	bh=R7IlxU4tZQYq6EgKGi1ZDG0QYDBPPzBmnmvSsX82M5c=;
	h=To:Subject:From:Date:From;
	b=Keo1MtTfE0+Uqbri2/np6mS5ti+Q9rrTmWo2evSzEMiNbEuKWnzTNUHWAUwrLg8ZE
	 KcIdNMF5l+jY+fq6T5yUBKeEAli875N1G9NkTj+QAsmR0S1tX4i4UIOV2EskC/1oAM
	 K/kHIV8aHhIYe0Sp7qEoIXrgNHlzQqtPVBH+5NQo0WlJw4lGKbqMNYvL0xujf2KUeh
	 QytLFyCzZfWSs5Yf9o9ccpM/iBVc3myXK36/Tx/Ks54zKW9oi60X6ec5bPLERqbuHv
	 meAax4xuKc1VKXVR6EdNjHzUfaV8+O03/sM2x9HYwXbUfu2Qq6ij6MiJtgU4d6fYWd
	 Yv7pjyuB2RUlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9431AC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776879357.32023.16379634528181084319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3f33bc9d82c8b1b4db80402b8ae1fa88e25abd9f7f65a4f517d4dd2c8b46cc
Date: Tue, 20 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747768793
