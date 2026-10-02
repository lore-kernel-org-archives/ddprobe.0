Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47886495531
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790947834; cv=none; b=UKjy7CDpvCxGkv/NJt7DJqnlz095AuWTyNHW9cZO65ADh0FAaPKd3CFS1UfzCHx062t5uevgXexbG/0EhAUtY7TLJzC9ds0WOsy/5+wew4tkKWwGfEGGlFlO/IOnIxMpqoTh3F342FW28t7Om6+5MG9mvysOrHMV2SlthPDAdwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790947834; c=relaxed/simple;
	bh=i8U3Ws3nqVWIBc9YyWQAx5R3hocS5oud8/RdGhR570w=;
	h=To:Subject:From:Message-Id:Date; b=JR5os2q2IH5Dm9tfhpE4iBFzy05SeDFORvOlgcl4GnEdNgYhaug4YkZ7sKPa3rrp2151foed6s8UdXVAV8qP+q72GSYqYKDKJd2+KPrW3LeL3yhbTWBZLIS7b6tU+6PP7ghiIsxEiI1lDFInclQXa+w61KKTWjWAqa4JQ0bCANI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdHHh5Wp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdHHh5Wp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F87C2BCF6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790947833;
	bh=i8U3Ws3nqVWIBc9YyWQAx5R3hocS5oud8/RdGhR570w=;
	h=To:Subject:From:Date:From;
	b=DdHHh5WpzWbxcYEDfqrbxrUykd78Zz22iJRTPMm0XTw0BkYeWQn5GIpxXidagTcwy
	 0hmn7H+PkNYUzdaISTgBjHFAlmLWOHIbpXNTo3uoktC8bIDpAL+qlHLeUWE1+TZ6ML
	 dZEVjg2xtI/q06F335aukIYeDehSLjtvRxOsE1HTXNVdy0X8j3DSr2dffktF8c+Pfi
	 zHDip6m7njpVN62XYxX+5fbROcLbZcDVIf5BK/WrFJQmbh1pD6ria35SVyLG/wqdAa
	 vZZ4zNaGzlzc8i5h5O9YdJQJjefrEetQSMStkNoUM4dCqTwwtWpuwe35BTY1lkOV/D
	 Dk3N0hw1ogWUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA11FCA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094783368.5237.14753065359270509985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef01e667d60637eafd2544786b4c49fceb7b5d3316c7c50ce313a10a7d12e032
Date: Fri, 02 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790947833
