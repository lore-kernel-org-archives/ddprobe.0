Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50AE4F883
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712679497; cv=none; b=rGyHQqPwdC5BOr8s8jUgzahvopH1XfGPj+q7fqjCBw3FN57bFZIVh36q8/KgcFHuJEohCG5CvpaQSzwlLsYU7Yj5CGlYUzJ8og4iPWI9TF7iRWkRB9E2Ym4UzDThtnA8IFwvcZkZaKbOEzXlL0/Z8MI5UBGAJayRzF41sSziJPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712679497; c=relaxed/simple;
	bh=N4MklzqvuXNCwhmoTb8Ty01J0YEaQQldR4tDZLhFSNI=;
	h=To:Subject:From:Message-Id:Date; b=N6KNCrPqwChMZq73/vPLXK0W6XWtg+ws65lcMG+p+IwmbmwcTrnGYdhHq56q0i/htgY8Hx+X7RMZTmhY9y7ke2nmQYDEhzqGHwUkOUW409XcUQnkvNio6vg5CeLjw5geaICac04e28pfqgKpLj4kyMD3qdcarAfbqxhy4sLcDWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRf+wONu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRf+wONu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89421C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712679496;
	bh=N4MklzqvuXNCwhmoTb8Ty01J0YEaQQldR4tDZLhFSNI=;
	h=To:Subject:From:Date:From;
	b=HRf+wONuZje1QPTVYzYxvlWoX25MrWvKs4D8qED6kcpYyWrXKfK8bmBeugaIeBwss
	 VQgXPxrWkhwvOhk7b4t7nGKhdBqR6iqYb2dDOL1Q9n2G82U4fIsZaDcB/cYptWPFO7
	 /KAaYyx9vs7Rv2eR/o/R3EjHRJkqd4jWtle4QA7dDQhSJHESzGDSjBx+hV92pu/G+o
	 GVi2M7HU+W4OjW47MD1hX0Hs2ESlKsZLrsJCkSDbqExCxXeBit478d2zfZ9P2Wn3oq
	 56ucOnNhBZJ9WxykZeylV+N/cbm3XipWSbgqaAu1LcCcFOZDVVFqtuoHgH1CDhrnkh
	 6zHkNUaGqyFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D1F0C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171267949643.20717.14696645716188601043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cf7f4e7c8faa3428f00dff19db3919d35dcf4d256798fb74a90fcd9f5195b6
Date: Tue, 09 Apr 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712679496
