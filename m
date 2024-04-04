Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D8979F3
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712227697; cv=none; b=n1c26AgYQKSl6H74HAWJXJW1XZssWMVz+lQhoizAuEYtmc4NVju+zsGcvZ0vK3m1XDdDiYe7+WthZI0QLeuVf35AUqcuW+f/1aq/Ts8qP6hKVgBIGa9WayULCtDYAkT7SwRnX7/ZOTElymzepv6IV9XNAgHfOxHQoasKdx6PEG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712227697; c=relaxed/simple;
	bh=n0XtvPbc/LVsMXrks9W2KLyA45hyvG86WxjpIHYkdi8=;
	h=To:Subject:From:Message-Id:Date; b=Urap/CZzJNWfEYpB9ZpaM+rfUeFiZEyY9dOcJiaW6lr3SiZFTgqPS2dgws9rSpn6rknrzKpQrl6YzeGgdmntRWmiznQe9K7OGtuQBWkyqH8rRvyQSyqHWYTYwUiM730YKFezAj7LBeJRAMUoh023UoeTykNmQpHloBXaAPiW3V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9/YuqAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9/YuqAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF37C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712227696;
	bh=n0XtvPbc/LVsMXrks9W2KLyA45hyvG86WxjpIHYkdi8=;
	h=To:Subject:From:Date:From;
	b=M9/YuqAZHIuOW0zmMIRcVyXGk3S9mIhMm6313kTO8zAuSqImJodY5UHVJ/8HT0G6l
	 dxqESRlemkDmzFXKBNwtMo7qGTcocmYjrAKb02wPPoSS6A09rVk44arT5ADUhrlFyc
	 u+xHNnmMlU8QHhN28xYNm0325vsmCw50YocXxwxDcHpLR3h6JxS2RBgwZ7dvsJXsfa
	 kAl9yDJzoBCUDKEAwau4idB0EpFeChQqrE9wjkeBFl+dIVblqDDwuIeJfgyeshs6yz
	 u0uh3qIVMCFGRWjGZ0X/2cuCDvjeqGd2RGT+n9B6hcekJDa8OMKJttA5z6mKvkxb2J
	 s1geDggD2v+/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67256CD1284
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171222769641.30309.10046218945216461239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de056ee5e00a3a0525ed573be5d86157fe43a7c72e422e7eeff4fd3eb9fc064
Date: Thu, 04 Apr 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712227696
