Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E00C1DC985
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764592374; cv=none; b=CGklVPCw/Tmec0/56vbrTTgld03ejTcAoeQl6c3SxKN9GSJJrGBsPzzqUFaWA1lH0TQ9SS4HwfhvpBmxUzw4TJuxJFBNgIlWTFrzcyP084765+9ksUZuHrnOj+MXg0P01JDqvcTFpU/eHS/lYUQDmWmyAW96uKJA+4dVZSIsBsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764592374; c=relaxed/simple;
	bh=jRwGugwiGBWu0iZd/PEJeoCmnaxbrUotIwWNLyoxVpo=;
	h=To:Subject:From:Message-Id:Date; b=LHYi1OT2IyCALluXj7W4xWU8ddiDcxGlG9/13d+h+noWzoTGMMlxmz26/VMoFQqGqUZKwSIWapyi03m4bZcpEqnkvPB64T474mRk45ztthzNlWTLikZzLwMP1UPOt27wOm+5lxIJ4Q25Xl+j1pBVi8r/e6AkRhGIVKmaHuJx+vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNfhP79c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNfhP79c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF02C116D0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764592373;
	bh=jRwGugwiGBWu0iZd/PEJeoCmnaxbrUotIwWNLyoxVpo=;
	h=To:Subject:From:Date:From;
	b=fNfhP79c02t/VI1YbdbyRaSwCSDY+3Qt/zWprlLV+PRXkbwSfv5ZwRm79N6PFSobL
	 /O4idb28SSdZAyPRBlNoRU/m46X5HuVXNMwAGvMnskiAxXt6ROfQINQTFz5rUXC09B
	 XWlOQZO8jGflZCOEChZN34S5jGTiWpu+gRcrf4NABzbHZxVg2hLS/AvfbawgLSueiE
	 0MfUJzMjmIgZ7JtPwpwcVxFMNmZY0fGAqrJnpAEk5hBEZ4/TO1UlwPzVWt0T+MpW28
	 T6SAZ8QGSmWe1/Bsmy7wLJUC8o7UZ5/LpUa9VO3XjdZBHSlilu4FzzMfnZyrShgcgl
	 0G1QVp01enszQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9637CD116F5
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459237359.24239.13868200812541603444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aad374ee567d4d063f0c729d4ab82e0cb6ed6b3472e9e726c06a2814486d3ff
Date: Mon, 01 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764592373
