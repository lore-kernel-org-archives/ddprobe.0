Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7901DFF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749674394; cv=none; b=J0YxHFizdBrlLc/RIpbFtHDdtE8OApN0s5bfZnz9Uas5/8lNhHyzim4867212LHL/pCX3DezQtmePTLKsBlAtsSN/TioprX395EGwl7Jrx85NC1QbbHOoWC5DOAN3abocw1yvT5GxKilPaqjeYzbnbGLCNrxXflXZhtjt79RMfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749674394; c=relaxed/simple;
	bh=hCBdjRjBjknPhYCBMfqwKNN4xNoX4kBgJMqHUpYpwMo=;
	h=To:Subject:From:Message-Id:Date; b=V4P9aE35cCLL/E1uf/zSvT1ejFEfwa0CYnRF/voznu6N46Nun2bXbJJj4vkvjjdayEGdMJB4Iag1d+KIhLBpuzTNbPJFwN6qLa1ZCVp9sQazDmJ8Yq5nN2KYi7g3VIgPU189NvMR5zp2Du0ozLWkewJjr5eM84wsug6LdJYPaZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFlc2rSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFlc2rSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD029C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749674393;
	bh=hCBdjRjBjknPhYCBMfqwKNN4xNoX4kBgJMqHUpYpwMo=;
	h=To:Subject:From:Date:From;
	b=eFlc2rSzJ/BCOtmURA4rJI+lYtHj7Pr73N68hnewJbOv0AKltKb6P4jmTCVaFDMke
	 yFzLKqhg82CYhUJDShQx+rTC4KXwENZ8q+jJeai05Mw1b1wYP3xG9N0Pa06UViFpmv
	 fXxe/33HR6eKIcZ9DkQSFU1E3HZOh61jt93rszhAdb7Cn+vMhkEZ5ZJLWmuacFgS81
	 yfUfeRIYPDYHQjMleTWaTtNyv1Jcv9XLd30aqkzwSvKbLZOmScmBy9o+ve6ENAMSPo
	 LOPWdS1CUBmhh8+7bg/Ph8gFXrmxf92fAWoOwkm/UCGDGWJ+nyxqMnu2MzK6+xEler
	 LRuBcXyWTZyYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA5C7113E
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967439359.11967.7223674482257326661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5666f531ee84c832b503b55b7356a86792848c634bc42b06b511d3f3d7ddb60e
Date: Wed, 11 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749674393
