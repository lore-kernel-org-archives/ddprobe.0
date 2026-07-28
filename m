Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A6613790B
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785208234; cv=none; b=ZY3e47b8ZIDTl7vEc6Q0NI03Qh4YDmU+YG9Wh00RIUzDmPHGWGIEXnCGx4lQyIzgHwkIgM/4loRSO7FX8aJDgy+wFRZvn0ZeWyNI44HsGV8ufghlsBIAUQbK1peGhEmyjH4y46LQ0/BLrxWXd3z6hO31W+EqZ1kyP0yNXeUppvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785208234; c=relaxed/simple;
	bh=Ujd9gvNeSRDbWEJa2k0xWZYoGUfGVHFW94LkTo7PdMA=;
	h=To:Subject:From:Message-Id:Date; b=QfEX0iQL5LoNaf7ITAjR/VqN2k1uMcU5OCK2GF3Ni6BDI+UAjfMEago9s4wuYS9ap/DAwCV3tOUEx+ifzrMBzFQLpEou8+88aHnAOab5mMAsEQijxgLhwkGlP3sDU4p/UsLpUwZw3+4Af7Fw/l6Ja1PTRpVZJaZu2U7SXATcLZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6xZod+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6xZod+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD703C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785208233;
	bh=Ujd9gvNeSRDbWEJa2k0xWZYoGUfGVHFW94LkTo7PdMA=;
	h=To:Subject:From:Date:From;
	b=F6xZod+1E7zUg9fVm0wyh0sS86/tUjcCK8uJ04yfeuveBSUNretsS0m53mycFcrjO
	 f/mi1wJyhNii+M3wJS9r+2jCV7kUcwWlIGt244qLzUd2hUNIwxkAIZVTU9E8nsZM0F
	 4k8dIYnQV/Ww12G8PHESGNp/VdSCD4HtmQ5xUpLTe5N/XxZwUd8IVFWseJ4vywEZLw
	 rFTx0g1BeqTS1vJwJbegu53YWKUZnakVrzHIKwrpFC+F0z3NlFrtN0xb9/viByF0oP
	 /12Zk4HCoVXtv4x7oP/ljh0DiwS0Kt8nKdfwewnkmwwWaOOUWi+6hkbndjysUvYsXj
	 fQE/AlnmNpNhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB894C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520823369.19211.15967929394521488565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2078d829283fb3b4ef5d9839cb6dc2453556db4883957eb762545763589f87ad
Date: Tue, 28 Jul 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785208233
