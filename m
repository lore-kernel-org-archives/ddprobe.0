Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E85C3A1B5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785370234; cv=none; b=Oqb470J+3V8xLedgy76+VoHsfzn7jvEJQB6czigdnVtQu4J6wAZfm6OPnnu8+48kHmgOs8lV1meslaMLJHnI0USoaNo3K+0gjeV0fRtmJ8rczsVPBjf/FpHAXau24h6ocpZgEndynjO1bz7scC7G8nSxT77ppsTal5BsKGDbvU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785370234; c=relaxed/simple;
	bh=AyaO2ncEBPMjgI0mMlqr8ZvaxpzJgLqBV6N9j5Uka5o=;
	h=To:Subject:From:Message-Id:Date; b=n9ZDvWHLxH+pGFAUVNrHac65neszQQPD3fy7u/N4Nep5Og04Qwu78gALjSN0gPqu5ozPaHNVr9papUi85q2E3/9xuyOCW/8XTGatm3ieOtXaaUwzL/PokAuitWF4DxOiVrkzOnoFARpGYDkvX7EwfURNJhMVauHth4AuQlTdl0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRs/x4wy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRs/x4wy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AC5C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785370233;
	bh=AyaO2ncEBPMjgI0mMlqr8ZvaxpzJgLqBV6N9j5Uka5o=;
	h=To:Subject:From:Date:From;
	b=dRs/x4wyqNkVRW+ehdJdVAJsKbQaD6T3euajaikOP0nnEOkYwgkh1g1RumppovG1p
	 aifARAgT7yGL6SXgvAZdlazdOFTVIfbiEafPsSMrpDl9sz4RSFGoZF25MddBxiubXC
	 OGO4W0V4vjBY2l3XzZfs1oBgZFCJY7L9XEKaoY3p482haCUwqvPV8tBOabNkAg6w0+
	 5hwoW91z7/WiSkqeBZNUX2jMnxyyrWfXMF5IYsk+wvvyFFuy74uue5hujK1LiCIz0T
	 2+CHqn31Pvpa1pNyt5S/dFN8YVD0sGvnXOQbaQl33MMjfM0T9nmL8a1WHbgdWUp1DV
	 yGLsb9w2KVmNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB43C53200
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537023370.17547.14075132223449176108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85166e578f81b6a09b093e6b110697c6c99ade05cf432069f16392b3a1c87b4
Date: Thu, 30 Jul 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785370233
