Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177F93B2FEF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777333054; cv=none; b=GumqfnoNmz3FHGpArjFWs3j6dGJj0p7X6y5lNm4esbVkVB6KsI3DNmFzZh61TeeifM+JHz1LyhJ3Mjiplk5r4uOhvzex9/u0+NCVcH6vil/CVHZsF9NsI2HtvRHxazfa/tBG3/1Nvh1yMlDCr/yT5R3OmDIawbFkat9cjl65tp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777333054; c=relaxed/simple;
	bh=X8qRHNGGJADXJ5Uug6EVXSzcwr5O2lVSp0PaEtuB9LI=;
	h=To:Subject:From:Message-Id:Date; b=DMZUGPYL1lNx3XY51nlX0dyPTe9E8zAwRZJ9Xo3PraR1Yz3/CMBgdadjH2/Qj+W2KcBi5tGvnIMIiydDMvasY8bOTHRz0ZlDBXv3ZzNEP9O4EmwsJCmhHQFr5vdLLRs5Zxxmh7ZSBGLBjGIw7uOSpVRK/NLndDPXOU0oRN+yovY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itFnSDbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itFnSDbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B89C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777333053;
	bh=X8qRHNGGJADXJ5Uug6EVXSzcwr5O2lVSp0PaEtuB9LI=;
	h=To:Subject:From:Date:From;
	b=itFnSDbA4Lc6FDyJn2aP+QfnLc8Ml3qtescviwXvMR0yBalxaOXtBmYMRhXh382y5
	 7iZKwZNCuc4CKVUBfbwHWiFV5yJfSGb/ScU28ltjDme4mP3B/vYI4IyNGGLQFPYwiv
	 Kcu1K8dWSUE/Q5Qjf+ULomAPyoRDSLQzodAdgJhgF9LuvtvB60OA4vtsStwnOAzQtS
	 PdHcXAqz7dLOfdwJkrnt+stixu46rqzeEWSsf28ivQ3WAh/Y/gLrORCbWCmIPR+spy
	 juAZLsN25Uo4eFr1ItPFxxVzsuhQSIOD9EIK1QeFb+TAoADxQ01uq1y0tN+5T96oiS
	 GxR6Sj+DZjBKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89B0FF8867
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733305368.1448.11309756524890085007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538353876256374031c0d044dded2025a2e4f5c763fd95fd77a788a777d63fe0
Date: Mon, 27 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777333053
