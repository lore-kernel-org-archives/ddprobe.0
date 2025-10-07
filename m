Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050602D97BC
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759836594; cv=none; b=jBd6/YVfzvPuSElT39sFeoELyK8b8baWIDvaAW4s17WzOgoJ9qKsT2jrIrNd9TSv0hl/a6mK98ycvUJ7wAmkfY7HK7Vk0GSW2cS1/8N7zjsc6rpcvp5Ook7ltml6RUJWX6RLZ5piO/EHbWQFpG1q5iv3ssUXngSEO8blHxKqgFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759836594; c=relaxed/simple;
	bh=X1Vsqt1gDWAM1wm/CJBbGsYxmDmqTaGUnw0t3uByqDo=;
	h=To:Subject:From:Message-Id:Date; b=pOQ+xXQKWXNLyOVFP1G68WlDKYdeJh/lZ+YOS7tm44TCWPInKIxs2dp383H6PkKbmJCG4F24xyLcR8cs/didyd6x2HhQk9J8rQGCHaBc3XHSjpkM3BfS/ma+CPohQ9ggBhPlyNKbYkn/E92B6F20XLHPUH11IM3Nff9Qn4Xs92c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbgW1XdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbgW1XdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CA1C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759836593;
	bh=X1Vsqt1gDWAM1wm/CJBbGsYxmDmqTaGUnw0t3uByqDo=;
	h=To:Subject:From:Date:From;
	b=MbgW1XdISJWANAGTFK42Mkxu0XzYZ5ST/9jUyKOLTvrCpJ2zhMXXBD/ZrgwRBXTAU
	 KPLENH19Qk8img7SxzAnGzpwcX6QwKZO7YHm8X1yv4agBOK2mIwNrd+BbYi+cD0XnI
	 Y+3bfYsEF3oRcTfsIPtdAuHd+1hdtyUVeV4CDGqf0wXd/H25yvzY1pBtYisTPYGDkn
	 siyQVsfUKzv7NJB0Zp6osaRC5m34DHibodbWSZMO+BrJzbpkL/bp0om93RTTvExu2D
	 zjkPfU84021BnPLfV8sZd09tJUngtc6+xcNuDME7GfL6H2elA5mdlRRhJab/bnQ7O4
	 j5bw1s4dzPnZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE0CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983659358.8979.10481198345218226307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121d02d53f19c85ce75ebd82a807a2494fc76e4d765b0fc7f58994433e051521
Date: Tue, 07 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759836593
