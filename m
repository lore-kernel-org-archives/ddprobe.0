Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207891922FD
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766903034; cv=none; b=EkX7X/oMuFQiYfUEXLciDQZvZYZ6vrLTPKphzhtaaW7tzIG8gxZ88Ka9Qq0UqgOHQ3/bQuE2NwwlINDhh9TBkGXkerDJQZyEGWUtqlWsDIKy6RpFXbBqsZ3XcmrfyMpID9zK7KqLy45d7euZLY65bbSCjV77ezrTja9NPVuHRvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766903034; c=relaxed/simple;
	bh=YRhkGwwMs5akhdc1+jCSfm/N4VCz3WE+fJjl3p0j18E=;
	h=To:Subject:From:Message-Id:Date; b=lNmunKQ+qE8gzckAi+R65IFlrRqPe2yzX3q6/rlWgiVF9Mf4wkWIqbDKUN+SjMnjAlh74Ff6XE2uxeEekIEJ6kkUQqkRCLkYiXH/5KqhJcAqRG31BuZnBEow3Ijab94rfDvM/2AgRGifY+A5cgwKXqOjXF2lRjK+eFgOROwgang=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCsBACrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCsBACrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B145BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766903033;
	bh=YRhkGwwMs5akhdc1+jCSfm/N4VCz3WE+fJjl3p0j18E=;
	h=To:Subject:From:Date:From;
	b=CCsBACrcRAuZ1kv6bkPPNhvml5RIM7KR3ovlYmjfr45wC8Q5XBr+Lr6BH2iHxR3Ss
	 89o5+oUGXqyjB4x4hO96vm75dxq99IWAPfgiFAetmiwxXW/6UqA5sij9h+rMaq4Nqg
	 JV4PoQw/rpxBfVzuBo9hGwHkj08VFPaQNhPoRk3coL3dRxp+w3C/43lLhez9lEZsTK
	 0PFcEXcXvYeF4xfeRqQyZrXeZSYwYib23Z0jVWBtOwm9x7Aj1+Yt4SdULHc9Dt+Gfn
	 PBAIlAfgbc6T44gUi5wG4CFGlE+q+YDgRX3WMVDCMeoGBLEdA0Oq3ML+Xrd6/twE0g
	 2ryOc9b/+3RYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4E3E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690303363.25465.12929909862910589722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28625b5b00f391f45721552170dbf44a7faa5544b78da148d5e69ff690d0042
Date: Sun, 28 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766903033
