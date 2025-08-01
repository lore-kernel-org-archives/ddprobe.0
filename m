Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276CB28C87E
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754065794; cv=none; b=S4NMFvI294/B7qO+ZdzigRY4DISahFwYRtvXLUKVcxWDhpQgYpFaLSpV9W1CoRnzlmSjThYj4Q7BVRBA3YcbgnKye/Uk5OuvmnnGeOt5Bspg3QvqsWFmOyFwdPwtmtzTLATvTI8wkALgYP5tcPTThP5NKQjKP4jFE4yWlx8idD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754065794; c=relaxed/simple;
	bh=HJPIfo0azOYDuv/ijO7pbKxQmaz7NH9TpWrMHeNvG4o=;
	h=To:Subject:From:Message-Id:Date; b=roFPxTZVDR1IQZCkujf2WCf3JpIv85wG2q6xFotzHv8Sy+2b6sFY0zC135y/aG3fpzTNXrt+JSFnxOvCcpL2ElBeE3wSUw+9uIgANc+L1aFn+vx4RLjgwr0ITkGxx01BbJ3Dr0ysgQEB3ifO9QsglDylpJqoMPo9imSEF8HAJO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6QDxhc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6QDxhc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A344DC4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754065793;
	bh=HJPIfo0azOYDuv/ijO7pbKxQmaz7NH9TpWrMHeNvG4o=;
	h=To:Subject:From:Date:From;
	b=E6QDxhc+qjtT1ClJ8WKROcJsit+2846tVBRsUB7dUIl6zsF8cc7l+HnQVE+NBP+/p
	 BJp8+HaLdS0H14hCiYNXO1L4ewX1HN3KNrln5fvlz8840cf+upY85jL18t0Jc94qNX
	 MPG0X2B/YWgxoca9ddapp2T+yMn5m/ME3ec+qlnBlN0GbbmIzIf61GKP5cZ7lphNf4
	 297e3F8TRAabV/sTFgVIYs4lB+sd48CFETBHWCPV16h7einugppt/UgOTqCdyVNWG+
	 REEgswCQ6TRby9vNgjNPiOvpqTKheloWhvIUg4tD8ijC4+GZYFDMJSYSrQDVAXHBQ+
	 9y/mXDAFxUq1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930C0C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406579359.23415.9523965505483873969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660c3617c9bf303d57ff471f7e17d32d2999f69874f1779bdde3c5b31a85d386
Date: Fri, 01 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754065793
