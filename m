Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F4C23395E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780856074; cv=none; b=ghZRh+D7pT2/t2cPu2jMPI5ZcfNIpbEEG4LjrjYN1bh/LBgpwTqzELy4l6zseSg/MKqR0jxy1JXKqe7irXtp77Fqxbj4IivhhqCX5akyhKL3X5WSrK1FHU0VshGVi2Zzeqa7MJDvBjLNwiQGC71DCvmeE6d6GAUw90u4IGBoXr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780856074; c=relaxed/simple;
	bh=77iaYUzo0g8aYhGy+aZY7hsdNFrGo8xGFrEBWyeb9zM=;
	h=To:Subject:From:Message-Id:Date; b=ADUJ4hqysw+pDQj/gVr7ihxJ6iHpBcV34a+EpYdz82CneCgfkt4KXFlFdykoraC8iR79Ny99OLpAjfzw2T6GZ7rvwB8mvaGj0sTSqtxwOKY7Ws20q+ZTtORAk45tszDPXz5MMg+o15U3AfRnc2EhxAiCWjVAyOzQMBATPcZY7Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uxa9A14u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uxa9A14u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84C6C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780856073;
	bh=77iaYUzo0g8aYhGy+aZY7hsdNFrGo8xGFrEBWyeb9zM=;
	h=To:Subject:From:Date:From;
	b=Uxa9A14uXJcnJvPP3DermBgzqgTVp/juRwpb7MkE+SjG9ghguWYKGgM95t23WCOYG
	 Th8efEO7cXAfmV0EcFafkrqfH1migw+aBYxYMjvlEbroh2vGoquCE845kCF9Xj0U7R
	 lLT+6YjEXAamk4XEb0klwTm5+b4veTwpVa4ARxOmQ8FSOS9DU8TeW2/RzV+ZWfOnHi
	 tjvcGBl8tqOQ6cJOS7FNuQbQQrJhvz03VZrpmNFkxPlEzPEvTvXE5HPcHMIjBp5vkF
	 TfYaPWSITsR1w2igqyw+Plh0Rgs2ZhdEwVoE1/Uo/1nQXfZ0sOjrytKUrhukSYsskp
	 AkLXdAO0so7FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8EFCD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085607368.11389.1096619643946831050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b037ce2db617c0e4c96cc5ab63a9ba42e3685dfee4283c8cf77fcb14b40e01fc
Date: Sun, 07 Jun 2026 18:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780856073
