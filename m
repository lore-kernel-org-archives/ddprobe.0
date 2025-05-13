Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402F51E9B18
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747120794; cv=none; b=oPRNSBpk1jec5FLtAF0ocnaDG6KL+zkT5ZeRIIdDhvCKIWrk88HOth7cEB5RPPxKTIs0vjPyt6jl5WspgzT3J9mvXHKFeP72QjJ6HfvXQxyyT7ZumD8UqWLp3m+nY1sa8KNrtly6IffUrjdnV7/Xg0n+UhKH4I5hhq2zjUg+XnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747120794; c=relaxed/simple;
	bh=21k4UXxKiKpz0cKbg8egG1yHqRGoGewisRatGMiyKro=;
	h=To:Subject:From:Message-Id:Date; b=cIlP0A2wMQFp1I4UlNjbxe5FOpxxZNTkPhPsuyf2jVDuSm+gvW7woG/8pphde1bafU5zGlAiLdZJ25UE8Sqxqv1ujUT57Et/ryUJc3ufwUE4y7nGT9+sPb8H8kshXb/iWJAnkxRz9MIeJoNdCKsfdWPMD1vf9/s2WfyEWHeL0kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trz+UtfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trz+UtfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F89EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747120793;
	bh=21k4UXxKiKpz0cKbg8egG1yHqRGoGewisRatGMiyKro=;
	h=To:Subject:From:Date:From;
	b=trz+UtfUePzX6SSm3J4pGTLGYQswtVjaCeFWQyXEYvj3D8tZyf76Gc7hj8SEpGRUI
	 yFi25eTZo7dm7qeVjzL5qjQ4yPOucxT2jSizRcHVOITyvz4vT5o0XnVjVXLfahTdr2
	 s6/OMYUQNqcRpyJa93MEH9qUhwG9VWk/nhaIGahrL172Hv/MWAnizJ2LfMPmzE0/vn
	 vu69ebTDspG1VdJxIvIGbNhIZO8nps1X4hhJjfwN4NOkYArlkGYOBO4i/tj+uEtQ2Q
	 VqC4D+PBiOzwhNtT4wS1jiAJIFYp4eQJn9qDVOvDFYrQjnGHJKSZJXT72OQxs/jAco
	 jjq8ICv8T92iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F417C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712079357.27148.2878553948814152243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e1b06233205d357057ea8383501689cfdc00c4230a359bb4a736e70b7475c39
Date: Tue, 13 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747120793
