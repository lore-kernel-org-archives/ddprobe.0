Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59937211C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748741394; cv=none; b=OKKJjR1xtOFOVRjZHW1l1YWBmXfQol9EsJ5QzTYu6LFBSifigCiDPSCFu4M/Ugo9zCPZkoYSHtUVv3VfpwwpliofIh3sXCJKX3zZE5VZkEKLwc2Wx9vGuNRCqnzl4swL3+RPQow7XnaghFHGF5IaouoyNh8j/m0sxaaYHCvVnBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748741394; c=relaxed/simple;
	bh=5W4rKQMz9fEJiXeM4NcLMSm7ygP5wBfKfzPfsSeJN5o=;
	h=To:Subject:From:Message-Id:Date; b=nFuOXT46PDJTGp+JWKVQ7FncRR6NyLqBYWQmsabNl9bDzYh1Sh8wsv6upmRDym70etreF9OVdALlxc+sCCSXZX5K16Vpl4EpeNJlssoDIV+1NmkRT0jRt0gsoNqloZtEZHFHYAfa5V0D7oFBgZqivOa1ABKERwzHZs/PhhSTGaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYIeC8fV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYIeC8fV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70A1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748741393;
	bh=5W4rKQMz9fEJiXeM4NcLMSm7ygP5wBfKfzPfsSeJN5o=;
	h=To:Subject:From:Date:From;
	b=NYIeC8fVUi7hmKlqVYou+QKTXhT+sDc7eQ23JBg/O7EUMM7KcLUzpFStU5boLcV6n
	 C+RybQS8VsDlClTVrcTZ00jXw7GfsBJIfZhJJJpATBFRqrNW3HMVVbzfOjq5kp6c1k
	 436X6Ji4HgHdYFpHHYtWPGryrgz4wDJXQnpRiGGgPejiFo76f7QkIrVUQ4eLRJRuAM
	 R9NO/egbaZKfkf2DkrYozUInjfDJMC7PxVAsi6TRSf+LZFoyjZ3fIMWotOeNff7ZtM
	 vGGMv9jkn92VYeOyTHZS6+ft8KtocA9IoGUHVQJka/rzq22NVRKXA0ykdt70YTWh6d
	 9Y2/5DqGmB/+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BE9C5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874139357.5618.2061224050048566268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4fd18b47f9c7fd21a233c1e9fe9ba6ec137b88bfc75f0256ec7ac8f8e2a21b
Date: Sun, 01 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748741393
