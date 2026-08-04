Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577D42E7623
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785802234; cv=none; b=bYKia3QuTsmXEfArmmaI+JtZhPUPv++y7Uj4HywS1lpOgpoFCq2kwsUuboW6IahFPLLpNhjEwBQpp7rREpmBoGamhEWoqN4GlxWt34VH/h5uWcrqQoRWPM2j8tuYC11K0yCYz2U4t8M7GeIhHDbBCtpohV5IBcmRV8Z1rJMKAT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785802234; c=relaxed/simple;
	bh=8E9lQ7Sgly+/27ccKyDR9waxkOJSGqT+FbOXkVmG6ao=;
	h=To:Subject:From:Message-Id:Date; b=KKcNePr2XAUa+5JUpX9D8qYjz7wliIFjTs5JeZn8TQ2IN3JTzAulZTEstRnc7e9pws1FZtk5mKlQk0BibfMR1Ng8+38kM2mILSFk+mPy7pi1xNzEYREwPG1h8PHPj9q109q2KMTBJbYQcrMn2Nl5JoRsVqk5yznyV35Qka/Mb5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6/j5EN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6/j5EN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA274C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785802233;
	bh=8E9lQ7Sgly+/27ccKyDR9waxkOJSGqT+FbOXkVmG6ao=;
	h=To:Subject:From:Date:From;
	b=H6/j5EN2pyBEb5EOlFz40MlGuXLJjuq7LPfPJXt4D8fAwnUO55mOu9YFmC6e8gkdE
	 D/zJZhDDXg4CBWW4exk8Qn1bnGIu80u1L4rttQUxvpj/xw6Hdd05RbOMYOB73W8v1O
	 LhDaA3YF/b3M6OKXXscaZ4gyU4Jqq4yHIHLO5MvcM5E8D4Xj19YPWjR+Jus4RHZc3I
	 84buYDX49gcSbIYJvsug1/ST3DasMPRR5sVTu72lmN32qdt39IKcEl1ObmI7B9rvIW
	 RHlArIMBzTNqcWbkuCmbpS7PeZr2bLZlcR7Rlz3zIvQAqEnVjsvHQX3P+ywuZUIXew
	 stnZ8cf6whh3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4771C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580223372.25411.11130288440073185688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11ebafd1bcdd5f50a40b104cdccf58799a00f62911181faff6649ed7c6fcb70
Date: Tue, 04 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785802233
