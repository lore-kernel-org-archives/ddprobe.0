Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DF013F42A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 21:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720214723; cv=none; b=CsM0LBCXS/XjYVu7Grre9debHPMCbeZ06U5BYJuO5AR1E0qeyfmRHLYgQKP0jS8IsTxyvmMBZ1OkJeTUWoEg8AqvInDrgwFlTS1eAZU75zGoCL74wN4d/2w31ikKImbXeXf2c/rgZpPUWyQTwRJttcSW4M0gHEjskEDxrzM2X6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720214723; c=relaxed/simple;
	bh=tt14fKUS6ojzx/xnFVaKXrAJdMKfl0lpe3zBeofc7p4=;
	h=To:Subject:From:Message-Id:Date; b=p3fzIAvfo/H2Zyw0PyTakFdXORuLPT/xqClXtaAj6R6zh4/rko0DAodcqWmriSDSQyr9CSPpjpDOu0yGH5nPKT8vucmMCbVCJCLaQmzELYy5k5Uewos5nfyijDhUc0tob83h4pCDqRv95mfVLtGot3fmPviNyC2hlgPw2D9GFjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgdrpyRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgdrpyRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19BCC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 21:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720214722;
	bh=tt14fKUS6ojzx/xnFVaKXrAJdMKfl0lpe3zBeofc7p4=;
	h=To:Subject:From:Date:From;
	b=cgdrpyRtyvy6rYk+jfyeVWJ8lALWfjogSAnMshkKINcFemuH/xEfLCDOL+pX2tg2A
	 kQ2YPllT6qm/rC6glAWqy80fhOQDUBYOq2ioGFE+YJoUqIsIg+vTZbr9DKgBBD+x7h
	 EIRh5FCNXozPYb74dw7BVEpQbGicABIPJWHquGivKZqeBzDoAXivvcpHd85zZEhBlx
	 zSYacbCT7h6DnvRdbgq/HSNeqGnr8oopx+auz6lKJ3/9QUNR59hyaHGm+DQQJ1eZT3
	 WupWTxdxjU0BgHh3WyMso3cYfPQMtByLNe4yuTVYOyti3tmrP76quAbvB0pBUoQcRL
	 zgyrAG/KIL+tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAF1C38150
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 21:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021472277.31283.14538718283423031521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f5e903ad141d38e5980cbfb67c523fb02cd4326687d33afb5665a95611dab8
Date: Fri, 05 Jul 2024 21:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720214722
