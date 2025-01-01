Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304C02942A
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735749954; cv=none; b=awKaEYwN2QcJu9m75vYHTEce1JTiU6EabtxaVZl8gBCzuNPu+kvnssL2C0ZU8YcYFcE/O+UvQyOESu41mVrcFT3S6tt3dU3RnOcmRe/YPc3AThEk7/d4bXNEllU6gvnw44Yr4ZmfZ0KKUWgRfvqBFAg6evglYNBp8pDxID+Njtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735749954; c=relaxed/simple;
	bh=iTpTlzZK4Cn6bOuCZIck1Tn3QdC75VvR8g7W8xV5o9Y=;
	h=To:Subject:From:Message-Id:Date; b=JXbMa3eDY1rUkNiFs6PceXxVBiQnsb+bQa9PiPrw5XfhKxoghh15wguGnvU8zU9O5MSp1Ay0V1dZjlasBfTBk+T93a2GVm4tE6TiELjQgdK5Qo+5RK3qdrMMW6OpxkcvGWpiKr3XQjzVrF851ErEB3G30Jl1llIzybQTQE6XRpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvXjxJII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvXjxJII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CE5C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735749953;
	bh=iTpTlzZK4Cn6bOuCZIck1Tn3QdC75VvR8g7W8xV5o9Y=;
	h=To:Subject:From:Date:From;
	b=dvXjxJIITuNnKutgyaXvpa1hm39spRX9yeyHCLwzAT5/9nl9OsDmEFpz5lnXiz1Ha
	 lIJgLPKNx3q2G5bjvQNFYCJFjj3uSVbDzR/LmaqN9BvSVvZGRFoysE0H0msgiJqrCO
	 3rSLZfmhX9oOCjCtrwfG65eG62ZNorN2qYBR14u4FWsV1TQw33jG9JZLrWmD3MaOFC
	 hN3+cqZf8OR2mBZLG14hb+3h+0ajRt0yDvgEvCvAf0xCxFuDWf3lChAW4xgeN9J3Ae
	 yAibE3bpNpQ9M+/JHMc/7G2Ck6x2nrZqcWeq+0a5CQCRoxikCUvPhb1pcKJe1jGJ+4
	 +Mzoqd5yDrFag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EDCE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574995357.24569.11858683442177530563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30640bcef2490582cc59956fae3e008b2961ca330d9df9380b6e86df90e355d9
Date: Wed, 01 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735749953
