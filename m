Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC111D8E01
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783220914; cv=none; b=EcVUh7tpOhzn2TIlW2bLKCWCu6kKr9tOmpec8BzqQF5r+eBk18veyQgaAqd88JK+A5it5oe/G6Y2+ObEJPlXIgPuGPgN1GaMT0q0Xi2tQ32GbLXD490ZPRg5/xn0eB1d6TDXmQoL0YGLxe9w7sGWvj5ZuDcFDU8PK4Btx/Di4Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783220914; c=relaxed/simple;
	bh=wVUbbEpd2MMZAd8cueyqDCTsuXpA/+tMsReaITdcn/o=;
	h=To:Subject:From:Message-Id:Date; b=fCl6CtZSFuivp5e4ZG1SMhSIQbWLmzYNAlEURkUJO2uW7FgQ7I2ccN1GgEZrL0ibIuaIK1dwm28Oo8xUEapLVuMQ5ApAxlCCCX/vKHpw/0EsR/1uX9ftrYFv7I0QsN1RYjCzSqXcpFmGnF3N986xZRsIVGybdqWnMPBvFdzYA+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBLacAWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBLacAWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B50C2BCC9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783220913;
	bh=wVUbbEpd2MMZAd8cueyqDCTsuXpA/+tMsReaITdcn/o=;
	h=To:Subject:From:Date:From;
	b=YBLacAWKfFqckG9WDWhwShwR6Z/eLSHtNor8fCihTOjc2Pm9CSz6dXCZ8FZ5lbqoY
	 LhEoSvD6pTPOFeGieeoUa7BZJJVTo5aKon4EESXbuoXZcOOHqER560VDk81y3kayPT
	 YteZFbT+SgCE78lLRgm8PQaJ76UZOOcmhJPkftT7OlnJFYvnJ76ueAM+QpuBK3Xvi4
	 1I3xUKbhKJi+1VrBTxQyyEkItq0VbYwCDy2FeXomjdWl5zRpqSawvIy/hf5YRk8kkQ
	 WWUiS4qkzVpA5aJYb90tCci3OIGSI7VitN+ArK4iLamXuCLRU4ObJMWI5VY3Z983cg
	 oguLhcvtjo3ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF89C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322091368.8943.1207966667134325791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92405e6cc5213c2bd75dca4b3d1b91126ca93dbbaf4c7c310b0a07659669c0ff
Date: Sun, 05 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783220913
