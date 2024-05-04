Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D55B63A5
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714805543; cv=none; b=gkDKzS9Dcg38PsR3KQdn7/YK8TBq/JPaVNcAKLrgQf5+x676ozdYO/QUKTAYMYQyWtY7y1cQie8FoqNSzHCrKMcJmK77HrTAFCgO/9oaTMT7M6A65c0i2EJjFj+Lqmw6uDexJV0jUFFKBuqpBt3fcToeIpXIb5/qn6ffu0UbDa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714805543; c=relaxed/simple;
	bh=QIAKsYi4LY5pw+q6OUvpUS7YaYNX4/CZTCOkpjGRnuw=;
	h=To:Subject:From:Message-Id:Date; b=W0ibI6O51rQVsfx78X8LehsQ17/9DYAD30ne3c6FVAh0KSIXf9dxy1F74jdG6suolbamk9MnFOjgC/Ef61Sp2Y52JOpEygN+cVkGlBsjAbKcoyTY5MrSkFU+oIIgwi6NkOSl346abzBoep3bo5jEjgHERecefCLO7jz585hKG7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6Vo5FfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6Vo5FfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D565AC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714805542;
	bh=QIAKsYi4LY5pw+q6OUvpUS7YaYNX4/CZTCOkpjGRnuw=;
	h=To:Subject:From:Date:From;
	b=G6Vo5FfBvIcsMuGbodf5f86wDoDzEioVWfm0EXRmAcjD8quVGU9i/OWK+nGzCEieB
	 Mj3WdOtFv8C7tgLedL0NEIxFsYbWdDE005lttxjmiWoFynVKDAIYubliog8TBv5d94
	 ywQFqfGO/U+0tHu+Z6+Bk2ByozGULMIspwgLDtd1ytiutHOiw0xzo6mMCqBY257ccH
	 PlPkwFgcu1dslIgF2QKe8si+bprrWXwn6mrQFD8oi6DjBh0VK7U7QoWQ/Gps2gdXOT
	 baMrzckNGTG1MqVxPUZtmjreulBdJ29qxMn9xRDbXJmIB/2yOhIEKmvf/LPRQg8ji2
	 CXA+FNOeQlZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CF7C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171480554278.21404.2495633154824324172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ae3e9f95c78f45334971c25c0f675b2fe57e1bca1dd35a8af57cff075293921
Date: Sat, 04 May 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714805542
