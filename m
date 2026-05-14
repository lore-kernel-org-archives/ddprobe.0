Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6072397E64
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778744433; cv=none; b=npPmFhczUfAk8f7iE/lTrehlwicuHn56fzAOtnLhYB3LKn3Yd0WgZuOMG/y+X3WyQe+3fsH1xTIlyZDssADZCum9scMVl9DOxWMUtkz9KISMg5mRADPFuJ98WTBvWvSSO7jInnUMHwrQ6wX5R/TUz/1+MjQoNa3X1Q+qIcPa0LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778744433; c=relaxed/simple;
	bh=9ygm3T7h8nSjprHMzDhwyYBohEbdE2Ds3WMYdxrVWg8=;
	h=To:Subject:From:Message-Id:Date; b=eaizeRfbZcfw+FURE6gy+31bMBIWswfnOHPibEsDA1jQHMj2EVMsDWvdfhMXS/kq7AL13KtU2mvcJzTodt/Gu0ASvGZhpXa/+G7COQZsoXIfXSssydoR7ZqgZ7Jq0nyw5cwm+RdcaVS+C4JJhSOOnPQ8QiH5VVlztM6Q8FcHMnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebvidNbw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebvidNbw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B907DC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778744433;
	bh=9ygm3T7h8nSjprHMzDhwyYBohEbdE2Ds3WMYdxrVWg8=;
	h=To:Subject:From:Date:From;
	b=ebvidNbwmFW6LduxF7uaaaTlI7YDtEYmRqjW4sLAQnnnkVGRtfm5WSwR1nzN51Xr9
	 RiTqZJUGs8x1VojLeQiNiIHZBC29RbTj7xO1yCI7WMS1MOMbHnHa2t0AWuUqcUVzqi
	 0mKs+Sancr9VN9NhXOcetQnF2konFra1rTaJofq58EbG1SVx05WgeMKL1LbJuGPFdf
	 1dGaAQJrejaLwsLcdx16SQ/Ue3jCyMLW2Sc0pkuhhMQ2wK3PhMfo1fAxtzy3IJylyJ
	 JzKgl9uA7QDXLXmJTD0zrAJkfh5u4djc1Tahi/ytH39+WOrDmy0V8v9j7VTSbisdMH
	 3gwho8SFc25Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5BBCD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874443369.2063.4256424687691518533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9948ee072b3fccafc309e1492abb9c4be64b7f3eb87a6a2b738607f87f3ab8
Date: Thu, 14 May 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778744433
