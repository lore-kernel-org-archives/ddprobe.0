Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344D52CA9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737340554; cv=none; b=RmYBChhRRtfyCKWhmL1hqkW33ZxtjF2/iSQ4bJtgB5AkRvOLljmD9k+9ctoT8GLc+Bvop7++gHzXIlS3AD3ZYBhGiiHhzyjscClmh32DNiMIgV7oMv6OnNCzkqAnSkE3iC2VZOSwgZ5YtaAcQ04Y79q5uFq6W64uYbZnLBgf8Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737340554; c=relaxed/simple;
	bh=PlvWyrJ1WN0nZ9iDU0JXnOXr9k37uAeq0tVcS7cOF3E=;
	h=To:Subject:From:Message-Id:Date; b=eh64TdXqq3de9yPuWIMGlgzpkHIx8cVg+tySU7FiwexUhNNTX8ExmItuRAHvh6EvMuKaSUXL2vQDkOv221r27V3kD8HETFRBGNj4Jge75R62lN6V5pBh3loyxDKkr8uZSWAkFP+u/BF+9hkW5iWKclmwAMbla1BavrY0g06gO8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owKHhU+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owKHhU+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF1C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737340553;
	bh=PlvWyrJ1WN0nZ9iDU0JXnOXr9k37uAeq0tVcS7cOF3E=;
	h=To:Subject:From:Date:From;
	b=owKHhU+RdBSTee23e2Qae9SyEeH/cdISeQw+SWAj8Ht5DzXWCBmDIr1Q8Y9iANYsz
	 6z2n5gfTmhQ31r6qZVENsp+/10/ieiTW2slcwgK9G6cAqWyGNTHwnabt6pQYtYfeGj
	 fdg2yDY6WNSznnj7BHYdJl2504tASyDWGP2ioH89mhEs1Mg66rY9C393XXrI5o1qpt
	 fMly+G6Lzb6oAoBsCuUKsI0o8w1sOESgmv3NmyN45jBJwquYjkd+cw8NbRMDjb6OwV
	 cmg7BPsXwmcj+nolvNsb0kv4NE1SS5zQ+bl/Z4kJxrURuC57e5fjy93o2d92+bJmrp
	 ybxyLdbWvALWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9508EC02187
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173734055357.21012.11885622204064762938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342f5a2007823589280eae8892a0203956c03f4d598a278c86fe950896a607ab
Date: Mon, 20 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737340553
