Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000D71F239B
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768568034; cv=none; b=pJAYFI35pokq2syL0xxdo5Rt881n8qF/NwnjUtZCShNt480yEGFmFvmoiUwzNHNzRz0/5cRBfXsm14WklYyJDXFCBIxkhh0kuXpVcHMOEOB7HZdlycEabhZDm4iSbnTwzBkx5bC3IVINzZIdqirJfbLQY78itYwYWPkHX2vZIRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768568034; c=relaxed/simple;
	bh=3p79zMjRJFZIVMIKtcqzHFHILXvjoZt9nAix16fEyY8=;
	h=To:Subject:From:Message-Id:Date; b=puE9s5u9WGABP4PY1lxwta5uKA1a9r2qYCtpL7sVdpMyepGzMmLnBRqAp3WPaivAEtx3wgxs7mzBmyCU5e0lOE1fl8tjhLxJpOeQWbwVg/sIcMj/zUgHoISNPMoJnpf0eCbfJKN4w08DCJTHNyfqST3BV4fM0unNbHYdwu2AGdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOzJ6SjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOzJ6SjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C89C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768568033;
	bh=3p79zMjRJFZIVMIKtcqzHFHILXvjoZt9nAix16fEyY8=;
	h=To:Subject:From:Date:From;
	b=vOzJ6SjJxpebmSbQqJO1wK0Nnps1nQR/n4ISy+THgv10axwWwDcRsmrH0xqUF746D
	 jf8dbuqY+ZSfQSva2R+ljhT50OIxycPOEW4pZ1O27F3/No26W8/nrjaEjQDmKIF6xq
	 AQJX7xxYNye/9zeaIabktihku83xi6j5LwndSOqLVKOrd5dX57RYQuKtsn8DEQnbWd
	 nf3ssYldSSUdKTv3WxfZ1WrFP1uIKffvDz1XHTILyv6xQ2S0UQ1JNW74ixQ+aLZhaA
	 5Q/ZTw/Vr8GSHtss3PTe+sibZ8v4WeHdC0EjC20AIZtemYGwnPivuUT+l75fimkDhQ
	 aET61aQc2kXWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F54D4899D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856803358.28028.11200109557880143882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 533d0f106f08a6f3c6d90a7d989ded3ea2a1b2725d242e7bdce72195ee41a407
Date: Fri, 16 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768568033
