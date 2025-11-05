Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107F627FB21
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762367394; cv=none; b=FbCYfj1uikokL/CF2ICKudfNctDJrnG0x7zE8neQoMbDO5s30W3VCphEyFF3gjt/ybAVf36ttie6Tf+ycLmBHUkbAtN1teyqG71NjYE4QsCn1LIAqVNR2cHTH02UV0cWiw4UHXSIHgkwNwjzWl0MMNp7+Dm+CzcJT+A4dbW2Eyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762367394; c=relaxed/simple;
	bh=17eWhFsZi5tqiH6XPB2sTCz+Wsqgx7KejiDJhmX5at8=;
	h=To:Subject:From:Message-Id:Date; b=UfnVrbnsV1syL72iQomi/9aIUY2JYZMS9KcARj41ZLYysVVR7aB1dckRwJ8isSvrqZdRsXB8Yey8q3FjcwvEAZ6COVg3/3r1it98pN5eWl7mpzW3ZKnmQtRqVskJCYLJKQjm09P81YplnK6f0IV6rkoQEurrh0rElk5w56iB19M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbjOBe2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbjOBe2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2916C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762367393;
	bh=17eWhFsZi5tqiH6XPB2sTCz+Wsqgx7KejiDJhmX5at8=;
	h=To:Subject:From:Date:From;
	b=KbjOBe2OnMG+0gLCUP7FPSZ9dR2R4O+W6J300+hC88grYm+9+gsnyW7WO+j6XixFd
	 NGsoNudEJezbEDwQMXIIo3mQaIDuq/Ju9gTiuKcgANS8/6FDV/pT9IFmT3ndRXoDfy
	 /uMqzDLmr2LceT28vXY8QoWXcwgp/+7sgW79eFNQvS578Zyyzm9bJHv/DUV+FTR2K/
	 BMau/CFfEwlGuK32TNcD1HAnN1fgFmO+xYxU5GUwzCl/fV26O7sxwjCLgBEU0gLGku
	 5qDIjTCkO3DJ5/361QohLaEmdh9rUPiVkudW251hDRr4ZAGpL00mNwWg1GdaxmplJv
	 AppfKH/pdT4tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DD0CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236739358.8802.3992880603021429021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05cbdcce8fa82efe5d5a1749213b13d4b7399a917fd9d21a386dfdeaaada96c
Date: Wed, 05 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762367393
