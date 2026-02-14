Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2976D211A14
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771085094; cv=none; b=sJvyMJJzf3oSwfZruYB44P1theWf9zvyWuznVQqaNAnFT3gvThrnQLTqR18+FmrmMQz9L7Z3/uhyTVcy4VNfNsmqMY/NO8BlQEWM7BK1Zf/0976H7v1hkhVx3NfLVUdJz2cjNEJYGe7MHWQbTEo0v3OpM6TIxqr0eiZSbNtZF9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771085094; c=relaxed/simple;
	bh=+AjzW+096pKlCEtWWF5Ak41DJ6+242Zbk/moEzZq39A=;
	h=To:Subject:From:Message-Id:Date; b=mlkaFX24gsjGL8gK/DXwV4KjFSrx34M9mekyC8byErZAH2QOhwocC+9uW/rH1RnX+E6rmnWICR6BlKaSlSxaFrlQGdUFoJbrk5SJqBBA71fC90gqJSs5mjqFfohlPN7Ixk3BoVNpWKweCnFzltvEaoMQ8MEPsvfgQrfT107hCa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXc0NObG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXc0NObG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA25CC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771085093;
	bh=+AjzW+096pKlCEtWWF5Ak41DJ6+242Zbk/moEzZq39A=;
	h=To:Subject:From:Date:From;
	b=NXc0NObGt5rhV5wXJU+mFnLdAQj8u2a0UtLTmKAXHBooxuw/+VKa+wybR6EoK3RD/
	 lIt02kLVIV3YSEaJ1e1Ea+06ub5r31a3tfnc/geNPQX7/mZt0fBNzfCgnSDW8F0s3N
	 2jZlZE5LMQwU33n8qaRC8axs/aJqZlxu5OcV10jLbyvaKVqTiZOK92b7iluRhE2TXl
	 W3RqTubT/SEmpoce8nfmO1LTvWJ4BaoP5+4pAUuBWNThSALF4JpcYvYVrECjC/GuFD
	 qqNNQkJGFMUtZsk+fbFyTcfip8araOpPTLqZCn13z81vuew5M+TeZaCMIKQWNaGGDm
	 s41AmmOqh5v6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A282BEF5849
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108509363.11685.11774951700857702221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd06dcd7eb57df5db24300facfe4a9d07cb6a6e778a5864c84d7de85321e3417
Date: Sat, 14 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771085093
