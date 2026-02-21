Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255B71531E8
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771679694; cv=none; b=ZMKUCDUsX/5lS+km+W/mRWAfIZ8L5oym6kBasH3TMQBMdSHFBecrkmrwnQZrW/uPi3fcq0+ZC1DC37D23ekMAMNSvRydH1k3w887UcWWgRiN0u8LL5CXqRX8gRUYwrv38e4vsb519owVclNjL5khQ6OXhJ+Cr1CF39yyuA0QbL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771679694; c=relaxed/simple;
	bh=nviYODqSTAcHTCsv5RrpN8p2SCiSRtwlM8jN7S/Is1k=;
	h=To:Subject:From:Message-Id:Date; b=J4cA57y6RcVJtHb4euupQpUGMBne79awYdmyYC/WDXZLMAGPiXuDZZhMHI40HllqiHTIQ4CcAu/y47DJ2gZtsj7cyoGPNx3+LmuzdwatCvYC6ULU3oFJ07hqQwSAdzpfjcPqyYA2c5Nw170iOkrWvWvcIFTymv7TkjC2tViXGoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prN+LdHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prN+LdHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED9AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771679693;
	bh=nviYODqSTAcHTCsv5RrpN8p2SCiSRtwlM8jN7S/Is1k=;
	h=To:Subject:From:Date:From;
	b=prN+LdHFaEjA4ysxBb1VyPXro+DvNkFWiZtqJG+m7FHMWP00KGiUPUXOycuMoljnz
	 6pdlAGdJDbFrrD6+SBT8MWc2ZAUC3UoPe3JoackcU2cmdwQo38vgW6zkWB8vz+afr6
	 YnxE9692tvCy9Lh6mB6oSzllqUN53B/8fOkElvndDFvdXkxjkvlqrUzfHP4PTgRDP/
	 XnqbI/5ExjPfWy20VN7fugqwCvc86FNp6Jx8a4diF1MeBcveypJs0k6gQOiJ3N5Hhb
	 QiCAxIHb1iVSuXzj7/p5ViEpXisb5a9WNVuk/zlvfx2it+zcHTK9a/tWmUck99h0Yx
	 s9BoWOBv8JwAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B94BC61DE2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167969359.2002.15150377182357190481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede1a1b950a6fbda8499b01de31f9be182dee85a5806182279fb00ccb39f1161
Date: Sat, 21 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771679693
