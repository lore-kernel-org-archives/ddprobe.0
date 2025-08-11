Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D81A2D94BE
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754896194; cv=none; b=B6bdqchlVoAAU2tk+2uBGs95ZEjxvo/5n9HMd34AJ5CC5hRiPMHtM0Cs2C/4z86XATPw3tr2Wwcz55hXg11SYDf9fBsQBmzifMiW3lvWJbIg1dw9YAwJPWO5bj/K675D/ADApH6l0sNQHO0unXTwjG7lJDE2VJaVEx5lfKDB76c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754896194; c=relaxed/simple;
	bh=yu4uTiTTxNHydLjV4FjKjMU8/M80oRe5qnX+qiVUcTo=;
	h=To:Subject:From:Message-Id:Date; b=iub26HLKKPLME8fR5AIdlyID602gzH50IdZpe9KcCS1ryIYUluZk6ijDuICkGi6VigHhesqK/henFO1NUU76AYmdIh4X1sdqBHfqFRJjD95YDnJMpotEdRoTPQ7FlWZFN8kWrq+YC0G/msDqAgXAKkPam9c1vrAH6FrRJd9sjMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYq9YRgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYq9YRgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C6C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754896193;
	bh=yu4uTiTTxNHydLjV4FjKjMU8/M80oRe5qnX+qiVUcTo=;
	h=To:Subject:From:Date:From;
	b=LYq9YRgwqrn9NyAKqj/fyHISy+cIl6u0INcZi8k7aVmSx/7gEvNbI2vVYG2U8QFCu
	 Cba+rqYVNlLHwgM4s4b5stEHAr/nMn8/k+70R5TjgI+8EBBc6b488/7OxBz6ZbWmsA
	 AB2NuDTaOyt7pJNOgH3qRwwIG+qLihvqAmxivJCR2osiNGNKIdZ5noHF9fa0B4eQtN
	 Z0L6uU6dJQcLcDzz4qB72Hq+1LhRP/8PgrTRT8ZcD59dtcKDKU+BTPIaZI3Bgn/XBt
	 XkGi7X0GSCtUbI1dM8sz7XyDdxtMNrlgRi2ervXF9nx9jzXDlrWATY/3PWEyuQQZ+x
	 sgcbaY38DUp7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF0C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489619357.28077.18175616871078068847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd9a09587f743b9327f8994f18bd742aa80a0f96fb5674070c6089079db6668
Date: Mon, 11 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754896193
