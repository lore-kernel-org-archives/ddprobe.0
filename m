Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392407261A
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771702494; cv=none; b=X2Wt8Jg6caDOi3JapyB4O6z0TYIw+UI+FrVfNsTG5w4v3x34bD2ToVzfjhOSKHSs2tjU/snXDT3UzHTbUPeIMAmT/nAf+uaDoNcJ50XGZR0OD/mS3TsWrkM7RNjK9/5BiEYxKYFUYnR8BIbsXUYGyy9VQPkcMC4o/mgwfom2j/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771702494; c=relaxed/simple;
	bh=o7TN4dSpKmjTAYU5PleIbkM6hwi9WMipEHTQeXa707c=;
	h=To:Subject:From:Message-Id:Date; b=kWWpM37E1FJWlB1J0f4DjtLjlPte4lk+ydyJ5gX2kc0S4mFPoWDohnhe7IEjqVCHuNfgsrZ1WliB5zTBS0VvsHE5oDdSkmvRRvgB7v91MX15VxhSN7d/o5DUpvE3qQlk2QQsARgJPOKOiZT9gcokO6JT8Y2LZcZaD045EhRfMRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeJNuFD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeJNuFD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD100C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771702493;
	bh=o7TN4dSpKmjTAYU5PleIbkM6hwi9WMipEHTQeXa707c=;
	h=To:Subject:From:Date:From;
	b=GeJNuFD4erUeVYbwoCx5BIINuWH5wcL/wXUUPRtYKUhk5xCqKTHDAT/gi2nlSPIqD
	 lia7hhcUWQAk1D9e2/9C6DvdNtaOfd2NsyuwDfUBQSxiqN3ePwILhAgLNbaoS2710m
	 KU7W4TrbMUViAP/EzLOz0sad/Z3tnc2KEkof1oMh4+eHKWlvkR3HraQkHGPJWfjwwt
	 LM0+kukYpQldPQro+TLc1c9SY1OjM6rdBcNNSFbOzDbzKOifvY13+W14emJJpmu/R0
	 voutMdqenzYBtq8MYah8IZbdedz4SWPs9EY06pvrw/vf04IyQdATdXSyhmiHZ9Lv+D
	 oZdGw6yWeavNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9577EC61DFD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170249358.21200.4629746340578625857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97031f813ee76b3dcf976cc9778cc6eade77c08b6af2b0f5b4372a70fe5a1d6
Date: Sat, 21 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771702493
