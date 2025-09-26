Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEB21397
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758907794; cv=none; b=uS5wxG88LTMRB2jIWNsaP52NRtfNOMRzbhw5Oa+/6QKGGhChk8leb/Go8hYfAKS1pJhn6x6/lwagIbrb9KMWVL4bzidmB9EKHMMeMVtoXQmJ6Xa5EDRZmwTNOwGcYMer7AHZYto1bDnNwWoqQNfZcbDt60ERZISn2ghlkVL15tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758907794; c=relaxed/simple;
	bh=+uVzEU1QlbGQeFullAzgI34UGtLNcgQL98PXZPryLhg=;
	h=To:Subject:From:Message-Id:Date; b=WlbMVGg0em2CZgVL4PHRdsqIl4znl24p/FmJueYFQkzwj5Kuf6GkwTGqI1VVl+5Yd6V/pybN/8r7N8OnKxODANvxZlMcOWyxRsFplMEFk1dW4xcYr/l278ZtBBvfKEjovo25TQ1ifXq78+ODtMA0p9YvwxZq1GEdm3fglpo4bN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFw9NDUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFw9NDUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4861C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758907793;
	bh=+uVzEU1QlbGQeFullAzgI34UGtLNcgQL98PXZPryLhg=;
	h=To:Subject:From:Date:From;
	b=AFw9NDUEW9UdkVDz3HpeiI/SoojS6GQF3cccaBpNdRfJcV0tSxSNs7tUMfzM0+opK
	 +N4yw+DTNZLM3JpkAB2BZSE/ZKUY/SE9UG677pISZmDAK+6kAupaAO8gZ+bRHVrhfM
	 WspXI/OIw8w2xAdpctV+1opnDEGoR0LEtlIZ0Zz+j3P3gjz5nidf7KcVndwix10byg
	 e8bNMuOXxF9uVPBszyCaPCy8+Ax5imkzc9nlcYKmTZ1zA80wo5RPbUZCK+5z6NHlBh
	 5Q6DDjF7g1B6jzkcEdcX3PxRjsuurqJ20vuJwIcIYB3NrDcPqUxQutvND+L5g7rWav
	 FiJwh+xM+cjyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91015CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890779358.4560.18431433506970359484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab996fb6b6213dd2051eae01cc75f0cdfd5163476fa163c6e02478f0b8e4eb6d
Date: Fri, 26 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758907793
