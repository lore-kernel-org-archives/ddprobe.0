Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19533B5307
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774870494; cv=none; b=BnsGLWLW0t5s9CB2cTgXzdOkLcdFWiK6exdGGVbVAKJqim7eMCfcgL1y1NtHLTaJj8+NyZr/lO97dYwyXHydNBgKqBWiC895Aj5pL5qIizljOo1n27YqCVv3DBuRHaqLPXfgourCCMemDsAml21e+ppi8AkwVjr0nOunJfsJn8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774870494; c=relaxed/simple;
	bh=04lMdkzoQJHCTzTzjwbSLWMw78awzM6SPvXStpgcgSg=;
	h=To:Subject:From:Message-Id:Date; b=nOWcJw3KydN0kvi5nxqRpjDmROg8phupjipy/cS9W/hP+gk0cSgKOTR4CYdFeNYowpNAdFwmBBqrQ7N8yBoCthMHQFWw8xp/IRJujfSDtvUvwR9tKBQiufY3LpWJxzw7A4MsJ81kOukho5Fvx/0ZBUlc7tkUvwewHl0DlsJ+HcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCFGBgD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCFGBgD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B25C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774870493;
	bh=04lMdkzoQJHCTzTzjwbSLWMw78awzM6SPvXStpgcgSg=;
	h=To:Subject:From:Date:From;
	b=FCFGBgD3r+db4VaO+8PihGuqjlKeAy0m1FVi9oDsUQ6OImrYdUfmSluJiRZE3ZiRN
	 r1zL0GVAeS8CCwER5KxIml9Nf4Fr5dtxzlSmYvXUv4JxCvIRybmaMFU8XkwsT0mLfD
	 NrPe2J01L/TTzG4caxeYwUp3Q6UQDfv/3DIXbhB3GCClQeSubRuYYuQvVRKJIGrMgd
	 Cs1BxoSf7I9TvBEeq6tdXmLUTTaBNhKu+WHM1inq+y55cNKoNLHSkBWSXEGXcKkQIy
	 gXJcMnBurprrGFNKmgxQLkrzPUjp5jGzQHWE5DJbSVBao/QvItJRaQ2fWtRK+plEYh
	 i/L2zp2i5ck/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BDA10D14A2
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487049358.15302.14839424966615876273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69091cb820751c21f6646f6e056ca0cc4b4575e9e3c85a86d5d2377eaebc2338
Date: Mon, 30 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774870493
