Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1730826ACC
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774355094; cv=none; b=nmrzZ8QAI56YtkIaXdudvuWvEMswECRyq5rb3dAAeW4/u42LcPZpclmzaYGVh9CuGCR7HyXUBQwTzdLra1di/p4PI2haYksznUkW1gVJV6L73nC3MwlCYHEipcvYXuXnmYrtrG0dDR5IQieVgMp+0SmY9elRdSzGhRBy6HpBwZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774355094; c=relaxed/simple;
	bh=MqVSwivs/2DrRd/c13BSYguFQB2NiyGQJ2TeXa6iIBk=;
	h=To:Subject:From:Message-Id:Date; b=jSvS/Pq3rYpNlQtAh+WmjfkWbvdKUivvEviJcYGW0VOLD/ZY0VR2OzrSKQ91rU26rk6bjvlX0GyDtx/LzRkxipWpcmdkXH2SXSHahS/cl2TcAwLYEXgUAhDGucjaMDs0MArupm1zFEKKQm5Q04y02MLn4wq4sQtQbUTdka49/34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7KSarvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7KSarvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A347BC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774355093;
	bh=MqVSwivs/2DrRd/c13BSYguFQB2NiyGQJ2TeXa6iIBk=;
	h=To:Subject:From:Date:From;
	b=d7KSarvz+aWNyNdWmDu3zu6kn/BvFWfI517NXqM/m8NuJQJgcy4uTZVir6iJbu1fW
	 nyVda4iqYJt2MhEVGX80JLggnsuBrT3uVrEbrhaMBF931G4CZsIG4M9CeIHtQQ6UOX
	 C+xmAnVnD94Ya4EtiCsLc42wlofypR83h+FeiPIl3NhgL7UwDGzqizPf+gfMdP7b6y
	 Zu7vBh6VTR8R0MlNG+aZ3Ulf9oreb8Jni7tKzahEUl4EstKGhjAs5IPuUs9/VXpLeR
	 NhEzgffU4SUBs/WZgreY9z3BQ3zYOqmXuvJuIBPtzDAeEARya0VJZRkT2mWDPQPxip
	 tdqZDbQpG73Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D8E9A77D
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435509358.4576.16235254345273452669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f0d0d2944b8482d2a352d428354f6445261a28b318219190f4ed4ba2eff405
Date: Tue, 24 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774355093
