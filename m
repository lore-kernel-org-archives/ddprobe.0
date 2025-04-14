Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9CC2989A6
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744630794; cv=none; b=G5U7bFgQfU5WR5UQbZ9IOKVWM1ROh1LEQOiyTE8NpyJJRklt7XbWP5851StLoo4HKozCs9+Te2hjTFMR3jS+BOVTHxyO8nQUZrS3pDcqL4JzOloHwqt9o7ge9zpU4wpaUB8o0rLTnADttdScxXaax2YdP13gY5rXjnDDAGf48SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744630794; c=relaxed/simple;
	bh=/fZqVvDGkhoZfbGHgQbTLHF14AslQXO6YoGJQ2v0zns=;
	h=To:Subject:From:Message-Id:Date; b=WmZ8G/JX515vp52SnmiYUyCMNxPi2keC0hV92TzDD9VBkOH22TFbxmOhd1wya0BlfVyg4Ug9R97syBh5SLIjdDVqwtjGSB1+Gyn2IpsItooRh1U7iCSn3xUXCkMpFN6OE9JGZOJgkUnNRPQ+eGbUjcbh2UV3cQIYs5ASDwz/E4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4Wi85gK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4Wi85gK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DBAC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744630793;
	bh=/fZqVvDGkhoZfbGHgQbTLHF14AslQXO6YoGJQ2v0zns=;
	h=To:Subject:From:Date:From;
	b=i4Wi85gKrIETlVzlUONPRgujGuZUD+gzOhNVqHXdC5/KTyncrcQqb1tnfTg9O5WoN
	 kG3YFqXog0drPpl7Ai4YQ7ntSoEHevM1qNFvEpfmYAs0HDdXZVQbr7ZwnVpJo4wszI
	 8Skk1CM+QdgxWeR+O9+VrZNTV5CUBZikPkMasPHy/CmfWBt4gMGDGdrliIYVbotK7h
	 0bnfR//bnqApbZtI5lqvpqxcn9ATFBxuvxW0fXDVZCgx8/fKgm4sK30+48vsMefRcF
	 34Tnb4RL7LSKPESMX8x2A7IEwM170G/vdKneiPtsZ0R4wlLy7KPPwNiu1xeNPKgFVZ
	 o0NOCLsN5Vu5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E81C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463079359.15907.16642553383329791548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078f9cd5f00d957a76d04dfc3ced966a0c1305131389eb9420a33e5a6ff560d2
Date: Mon, 14 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744630793
