Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2880A34105B
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343494; cv=none; b=Z9o+qHrwibhsBAeSzIcnxfHF58z0W+TulJqEEMxcMkNGCFG7QQFmEFBbuPkA6bx2gNyXR+HJLsDpcL5rxpGl/enfQWAZ3FZhkYX8pvnW/VOq83Dc6h9fqHtDRorwobDHdnSz+DBaLb6byrNb9uqmvFRZuzcg7x5BxahedahxMlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343494; c=relaxed/simple;
	bh=/3cXrSpTosFR9WCrlzwGs9AKrDFgWBo4TR38YLHUlEs=;
	h=To:Subject:From:Message-Id:Date; b=EGN4FcTd2dIEyLpduIbPNUHZn7wrm/0FQsX3Jwc5QuSpf07YPb4T4ioHAz4kIy9jqSpXomLdjkN3r8Z8jed0YIvsGdP15cGaL9umbBBTp/UsO8q0gRna2BCWFVewVt4FdqFBRWWTZNW9EycN51TuwTj7WYjYA31Z7yWuNBcezvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plBx4GpZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plBx4GpZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7814C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773343493;
	bh=/3cXrSpTosFR9WCrlzwGs9AKrDFgWBo4TR38YLHUlEs=;
	h=To:Subject:From:Date:From;
	b=plBx4GpZkXwyl5t+Tj2cl0/mR9JD/SBGoeKVP7q3rZsavXzI807boq0Ralr2AqmBa
	 nw5u0rzJ3x3BUjfDlkogASUzHTbBaVGQb8pObUMPjgGQAKVuBy2ggwy0/H1ZiAHsQ3
	 Ru7WS5xn77ncuknanuFfs2hHaAIKW7vKuwWIFBAqRwCgoLZOS/DAj1OIzd7hVRn1IJ
	 d7TWcbdf3zSp79DoMocq87PRWgwlxalOJk6Alh49iC4E7qlqCPkOr5DJ7kSGtLeUEF
	 iwe1cNdsnokc9VOfpLHdrvLuY0l3hIW5nQclNDGq3AbGvEKiBzGGKvkMu2LWwVXzQE
	 QhSMlu6z42sVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A05106ACE1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334349359.9791.6676658686355377722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19478f536cd2165a3f3200d31f7085bb6a8cad221808b5a9bc9e08975b5a12a
Date: Thu, 12 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773343493
