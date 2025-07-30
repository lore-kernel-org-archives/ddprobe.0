Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2352F26B74A
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753870194; cv=none; b=TmE5JYH20fNPDmFO7uj63hYszfd3OnZjTALmnNCI4qV5F4IkS6/8655GXwhENWi2EOHZ3+5lzxsyuSsOJEkKTeIfKi4okHPbqlnHGjFm9NmQ3M0R6KHiv2vkcgHMQapf9uL4FvWLNrh9VND/v+fCWoAKUmf1GMvnErlC8F6sGS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753870194; c=relaxed/simple;
	bh=NpcCwaNAoG84l2BEGX9GCM1AsZgwOREt7yxlTtgoUgM=;
	h=To:Subject:From:Message-Id:Date; b=qK8QOiQeXTFjtB/ntm2SZHavT7HgqHuHyhnvDaphV12WOqasBEeT38fMpLucBQ6A/ZJy2eCwF/PXVWgBr4nPmXL2d3mQAWyo2SyPCEwRHSY8AokpHXeyM4UPyA0dykHyoPSuqhC/BAM/9X96DTc62VBI25YPrvX8+4YLo1pi7bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoEH+rs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoEH+rs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33A0C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753870193;
	bh=NpcCwaNAoG84l2BEGX9GCM1AsZgwOREt7yxlTtgoUgM=;
	h=To:Subject:From:Date:From;
	b=QoEH+rs7AwrZl4/SCCYcnPsfN9ZcfFzpxEV5P/YWk0yKEFKcykEXlT2S8jsujk1qT
	 D66CMFX657YnAH/JgFpZhXQi4Z2gSDrhuEN+IB8CtmwxapxwLz8r6gGDSfLcFCP1qI
	 Kri4/v/juGxrlcXHMuHtMAlouIpp3fjOwT6dxylC+A+VKVD0EOAqOoLEdd7V5gwiEx
	 Xk8b+wjTJlZJSe3SL1deToG1qmO2m3uXWgkEv61N8YY2FbStdUsTFpBxtyQH46lHwD
	 2DKYOOKGuDf6veyna5/O7JPs9y++6jgoy+SLoYUHjJbfsAhd5OzacAWwIeIkHgJm3R
	 9U76T4cYpaU8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC5BC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387019364.19220.17496321986058217428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ecc67e98c49323f4f6df2524423ab2fbea62e1a869ac882d7dc4bee89fcb4e9
Date: Wed, 30 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753870193
