Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEFC31E842
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781853394; cv=none; b=OlVROqGQpiKtlsqOOE+f8vmWe9FWn2f8QX8OQnxA7BnL/QxjZo2nH6L7X+bDZoW+uhpSBkxfwza6BKXZre1fmIOysn19g3YpehRDPMBgx9/PEwmqtfwaN0DPATii6t2H1i443GJzmmkRTzbRZBALiGLDnBFguZCVB/YiR8UELAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781853394; c=relaxed/simple;
	bh=vmoZuUlvRibtHa/DdwrRHzTF0TSIW/fVBNOkQvd2BKk=;
	h=To:Subject:From:Message-Id:Date; b=jHrRSkdGUW7aprpB5pWzGwRewqACAo8sxApekhwjFyCBFxNwcse9EJEoTfMpO4C5AtUvBfm4YHPUoXHuVnQbLcxJkwQLzSszD5CS2sv8qlPNRnIKV68tnHpnCF24xyUEVwW7Sh/PMz33lKatfEpK9PQLMZDKX90hnDLOgYQBUr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGm/Bxfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGm/Bxfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F4BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781853393;
	bh=vmoZuUlvRibtHa/DdwrRHzTF0TSIW/fVBNOkQvd2BKk=;
	h=To:Subject:From:Date:From;
	b=IGm/BxfzDUaDg0SrDK+Aa6mU/Z44tsnHPCk/o3Iz0jJ8LoA4uzz291kKibru8RWBs
	 la63cvEtheF2EtGMfhBqnvex9OXwPr5K+bN+ebRY8GFbdA7kmRs0mXzQaJX9c1zTnF
	 EY9Qu8iFc638/XJEM/5t1dIfpAlc5sGgkKB2NOvMcbTdIAl5qSTgP+Hxd9yy1DE6EV
	 y+E7jhMEJU1qCFeHya3Hnys3yCd+qkI8R6NEtmF1EXM9YlyE4gCJXBcCR4ATtPI4qc
	 +VdHrCn7lt5tYxJxEUgpdj2B0Qh0KuPdW5BLGg7oRuRItWnXqXOpLw6oqdlek0a7Yl
	 omrSTy34/JGow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3FACD98E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185339369.16235.10106674633272114984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eefae26d7fd1b031484582015a07ef9af145efdd229527ea46b92af506ac8aaf
Date: Fri, 19 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781853393
