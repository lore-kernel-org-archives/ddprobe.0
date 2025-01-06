Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39464149DF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736180154; cv=none; b=Zfpd8tZJjRVcRIxQmWCEo9JRzV19V918M5S6w+txd0MPeZs/evfK5v4vUiTEl0WpWqAEvAD1UVc0dgmJaJeyQrd+IBUKNJQxd3OeAF2n4+kNmr1krIDhzivCdrzl0xZzGnI9uxoiV1QyrhwBlG1u23lWCh4LxIJRdupUfbvbemM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736180154; c=relaxed/simple;
	bh=RFzKEc4SKUYA7LFMDts9zHWIldLBY1b3dR9fcfsd9Ac=;
	h=To:Subject:From:Message-Id:Date; b=lIXHAJv28XpadzJUt0fYhhYnpVe8mTPwDf/V6rXEEaepKrOKTeYwyh8aCv66AJxr9C0qwoEoG6tFLMuOn8mQgr6cjsmBBkJAsVtn2JKicK7B69sAk61HPff2PJxG4hpkVjvURKCMoHs9gotag4EuqDePNNXbj0kknePJM1mrELs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEP/kUvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEP/kUvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD19C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736180153;
	bh=RFzKEc4SKUYA7LFMDts9zHWIldLBY1b3dR9fcfsd9Ac=;
	h=To:Subject:From:Date:From;
	b=nEP/kUvyB2GwC7rV4ceUyyL3FtckaxmXxg2r/DKMMLT/9OHLkT5ivZURKo5YXH7oO
	 MigMvS2ocNK8PLF3dCTGJu6QPn3vUKt/d2mmyj/3OnF2+7xx4g9WWZ37NV2OZyIwYo
	 TgnbRmkdJmLF16TwtW69le079tX8mQHGAn0GQf4LcRBTNBhiAid+d/168f/5I8xzkC
	 iFPQIGELFSTkqY4HKKIfROOfl4fjUj34H1uhIz2oc1npcfKAQhA4IAUzjNMOaCy9+y
	 BH+S4ExQ60ogbLnJwuAUThY7hB3l6FE9zX5i9JxRz9T1ny2cmnPxjbVcL2kF07yaYW
	 mPbJFksyj63rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E21E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618015361.23309.3856947976971047558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de07abde86a15b0c8b439ecdea6e261b24b006a4694e62479dd4673101049b12
Date: Mon, 06 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736180153
