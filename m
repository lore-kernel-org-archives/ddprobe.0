Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AD31B3925
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775887654; cv=none; b=PXMEWOTsB7vWL408dIvXP7G3dQioRsGTxs9isJZbD3AJuvngKas9q5ZxNzyO5WjCnNjC7uQv+N1TwFjUx2TTWaXf09c5oTq35x2sO0ulYRjWirXmt/1JFFFH3CPLzaQMcV6tJmlR2vRSw4vk9R1C5s82XS6BJvFmlFyshTP6Xh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775887654; c=relaxed/simple;
	bh=MzEXFqmv/zIK5NZfhr1PzJFDeEKUMHe36MgBU/YWY50=;
	h=To:Subject:From:Message-Id:Date; b=fzf/lB35YP8nKK3qHFrgrB7W79WOD5BPpZmvH0bYDtucGNZI4XXWNgpxN2FbuUt9+QfLwTPZdOPBjmE31uWWjpgZwoz6/AQhBxybGikW4hzS3yUqDTrKUItowvORTvHaR+p5q9nAKPp9c8mhqhy9Nd1WBl67BZQxwCibNW4OnS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLrlym0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLrlym0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0825C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775887653;
	bh=MzEXFqmv/zIK5NZfhr1PzJFDeEKUMHe36MgBU/YWY50=;
	h=To:Subject:From:Date:From;
	b=bLrlym0c+fVlS6D0oWkpSnbTQM0rDdNq3UNpSXw87YrB69cdTtGQmE5I3RnVdz4W3
	 ZAXU89Cy8Tb9gUrerhhiBE9Xt9rp+JLnKHxOd+cGGYO89Kd2EpeukqHY+0o2xTsNNa
	 TQ2gLA2oG1AX6EfxIJJmu7VEfr0bbFxFcKUt3WxmNT1j0LW9d+OP3EtnKvO3NDH4jY
	 lkl4PKVQ2Lts35E5EpxuxK2x8SzUsBtufqzNLkxcE0W9i18s6w0/xkyBNETyFDACfz
	 LllRPu9EXIaxAxq2ID5ttp3/T9uotmuWH8N9qNUe9I78fx+K60aUNgX7AFqSoy5SlK
	 iOTU6EY4fkKow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF240F45A1D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588765368.28505.17627591264834757198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9330e96623ad96692c98f1396f3f17c2e022df2c5e34ec56cde2b0dd9b24b453
Date: Sat, 11 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775887653
