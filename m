Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D592F1CCA
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746496195; cv=none; b=DoUU5VUHCyCJacSgFNzuHikyEkamY1KP1Ps8KgVvCC/EBflloqyUe+rZJKjPNb0btC8mOM1auAceCrrC3E4PE1nEWw9qos+VMByEBI5jfYHgmbLZ+Hrw8JJjWpkw35n5R3uJyMrlhJMMd5XHXyz5e6DfekvtibQ9lEuAnWBlBrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746496195; c=relaxed/simple;
	bh=hAz4+tFU6GSGZHLWitlbniZujrUMmvMRLx+I6j9buUc=;
	h=To:Subject:From:Message-Id:Date; b=n/895Cky4JyHsSXq16U8UcF7wkZLr9mini3VZumpyZNkfPu5ymTVVTWnHfPrkcpcyuXVnuK+mTjFvzBJDplks4k+Wj+UPCLLkd/nl2/uE2lfIJzr8YzASJ9SAH0lAoijCeBUBl4C+UJp8tQdIubyUfO/7LHy4ktb/CpAK5hfi1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNHGE6yJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNHGE6yJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1F4C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746496193;
	bh=hAz4+tFU6GSGZHLWitlbniZujrUMmvMRLx+I6j9buUc=;
	h=To:Subject:From:Date:From;
	b=hNHGE6yJrAPTy3ksLhHWiwsL2fPPUWHFaTEDUQeQy3Thr9PROBDJyuBu3Azyaxktb
	 qMg9Af8tQzrELYX4epAjJCf3yuj9w2AQOPvgS3GRYyYkNQ4rv4qx4dVgQ+aP+k8TbD
	 aL7TqnGUIRJ6+8NjbMoFptgZzta4IbiwertVv5CLAqjE2WNVQO5gza10icQB0ZjR9b
	 Gi6Y4RdII5nt+UrsLFGpLsDmytXgniwC33JGfni8b2iMv66hih6ygAZZvrDTReDM+K
	 xzfjcmWtg+pdaKMDWMq2lnhtPBY5T23tVZiGmHRQgmwGfhJJxOPHTGZ7zWKVx7YdCl
	 jgibJKSlsJ8lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE2DC3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649619357.11651.8076223267219705125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b436d4b3204df5052a32fa41cee46a7b60af487ac4876d92392538ffcf2566f3
Date: Tue, 06 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746496193
