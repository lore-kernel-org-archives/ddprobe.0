Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340BF264A9D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775004894; cv=none; b=pmIqjGgZ4kve35lEoocV8BV97oCqjWf0DHhKRkEMt+cfVUUeTTUnDX6rtNqV5KOUSvTOrsi9IahQBfQyAUXVSSegOq5pgK4qY1d4bSpVUW7fnMJCKYdu2G69Zv/EGPg5Y2gCPlZd81BCwVUeJr2rGvRz4x6f2p8N+RyNHJYmacg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775004894; c=relaxed/simple;
	bh=3LbnMxBgnco2mkPjaBwMPZCR/6sxIleX4SPtzGE6UaQ=;
	h=To:Subject:From:Message-Id:Date; b=IiIhnIcJpaYly5gwdAnrv6B3PGRvTA2EX0j3Co6BkEQcdYI2qB8Ri8CZU/3j7e6PCjJU4QZ3isL4YRyO3tB8Dc1qRE0nRKksl/DOL69FxGiF/1Iyar453Ec27aTd77Aa4nf0ZRC8cOsItad0x3K5YVSrAK3BCJITWGsdDU0Typ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzYBHen3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzYBHen3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5353C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775004893;
	bh=3LbnMxBgnco2mkPjaBwMPZCR/6sxIleX4SPtzGE6UaQ=;
	h=To:Subject:From:Date:From;
	b=kzYBHen33NPlKAf0wtOnT6677O4GzMKAJZHZWd3c6tMjZLERADKr729sXHxlO0rAJ
	 h9BVxLVhTVXCv3Qk8i94sUgMOpVKhOxCSmjy7G+jH4NxgIAc+o8RSmwttR3LUTU/up
	 EbspJtQfkD118Vy/MmQEgVKCbMcBhdZ8TM/YlPmDEgW0HiNh7x2nraJ+PSyasJ6+BV
	 myglP9j3NpoPZz9TabiNO/KbfOjgFvaTHii+VqaaIZTn3uZvHJgA/bWF9v3Ipk6KbY
	 aTl7SJCXMsiprYlcAA9yz5Ic9l5hpLlMSDR+Ulg7q+uzJeEptPQkmerEILfa0fNEbn
	 6BAKUHeV1Xc9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9398110F9311
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500489359.784.7768976432575369315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c5d516e09d9a594d11659769a3da9bb41742b1b65ead4ae9e992b243f04e62
Date: Wed, 01 Apr 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775004893
