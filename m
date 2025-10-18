Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4103C146D45
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760753994; cv=none; b=KJKOQNweP2hVFh7IFhClfc/0NvVRgzIplCp0DH8AbV9gRFKw2Y85fnSZNXu+9FUkDznItoVmoF//i9kYLmQ6ZMH503Z1qB3vC7qvhIdZUvi6kHo+LwadUL9gqT0MkkAzJmHhOyMCaXoBKz9ktwr5BHLCijtQV7xSwuPLB+0PUhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760753994; c=relaxed/simple;
	bh=zFNGR3tSTFNMFdYNojV8qOQ2Tus+fTI7jFCcWWCJN58=;
	h=To:Subject:From:Message-Id:Date; b=RbDrd4fOwxsZg6ntiqoa89k5cVj9OKFnTuNwbYTkGA5EoKjIuzUpIkr4jcIv7JG3W4yg4BH7KF3ikCHqVRTl1T5VBPqb7kmLMzBcdmO00cQruMyLU4RPYvFGc40AxJ7TdvkZv7dOwgiXMGJADvAI3KlURMx/Yeb7dS+imFHXRJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqTsw66M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqTsw66M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760753993;
	bh=zFNGR3tSTFNMFdYNojV8qOQ2Tus+fTI7jFCcWWCJN58=;
	h=To:Subject:From:Date:From;
	b=SqTsw66MvYvamuoaju4LNmlCjvMEN0gwxymRpMpnJVjHbJ4U9iMbhCceQKO8U7B6l
	 PAVkFd6UvjmzolusvNzzCNjzvoWqdWH12POW2esJpU95lzsWpUkOj7YF9p8cHZj0Zi
	 8Cjwv+AAmmSxNEUfhA/dGInTuljqGzIwl2TfDOqXWRbIcCYjL5ox93bLCoCUBUNU3N
	 0Wl9wdINkG5EnhWec/QJfV80VHMO/BmsCYSpe28GBpcBbwmuyyvW1g7ACAuTIvy3Dk
	 SIxYm4K94TX+MyuVchlktsc0aZ54uN32hVsmeTPWUunubDGq5B8RBybgg97od1xAcl
	 vIe4zsNK0s8ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9875CCCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075399359.2978.11385557151119679925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f17aabdf7e591e3553203e4f8220d08d20ebe6c9542b510324e86b6559e83f
Date: Sat, 18 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760753993
