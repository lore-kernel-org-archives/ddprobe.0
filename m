Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2428B1B4138
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760284794; cv=none; b=ewZ/B6dsdsNkL5BJgj1KN34QqrGq9yK9DGOcCR5ioXEes5YP2JPNXVwei7vYHClgmdazgdDsm8EeSkJeUxZlaHnHt1z70rgDgZOX5ses65GUwPgbw37joPJILs6soxjqYjCG9TxopQ6P167+ilu0tVHglViwmCT/FT09HUrXAr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760284794; c=relaxed/simple;
	bh=8QqjRHpZ3+RPsg9yzSO3LfJX8CBZ4BdwiPC/nbi8lsg=;
	h=To:Subject:From:Message-Id:Date; b=XQ8JEaKF7aWhQKwO999VEGQUCtjN7Oxuvyvrg9+LNswar7j08tzcb0tVK+oQwt5OVbEgFkFGNHW4bmkbtbinJr3BjTuUnME56KrOb6fIjAl+RmbuaBQMYfNaa5JE7AOhW8gRyLrPoY/sKSRihu5dVZKWI0H71FiEVWfRH0Z6nuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxgzT0++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxgzT0++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E01C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760284793;
	bh=8QqjRHpZ3+RPsg9yzSO3LfJX8CBZ4BdwiPC/nbi8lsg=;
	h=To:Subject:From:Date:From;
	b=HxgzT0++ZOuYNsyrCeXMQQsY9HyDq7GgdpLMlqr3Zz1Cs72tPZ5eBW4ontH8KThgE
	 MxmjdShbl+HhAJ+nxM1ByxpCBCX8kmA++RYD56D//bjyioI/ZtFsDZntxGg5To6m75
	 5N+qzNHkJY8Mx2AY/yyGkJXUUgTZOW2IN1AF0tpLd6AJnb/lVVH9zWz7mbdQCVqd9b
	 /kPxJEOttBSUoA0nAwQHYrbySUeH/+mkHt+oqnVCkrDj4ufrvirQpxGmCVhgx0eiHx
	 XWeJdrIcH0iYNAgc/UnU6B5e7bs4Q+VVbLC984vciYsC+E+igyGWc9WbKiQvI9xDTE
	 4G87hcw68K8ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952ADCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028479357.9551.15458658833022732521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ab2105a6734db0ec24f6f0df57f34779fabc592d32bf433e0d5944efe670b3
Date: Sun, 12 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760284793
