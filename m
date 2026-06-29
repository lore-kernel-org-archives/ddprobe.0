Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E21322B87
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782707314; cv=none; b=GqyKM1iRufvVqQ13+erHIiKaNDk3N6hvYE9V0HUL1hdsUgfUuqqrHHx4odEHvbgqRTTtB8TrIOmyQ9sVk9WSnbDpE7le7qhQ56p0/GY5hSA2ItMqyK+VNEYXXkqoRwt4/iRh+6J2hOlPvwPBgefWKmvVd0U4tnVCsSOW/s/0so8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782707314; c=relaxed/simple;
	bh=MSBJnMqAnoL0yGMS4rT4cP22hbRbgBvtik+d18lZbCc=;
	h=To:Subject:From:Message-Id:Date; b=qYIlmq+jPjHA9YTYw9GRQjv0Avl5rQcNlAHpe3F/jyAv1dR04O/NX5fnrhod0CjGk2hGvoEvFOPalaLiaxzFD/uT936QTxJm5BrHJvfU0SU3n6/hSIlM2AK2YhqKlXyNql4OrLI+LrZa/lqHwxqW307FWQNzZNgWkpmDGqgXQqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdcv/FqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdcv/FqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7285C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782707313;
	bh=MSBJnMqAnoL0yGMS4rT4cP22hbRbgBvtik+d18lZbCc=;
	h=To:Subject:From:Date:From;
	b=jdcv/FqXeKLcWEvzhT5RvcK+Zvj5k0eOfZDolgq1YQyQqzBl2nYpQowa+2HMQU2V5
	 qoN98eE9JbCfmmtGPBdTuClLe6ZxcuPjmt7C0FQe7TQWgdWRXKyazIP0VKOlwldOW1
	 kXE8OCpFg49z0WLtA4RKSX8lSB28ff5toyZQMelRamMxxpPeOkQbccvnbPqUIUIXLG
	 AkZJdBlNVKCnZKcyYpCvhrEYBkojGVH6triBezWus5SfHADQ6Y1fn1iyBScui3JcwH
	 ISfPEdHGMEVHNJgO+sWIhgdyA3qBa3N49444jJb8hjXC6n0I3GC0C+p4iuDsUrHPWP
	 d+5DiIk6UyekQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9298C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270731372.23591.12742099862063748187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc77070368d04753281b70a34d719539520b7ac8c984a400166e6486165fcaa
Date: Mon, 29 Jun 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782707313
