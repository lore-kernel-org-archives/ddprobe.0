Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323B47FD
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721625354; cv=none; b=mWHcJcxC6GaL9fDT14L2DdJPXVJQsdf6exe3xu/KEFFJe94itj7YlEZlc8AD7Q74TD03KPkSlL5jauXOrqQlqyXvBYnGmGIbwiYYD4Vxd3YoPZCC0n2hXdNyspneD9pueRU0RxbmSU/2TO79a6M0qV3xZzk3KVxdSi/H8t+8Uwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721625354; c=relaxed/simple;
	bh=wUvNo9plTnC6s8XI9LJi5yzNNg7C0JdDdxnReZZLHZU=;
	h=To:Subject:From:Message-Id:Date; b=JMxiqvtK2IToIOZWvRnBSgKp+mLv2WfhKsOghuHgzXrWvBfkWh0HkbisFP/Ha/Q5t4kgOyxqDZo2bp3gbsCXI/AjXdqEkYwSMW94f4L9FoaLotOh9Xxm1Q18fODqf11+2y7nwXAIBCiKDo/l1BCs+9WJOUVoeWU04BK9AbitT0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULlktfKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULlktfKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0A2C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721625353;
	bh=wUvNo9plTnC6s8XI9LJi5yzNNg7C0JdDdxnReZZLHZU=;
	h=To:Subject:From:Date:From;
	b=ULlktfKGatYnLdo85NroHsqiq8rSryNLBp3WLc3E2ulP2sdxX6fV5xu8StUewneea
	 Rpq180yPQEXnrqztpTs84z2F2+gs+8WefAXg57KCjAyaF/GVDty6YcHxqlx5m0t8Bj
	 c0hm4FM7++Sh8DmApM1ot/yaioUn7OylXa67GqdzsLJ+jmkZ1ORsg5wfL8zHpkXK8m
	 ad3aYC0xzpzjExjplOFBUQJhaWQBs0yx6zgRIHcd+k4jXjCmu5jwfiaFJpdIOqr9dj
	 k2ZnscHeVEKast3v8gBSiStJCH6pxLG0U3geUfFCh+09ms/brX8y7u8cpe8LYBra/b
	 ebdYcx26gvWIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF2C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172162535360.15540.14735905833393517998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862b3e738da042f4d63d8358f954daa374e380fcdb906206afafbd7e4b762f65
Date: Mon, 22 Jul 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721625353
