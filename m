Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3013D218EA8
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761423594; cv=none; b=i0TrCaNsCN2VJ0S78roBpJiZMZvOq/LV1UPSBT7cGAzyn/u7MN207vmMS/+dYm6lGic0vOU4CZHtUAdPFoNdkGe9qGRLxDjN+qnmV9bUzR8NXcgCYrE2Q1Fw5VtjWXawYSHWYPIoVx8yk/B9ZXFSNp+E0NOEZvd1Fc3aimmn0BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761423594; c=relaxed/simple;
	bh=1bir9dl5hyZeZ/DmRr4/bN9axQhoeaxN952qyj1taWU=;
	h=To:Subject:From:Message-Id:Date; b=nnwZmCIATGRRkjJQYDCJBboCHTtjzPKutwFQ3rSBjK1wEkUcZO0GSabYhZonOor7dsI/zLSrLGyCsMEoiXgTOD8aHJ8DRhracFQqKONZJIFOrqjiNOS1zf+OKISgi2/Ptmhzas9NSrgd8OccRuVZMfRgtarRXce6plxk2YG17/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4xt6IZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4xt6IZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABADBC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761423593;
	bh=1bir9dl5hyZeZ/DmRr4/bN9axQhoeaxN952qyj1taWU=;
	h=To:Subject:From:Date:From;
	b=F4xt6IZZB2I3eegS9G5FJjUl92qsL3D6ao0jGNusN0+s/hKY9O8fhwPf6gn27597B
	 iDV520mtlVFTKbqxM/2+Lc2PJg/1M+fxrSwTY01Wkrno/t6nZNmNyfd/yB27FyQMUX
	 wt7oE1nrflyzWUIeJP82es1FCl5Oyy2MUFHBAoqhMP3V64k2R3mwfwUO7Z2JutvSCu
	 98qbmyi+tkX2ehTfTm2j4S9AMe6r7q83EMP+6WxXm/potBpNUPxdp1p/B0Oopa3zbT
	 PPPg8A2F8OxPyRaTbW/iQ+wjInbJGvWmxYk9HAQyykBBEBACtwvx4ExIA1v+vPE+UH
	 XAu17vt1+8vXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92835CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142359357.10624.16810852437874314582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010ef81adf59b961ff90dc44acb193b76c874aa5268d8cd04290c3890ed1b91f
Date: Sat, 25 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761423593
