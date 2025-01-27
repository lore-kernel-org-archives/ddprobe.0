Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA4C3C17
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737950154; cv=none; b=tmQ1kmH8Pu3U1aoyOaTFFOcuOvXO9B0zq7h0vBvIhapfKkmyuo9I8erlUrehR+DQdxhYMMxJy7q7xAvKkuoIt18k2jlEss5/4HeaKmxzqQG48FUYI9gbpbCluTjJsiIpyrpvufra1RYKhxa/+HOETgVNydVdgU964PKkF85qt5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737950154; c=relaxed/simple;
	bh=Te77k+AFHjWTyLV4LMMxEn2bWbw1EiSVN4LRu0ooPto=;
	h=To:Subject:From:Message-Id:Date; b=Pv/bIMd1whB6pUED9odI34AjbDLCwRda3OmAHaAK4U/mKTjHo+6WlDMQAsiZKUYxcbxl5qZR5JxYv05WG/gtzXKHesGC5L7cnyTbeSXP5BMFyrObK31Nq3LuGEd/YocnGE1xcCY3DxYHgcghX/5RPaoXY+ljoqODjcmWs1q0MMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlEKEOBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlEKEOBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13DBC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737950153;
	bh=Te77k+AFHjWTyLV4LMMxEn2bWbw1EiSVN4LRu0ooPto=;
	h=To:Subject:From:Date:From;
	b=YlEKEOBXBV58qy/dHHUlDioAh9p2Bqm02jDfv7shiKbD5LrTfvnLj3+Aw61lnJsK1
	 QDOkDTILQqUT6GzjCx6+86K+Ln+BCTrFZMd4wslh0tZzRpkSBdNRMtRWOB0ssCDfEM
	 w7yhF0LHhMlhOQHCWaExMGma78TIHWmLeQBxkGU1nTtQw9xjxuxTBcPsm4B3BVijTr
	 LjACFi7rwaDtsg2B+EdK0qO9bQamb+JCF9peFIBrDLBOQLWxt/Y8nH+izfhcgFWvXW
	 /9yAsQT9OfsuvcqIDJv0yWxm9mRO+d+fqLCVeI0HYzCw4spG90D2ZqP0HPLd2BCoXL
	 ugYn2qREPv9Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB5FC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173795015361.17993.17357591630096308576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41c603119db284c816a1a6373a1f66bedab0977feafbe4574463e68ad6fce2c
Date: Mon, 27 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737950153
