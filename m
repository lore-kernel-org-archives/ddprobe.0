Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482641373
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 01:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715218343; cv=none; b=piVOP1ZOGMTrAgBokByymI9PghiB6araXTJQU6s3l+BVTxqT1QhXHIA3byt9i1ucbos05X27s/vBMROeiKlhaFyhKdbnl6aUoFcKDMFSE+qLJe3YGjmet0oGXCX26RZrN5p0V8qT+VYc2RWxCkXvEIHhgsACiU+wcpgmPaP+8XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715218343; c=relaxed/simple;
	bh=dZ6wia1J6dJVS+hi1cI9DAhuU9EgJsXBKlLMgi3Rjjw=;
	h=To:Subject:From:Message-Id:Date; b=ry5VHNJRW47iTKjzvAwWLyO7ddaMA8qQ1eiMhMbhqSqy6SYk3QgFJ/hFM9wVxUc3YkFOeJdSPS7x/XvE9VmE6FUakRQZpnkmUhl+dwT+67aIDnRHUVtE6S/a70L5rCqOZbtCkd0x1eecEzGn+IV+P2twZv5Vr5hHcmJvII9MitU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+lVoAQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+lVoAQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF45C2BD11
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715218342;
	bh=dZ6wia1J6dJVS+hi1cI9DAhuU9EgJsXBKlLMgi3Rjjw=;
	h=To:Subject:From:Date:From;
	b=s+lVoAQ0/cxVttrp4SloaWzN2trQeSpV5pYbdmf8VgOIbYXcKSKSLjdrvCX6X/NUf
	 hmzK9OGBdfNSmC/KSAHHb1IiQz+R6hg4AdB3mqae2+TZt0Y4fulZpxEIVnRU9Ljb4T
	 UPq9K31a00UApBb7QhJ9hnmWPhnHlot9rxYtY4XCO1+zqSqsrV5Y3qRZWcT7zxKeKk
	 QCXz5Xd9B9oiJqYgy7bocpnKpbcUr2KVp618DPlZ4n7K7sqjXSDsh7VoO54V4cNTRU
	 Wc5JygyGBTYMGwFu6s8ypqUovzaZe+DV7svi7emWUBExS8unudVxPtA5rqDJ3dJLbh
	 tKQnG/bl9xKIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEB0C04FFE
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171521834276.11033.15234396917567142462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8dfcba3742efc3725acb8fc70067ffc14b6d7e84f2f665e86fb62f15fee0b9
Date: Thu, 09 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715218342
