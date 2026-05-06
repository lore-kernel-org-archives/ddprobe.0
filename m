Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D293EF0D4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778092654; cv=none; b=BJKPQxHxdqglyn+aVbXocbdAvr6qmmGqoIOO3BbDNKeyoAgi7IcpV6MUzwEsKONmMiZpOzJ5BcCC0Dmjbm0WpRk0zAff/AK/0PBRbrqTEk0PQCUlGYsVwEpOktj++DYw+wliUuZ5iN3/Ygk3q3ygsM6y/3xKuh8Jkdh5zZiRxp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778092654; c=relaxed/simple;
	bh=c6JKkfFf3BdsSJAwFwkhVqMgEq6XsSive+YIyWLiz24=;
	h=To:Subject:From:Message-Id:Date; b=IA2wjRXpARH7SS3Cu4f9nmhdtdLHMy3gTsxZfQVTlog7LldPeQz45M5Lrmh2xycoclcFCxlsDaGMRgD/iaaadnXYMzDBp1JigD/F9qdouU5g6YwzZvkw+1XJLqjxQWMAvp8xYmcK+DqqJrJWYzTHsvL1m/RBPpHI/QEUJJ1KiUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9Opxrct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9Opxrct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DFDC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778092653;
	bh=c6JKkfFf3BdsSJAwFwkhVqMgEq6XsSive+YIyWLiz24=;
	h=To:Subject:From:Date:From;
	b=W9OpxrctfiHlGjqi2Q99DwAzCFyJIForFYOLM/HxulgH6G7LTvNDk+C+7R06Q8bkm
	 zUDN6XvWvwFefd7lKZs8HACQGHcLaVaeDZ23/fAHe7m2617zF/q4F8xRQPhSiHSXzM
	 rDMQgiCFgDVgWpW6JYglVQwcsyl2LKl4fmypnudT7xvivtuqmA8Ufgq5YtBWziCeBb
	 q1RA6cUD0tSiOiWKB0TCRQ7T2PJPjoHS0xWegfDTSwR02optl10Lpq9i9OGJvilOQz
	 xbHz8pqY/fDa/noVcgFG2zPw1XBPUybfolQAW3w9Gx8SR24MacF2abxRr+i0etR3+V
	 Y/WN2pgCYQSUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3070CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809265369.16460.2895858921804586150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f088cc04cf5cd17fa775e2d2a61ca2a8fa8ba4d6a7b1f1aa169e5a5253fa0c5
Date: Wed, 06 May 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778092653
