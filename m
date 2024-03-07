Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED08B1CD29
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709803697; cv=none; b=GlUNbMH0Pjg5KYs0/hFBrgb6ZKTcb9kk4lcMmg2fG6is28hB3IQJxITrv66quCULEBToceDGJC3tcN/Pmo+q9WIO+vMZ3p9zheew+Sr5jOIh9M5sOKrH74xutqvwZm9liDzXPu05/q6h5LOy0ZwyCZv5m/L9MwM059idOPrRYSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709803697; c=relaxed/simple;
	bh=BrwFMdPF7+2/Ri9cYmUPlj/CDesceI3euGCTdnYCqUc=;
	h=To:Subject:From:Message-Id:Date; b=QXq3JNOxQtGXjuqczpM9FI2ePgTMXiF6MpKg4LSLOj45xz/4hsolnMgQbcHzB3qq90GEdkgpkw6z1M4NniYzzgMFcJ2GZNXtiy9lEXBluIEc/P9rT9Jkd0rlewwcCRd1l1qtdvnH8OYlWz6tlr46wvP298SucgDgBy5zWgMbQds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+xCZPly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+xCZPly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88917C433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709803696;
	bh=BrwFMdPF7+2/Ri9cYmUPlj/CDesceI3euGCTdnYCqUc=;
	h=To:Subject:From:Date:From;
	b=V+xCZPlyqL2PFtSYNrG9ajey9p82mo/EIKvA1nOnbAATbP38CSkvts/qC0LhwT+4c
	 6v2xes7xKxZu176n8BcMJA+AV5SVXqr1oEVw9HOoM0yjSJRE0VjSnNsyazRZU3pHr8
	 XTSYIkZWeWES3eQdwNn34oi32RGoigchnkmgWIQ0kr0mnOcZXSYxT5xNh3OMXeXbUA
	 uMJeBuVUXshRGyUR2aBJ1/TRAhVlZajZ7dw7hOqd/LPNa5XgHhUC2pMM+VSSUCT9jB
	 Vmnb2DfGEIYgSlo6tcCe0zh8EpEpO4+txSBZ9zyvewPvLk1HQyak7Zg2iGXwYhha1L
	 z/mQ6YHw1gcmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D64C54E49
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170980369641.2762.12101685050037453589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d904a4a8e19b19caf9c6da6918b3c3b5e5e59a5cc17eb3b84d64d261231a036
Date: Thu, 07 Mar 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709803696
