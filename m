Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB623D955B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784389116; cv=none; b=RZcn1R23bBuGc2jAWEujyuIQ0mv4Y1z5l5tT9Uo5X3H1+uG1MKeKrtJ6bJpTKyF0RPkkQwC1YJfGlvMuFsj3TFwXCL9rIsS/G1eApBnXB6XMkFPasSKH1PJwRNcRjmXt1MoGb3vB8/R1WTLuhzfFfF31o4hVDi5ad+yxSPjSAAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784389116; c=relaxed/simple;
	bh=EGh16iVq40+xsPFzRd+5kYD4Bg9IqPMpX2y1ikqQe0w=;
	h=To:Subject:From:Message-Id:Date; b=QvXH98P8YUy/VdlXVniUVjM+UUVijn2jRJjwO7s8gro9SbtalyEYZ7bKvSS5IpK3pQwG2iMd5DEoyM9p6LJLgka2aTk9hDoyLM+IIBifkQO4h8uhH6TSTLFAikCFN55UyEKcBiODIW0Of/cIU+39gvt/jHS1zkbhfYpT4WG/XXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abGNcbUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abGNcbUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC124C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784389113;
	bh=EGh16iVq40+xsPFzRd+5kYD4Bg9IqPMpX2y1ikqQe0w=;
	h=To:Subject:From:Date:From;
	b=abGNcbUAQJ4Ub4GzgXaYENj6YhH5mhUiBMT2UHxtCtmD3oBBAAAuJR/Kz3LZVWhow
	 GpYJg+QHepGOIHMD5s+MKEwjgA79xVWF1ZLO+0p47gLyTCk1wvtFTA5Urs4B42k6V8
	 HOVQx45F8ae7iZueuP62mf94MGRpX8yiQnH0t3AafCIhI7XGK5KK6PoRBgNFXk03lC
	 XiUtu69yNDgaxsqqA2rLR8hQlpNYR4XVq95tFOKp+3Sn4EYQFJ9r6VaikZzHbe8HE9
	 GDGveKSErDkTBPqA7K8rruND5qkmax1Gcb2ae9IRern7rxJZXxFeaCKdGQfxRalz/i
	 w3ANtkmPCGFuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB2CC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438911368.16640.16125186087353282955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dc8cc3e6fd0895ccab3d365ad94539d742ad3cebd0e8de29baa1574391c3773
Date: Sat, 18 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784389113
