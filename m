Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6D6146585
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759830594; cv=none; b=Rk4qKuMZ3T2vfCzxwzORqh+EituEuxozZc+4UdzxtJd45exeMsDRJG4xRxAD/dvbK3nCk6WGm/WWSkL1AnFfZlA7RwCLJx2de3xPZ4M6rUpmeK+bRUeu1mk+b4Dq97F0zhvb1ltAb9uKKyi1SEGF5QdH0qFAwiL653qewQY5G2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759830594; c=relaxed/simple;
	bh=SydVyWfknyjBMdCiWfHjdWEYj/D6Z6fNgkWyW9My078=;
	h=To:Subject:From:Message-Id:Date; b=c6RyTtY3z7VEsfH7vsZSkTLkYg9kVWa8S5aUtmtPqDd1XZwzU1g3kKzHL8dkFbHlmhh9wLj8yhvpAKJMOEKHP8ooOa+EJDTZvUKMyUSZr0A68aTZCD1C5dE6wOnE7NcGCgcY0oTUmKudiRUj7+5lcnAjtKgawRibtopl4DhdbpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDMaaK1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDMaaK1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F73CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759830593;
	bh=SydVyWfknyjBMdCiWfHjdWEYj/D6Z6fNgkWyW9My078=;
	h=To:Subject:From:Date:From;
	b=gDMaaK1PXrQMBKGDA3r1nXV7Op9IlW1ylbKiaCH9kXPu1P3qAJCxiLFcgq7TMA3ZC
	 ZzyuumxuvnaiGpisQjwIg0BtVEU6+rHDpJjrToxINr02AesuBgnzSKQtbDl9ycUrDQ
	 melC4E2HuKjbt++H4yt5ZtHF2i5OIsLwzo733zWqyopLeJ9L2MUW465Avr/j6FzJGN
	 JT8BrT1xUw45Zy0DhNu63J5aNkynGPLqrUFZ99GUNujHOAFjKC18CqyHLOrON++nwb
	 NPBufVjU8oj+h+5LpIRR7gwEKNtlXnXChSrUnfKX9iOEIcnVda/yaSBfOIPBvLpb3o
	 Uv0yV1gJcmU4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB5FCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983059358.9527.16005757642468906558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddea852e75235cd4ed750b54e0a65c808c494115e316293a42489f3ea3ccf8d7
Date: Tue, 07 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759830593
