Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBC720F087
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744929595; cv=none; b=cbvhrrdf0lponjiIE4yL3BlNnxRfxge7gaoGSlIZyNzYRJ6GTBDh6PFok+iK8cedy+1igS3LljNENGp3KQxlBORnRzUaFLaReQniF18p3kdwMfJ5ePuoLWNeC0JJvmTtXN0EkE1fQjVVkwggysTNGbGnDC8y1Ux8L27+xV0ze2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744929595; c=relaxed/simple;
	bh=qynWNX38lk1CYNkKLWTxErPjfBu53deEA3fRzlzBfIM=;
	h=To:Subject:From:Message-Id:Date; b=hsYGcN9VcaIswo5xamwtwTbSxk+3d3fOJOUbAup//pfCn5bkMfvpyTr78hT8p665UAXrOD/Sq/MqBSsTH11j8UtHzUe8LLSvBYRNJwt23tLWup3wbZctiLQPjRkP0fFDpk8XL52/3HYurstXaBJTI6K5AYrvU9s3vrtU2kl3Paw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITkEVnVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITkEVnVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB284C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744929593;
	bh=qynWNX38lk1CYNkKLWTxErPjfBu53deEA3fRzlzBfIM=;
	h=To:Subject:From:Date:From;
	b=ITkEVnVrUiDDuNauYMdv+No1VfiWo4AVvbM7VTXQ/mU3sNUBe2+e9XPG/y7umo156
	 7QF/i3ecvwA5wq/9825MSFN8d5cjbhcBN4uI2mc5n8ZLiyqHrBlEYiMLmXO1xs7QXa
	 4L/raxFRfKLzWC0uI53Uh3tgKAuQpSqlMJiNl3yVmbNf+FVJ0six41TN0vj89Az3Np
	 zSyR2sYQEfmNg4oTBEnwKdp3s2DEBNiBTNYqfDsRRC4hYK7kbP2FqRjBcbQwCrwsw6
	 1CbZTS/fyN8JxtJwnQAunIZnZ71GLCD9rwaCqP9acWmg7eBnxrl+iSmtUn7bdfNvkt
	 NrdiUNhynqhrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92088C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492959358.26894.13820707078821710862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d197cff3683652d9d612f90c11c3f48f41eeaf1a950fd03f3573e0cd1ef9a7
Date: Thu, 17 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744929593
