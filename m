Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A6F3B2FF9
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782506314; cv=none; b=cHBLwM7/JD//Gw+AhNTCt727YoVCYyhCDlUdCUHVBfetlFRh1QrjUt28v46n/1bbWRphKLfYnc7OdNNH+E70m7+PJdGiHoh5U8vWa4Yph0lzNqyVnsXAwJawXY/fbO2f7s0isXJoiQvE2sdX7ltg/pRjyeKnGOlVpv6//C7mYmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782506314; c=relaxed/simple;
	bh=4QWvwspWbucQJlJAZGJ3H/fiCczmjGe0Y5gLPZlPNT4=;
	h=To:Subject:From:Message-Id:Date; b=I0YO7NErZ2Dx3Y1CF36VM8TjLM2mgrT1ECyTeSRCitkzPGKGvfS4pml+DOiUtxgLi2js7m1n1TLS9FaOY1TNpmh4PMIaEn7Lq8eoHdmAZ8OUJykTYIhYt430L4rh7Rd7bDxqTXKNuSyh+C5ToY0Mu6cMp0QdbGjFCigldmH5hFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeLbtw3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeLbtw3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1D8EC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782506314;
	bh=4QWvwspWbucQJlJAZGJ3H/fiCczmjGe0Y5gLPZlPNT4=;
	h=To:Subject:From:Date:From;
	b=JeLbtw3OJbHZtPIt8URPhmkXSQ34AR1WHFLPU8ZbDG7qHVHY8vLdSJhRJPWxMV1kZ
	 s39lhf54FLL3U7oyXumWi1ckYhWcllVtR2HVm5YT2NB7rbyMWPIWqg5gPnLXZfU0zK
	 l2ZA+0u/q7eVBdwf94eNlW+vBqYa6u2h3neoAVvkdHWv386kq4taMOmaPJQL4qHBVh
	 f/3bCjWbIgTwGCKHr6azRLqb6McJPuYRzvkk1rApdl2imAFCuNPC9Ktd4lrpVYswWA
	 ZP1BtLAhd6HyxjXGJ09sn3ctJZtZ2g3kNVUXLiCJ6N+ne83JqbhABk5gzaS+DOtWUk
	 AZnxBrkWtVEug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDD6C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250631371.27312.16683172232318614619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0eaffe88e3a146ff3bbbbfce0e397770280d404a93c3f76b48a51a21533749
Date: Fri, 26 Jun 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782506313
