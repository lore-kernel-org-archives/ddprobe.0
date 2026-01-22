Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051AC358D2F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769105035; cv=none; b=lAu+kuywwUT7ky3qIeKKHUhwx6nnAENLZPo7wvPEqk+E/KPoI4aBS/hAxTNivjLpZJrk6u3DgR6VUUlkqoscvWaVXmVYHUJaXKj2X50BxAARLxRcsCPiY28oqkzqWEDr/NW7Pk/aDaJb0bci85ooHZMwI/LACx4GhiEgAWEmEno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769105035; c=relaxed/simple;
	bh=r6KbDOw4uAbjIGXK6OIo89ooDLBeWHSaFgw/Dw9fkA0=;
	h=To:Subject:From:Message-Id:Date; b=KKAeiHr6NcgL/s1EajLxkpjUHFOShRI6hY/WTvn+9WZevAflQarrgNQQnYmP0/mkFf1TBZ9PRkyKNhKKoaDYByc5RZyeNN0YKVPtbol+pA97bVnk5w+69MXlI+FTt6MtUBXCOU+6hF/aNc7W8g5omlLaDJixTjFA+jKPfurK9SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZezhM79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZezhM79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C4DC116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769105033;
	bh=r6KbDOw4uAbjIGXK6OIo89ooDLBeWHSaFgw/Dw9fkA0=;
	h=To:Subject:From:Date:From;
	b=eZezhM79RYkzmvP4nqOaxLGZ7Z+WJdpJYFORaq55dodRivLcobDEyefWqrTzOyNPv
	 1A6c0kmS6uqF587cdkDMXxhphIKeWJOHEfooWZNOStSmkDVRJqSbRrx/lPFAcjmFcC
	 9y5l12qLU7yiNMVIg2GZZE+os/XL6+bClUr2+qKli0TiiAvFn2eXrUsyXVUwzZvzrF
	 ahPES4j4YF7p+pU7WnQLCmwpLdFf0hyvvz6ddCiGxR0rvqLk8DgBGL+hsPLRCacKfI
	 42kA3PyOCFaeZdV+LbqPLBSPwTaJpDt7EUgTX+gXdnfDvWzjfEiLArwayczPrAquOS
	 qN8DN7nd5c3uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F26D6CFA1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910503359.31255.13523200827490114251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c2e1e6757291d51807fe37b408b07b06448905a98136c3e8f97abfacaa2754
Date: Thu, 22 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769105033
