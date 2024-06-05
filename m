Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C32919D882
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 15:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717600643; cv=none; b=mvSv4vNmaVgXSSWOBlyKfDk9q0sJvyaVATuFFfU28Z2Ep3Y8jRfLOQZoEKPM4gokoOw5cUvxRLt3NWGxY7TKM3GNgzI4ZO+ToNQiTgVJlLtBBWZgQzVZybGZjXeiwi71WtJVdfv/tDUe1tdeVMEEeS7J4cMrCfMNf3Xx7AhxGn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717600643; c=relaxed/simple;
	bh=LWvPMgs0Fbs9XD47HFg9nbRa7Z9AHx+c6AZ6Ckh5fSs=;
	h=To:Subject:From:Message-Id:Date; b=t0Fk1u7i1afikESZoL1nDnsQduPotmagQYMm0Rv7EZukr+Wgeq7HSI8UbwErOU1F4UT2Ig+OCy+rxybfxt8kECULSC2SzaQLrO09RTd0x8IXHAnG1wWvKtHOQWdh19SI6V5zB1+cGrH9afMne5S2Vxjmr+o+ZtewF5ZHzZ9MH8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9x0rlrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9x0rlrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9005C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 15:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717600642;
	bh=LWvPMgs0Fbs9XD47HFg9nbRa7Z9AHx+c6AZ6Ckh5fSs=;
	h=To:Subject:From:Date:From;
	b=V9x0rlrCBYnL0wvVItlgIL0EAa7p+3OSLo3dshJrGmhcO2Q9m36Sx/TORuvxA8X8C
	 NIPvx1oNz4lYUuFJwuyr2VDhZpEfKqGwz7OdyaiuAUY9wpN50aAF0R1ilR6DVBXLDY
	 TthvuGzpckQRSk0GLuo87HMSiW/VXR3eqqE8ILlS9TXErBqnFr+LCc2/zcD5etsWGG
	 jT7I5/yGwkJSwHpsENVMA15VrUxnqPGuj++ZVXK8UdjW4MoomJGzma93TQCwkcnHA7
	 d1ahwQwWvCxM1wVuluVhJf3Ck7jrcibRP3BbGTnTapfxhwla8e4xHiIeuKHONzStpk
	 5SefVUsyTejUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5210C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 15:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171760064279.1784.5358936079469592907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b21b11953154f266783b58b12c64fd0959c3adbd728ee8d1deb2b5e2fc9ea78
Date: Wed, 05 Jun 2024 15:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717600642
