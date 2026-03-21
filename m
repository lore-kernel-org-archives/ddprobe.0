Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC942C11DB
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774135494; cv=none; b=WDsSckWgvXU+dMx4h6deSHEAtB0AUKgeiP7MeJ70+FHuf2ZLh9H1wVwVNDj+ui/9mjYHawZ5+1F0OCQgkPUl9HmTqgcpLnT4J0iDPJtzV3PdYvHk0Zsol1ZX92FZVJnAiVeK6i+haIW0NZSY/JjdG488MZ+xMUjx+lJUWRKTi0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774135494; c=relaxed/simple;
	bh=hdinVcn97vn2iU/DfC69d6cHy0D2Dd1ujlAGLJmQGT8=;
	h=To:Subject:From:Message-Id:Date; b=oc/87+COI65qKvdHVUwtIT5/hDDr6C7Bj2X7jU754YjrdmzAyRct98UdtlFqkGavsT7g+zc/kc5uOs0MSdeLSoPRXM5pnM83ppgODq6miXA5YoDULsyp2PAeWaOLfbO5Opb9g1AUupC/mtkxHYp5kXYbNm8q7ZCaiCXXeXr8ct0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZ58gokD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ58gokD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5573C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774135493;
	bh=hdinVcn97vn2iU/DfC69d6cHy0D2Dd1ujlAGLJmQGT8=;
	h=To:Subject:From:Date:From;
	b=tZ58gokDA+XfQPZUD/JVs2gmk3Zc/hpE+xPgkQHCHO+l/n4wWqHYthp6qNIf9euXi
	 tIVnDhSqrkj2nmM85rhLnHc78v0K7OerJtIHPjTk5tXXQfkBk3CIAFfhVmASzObNIU
	 XAW800zX9KmlMkEmBZje80EgAWlks8cjL7N5SDTA3Nv49IBO9WGkjPLOfd8arZoGLJ
	 c+l2Z9Y90hwBmEVBidk1JpDzijzBjOg/XNBc3V3yNTze9r8U8rprqsxHVWt05AB4Yy
	 c02DMvAm4bN9g+Txt6EauUHAAKK5ud1gbMG1sr7foEWbEWuLNPxTjQjo+Ug+k094J+
	 lVVE0sJt3MySQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F961094481
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413549357.26052.16805547845320367290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf970a84b6e6f87debb36dcf728930cab75135510afbd564be60bd83e3d0508
Date: Sat, 21 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774135493
