Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCAE378808
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771929294; cv=none; b=I8llkjopfUd+bTYTpVvrehwmAMGxfCRQO7PRur+c6PiZW7T7CPTfkWXHXX4yZs4n0gfRg1Q5+Ul2VHOvNC0q69suvFVx4557DSDU3yCzM0L7cV8KiPJMLoE9wHCQM6IDuRwexgB+qvak/dnw+JwDrcatvgh7ZY+4w5sRYTRWe0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771929294; c=relaxed/simple;
	bh=4crIqBCjz15z7v8Ez8jVkq6/eUw+R2IhWXRbj8oGBd4=;
	h=To:Subject:From:Message-Id:Date; b=lXCHXgGpK68NSpz4C9EZCRCsOU4u7NcpE844V05nwUMkfqqkeHiP8CZNXSqVVMgpT22LcawlTeoz0Tq4SsJUHS2sPNyZmQHhIF3ipnueSC10gugB62YEqXgq9B/M0l7UH5vvQQN3WcZ8avtVWGdAxbvMydFYkkCd/uSS6cnKsNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvtPdllx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvtPdllx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD30C19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771929293;
	bh=4crIqBCjz15z7v8Ez8jVkq6/eUw+R2IhWXRbj8oGBd4=;
	h=To:Subject:From:Date:From;
	b=pvtPdllxToFnkkvOIKex/VD067rjRh+6emwCoH0FOjN42HstrGvrx/AGnBAUzvhl3
	 ZMdiyT+5er5T/yrK/cGGMetVIm+R57fC6QUphhdiFkk1B9NKYbkYQYpvr4ArY2DWdy
	 PKKPux1nA1ibKUBQ8LXLmI4Q/Fp121e+8lo+eDH6684B55C+mQKnVkVmwWUMzu0Y8t
	 BIiHjvkqOY85bF8YtBAMtjqZAzuj+WHMn8RPEqOV3UVUGW1ujDZ1YF4s8/2N0Ry5dn
	 rkcXJpXAF7/RslLZqIvH5P6xG5cYT4UjjyL3SfQ2tQDgCN4rGVpM2EnzFJg2Tnkq4r
	 yKAdmxtX3mT/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985CCE9B249
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192929361.30670.3315586393443294998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a734e30a137738a97aa4f10b83bdfaa66fe1b0444b0fe5c8defd241b9f2d05
Date: Tue, 24 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771929293
