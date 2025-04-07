Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9A422B597
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744069794; cv=none; b=sv1CcfrfYAdQLzBG3jypY+6VZLPVlLmQesxOfzeWkGiJcwXVKTOjfMyBnZqR6BGgOjIRh4VDr9iWQQpjy9NjZj35pKHDy43j/YNkCR5n60DIN/uQtcNnol3F1a5qj9nPQ9GxKuQqOVF+/pNyWWrWjRoQzmtaWfx2unmOZisNIeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744069794; c=relaxed/simple;
	bh=w+I73kpvGwaCgDwuLnL/BVWWDsOiK3FWZmeHkCPlSPU=;
	h=To:Subject:From:Message-Id:Date; b=UnulM4L9KFNYz8OSKBc7R5iXaYLJBjD8kWfZwDWaEBvwBgLjDZmJwb/r8dffm917If6j9sYzBZDO7CYx9UiTdANA4jGKqXetG/1Pdw4lEujC7zW1yhmRHbJMevcgOjh0vBbE4tl1kkCEUXwcurl1KZdBrBlrzob6A0pc+6x8ST0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htHnRkWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htHnRkWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA28C4CEE9
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744069793;
	bh=w+I73kpvGwaCgDwuLnL/BVWWDsOiK3FWZmeHkCPlSPU=;
	h=To:Subject:From:Date:From;
	b=htHnRkWaWyWgROxVK/hVUZm2RkHny0qQ122UKEcAyQHyiSU2XpJwkPzJabRNirgs0
	 FhN5UGGfseA1swEB+MxAXc8+vkeBVmfWCQmGhFY37AUrNqw+4hgJOyErQQZNKlddy+
	 PTiJotfY98KjA49FHL7gTjQsqDk4P8kEGI1gmWUbZYnvim7Gncki+qhw6Ccx6E5rUR
	 5n4vZWUzwAQs/qQvG3/SnhqHn3+Qvi/YT/hGI8kP8iooX/IuAorP8UJPWSLZH8C+nt
	 xv1z7TNtZg91KGTws/bh+x+qI0gpG5ZcHK2uJFu+Ko7KR45DZof3IqeBLlxiAZfBhF
	 8VlBSfiIBHteA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D7C3601E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406979358.23642.11597031358979773758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c79cab5989c8e9349f91a54debba77cbb162db6fc9c5e8e12febc59bcabe39
Date: Mon, 07 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744069793
