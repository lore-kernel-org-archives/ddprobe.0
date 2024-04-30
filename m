Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E828F6E
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 21:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714510943; cv=none; b=CR3dN+XDFNTDMiK+JK6ZjBi2PvTE3FYJayaxcY5fB3c2WTYTqWUnEUKAsQdSOI+h5c7K3trxZOPq1tPVdeJc9DmsSpQRqyMyXgZXf4QAJkVxMNKvpGlUDF5njYBrc5GxC/8ApvAQSBxy9kWfya+PknCfMjJgqbr/AV88FZzTuFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714510943; c=relaxed/simple;
	bh=RkXX+XgyeplnYjxrANvIkAZ3+01GKIx2/BbIWhaZrgw=;
	h=To:Subject:From:Message-Id:Date; b=rYEA18LMknwSiyJdw33hLAlhw53Yvme/hoQivtOZCJzoE4AWxKihG0RCfK1Oh47EGNxa1jPA34a7zTyry/2nF+WOknJxbZv9Mgta+zokjFhCgIJsDVAKLg3EQ4U0Yd9ZHhU96gpAfdp99sLKXg7mzS/Shh/I7nrtpN1RsAGW35U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDRciRd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDRciRd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AD1C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714510942;
	bh=RkXX+XgyeplnYjxrANvIkAZ3+01GKIx2/BbIWhaZrgw=;
	h=To:Subject:From:Date:From;
	b=TDRciRd7/YsGp14mWRrmEpHxppooIkO3q4MVM0O+ftwCzMaQWF6JN+G7eORl48AbH
	 2juku8snsR2f509l/kzvm2EiyQM7qZiVlYoTkG8UykQnVOMtnyd//hkrjrEcItpbW9
	 Xv+fki7y5puhzSHtiHvx+j3TlwswcydEdWgxtKV9MVPwgf+q3w5fzqoD95jU6X1XOw
	 svgT28UsCXXI30zcphhBnVofqtPfJ8wSYhzwV6/4CeflOkFHkKB/11U8YoYJEUwBv+
	 30jsL4Xecv5H1zulZLHFSJOWyUvx/Z6CsdfCEfU3/dA5ndJF4XihbWsSh8Xu1JTsZP
	 hvrHJhhFjGXtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3580C10F16
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171451094278.29417.2874191079001917990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47782c3819ff3f3bc9273fa8394a8b91f6c545a7326d0110c33f19053efd7285
Date: Tue, 30 Apr 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714510942
