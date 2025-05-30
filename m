Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8974430
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748578794; cv=none; b=h8lmp1Go7IMpfatmbtbPIuDpU3tquW1D1T6GFfhBrrSUAPrIG0DNOQ0iA+B78lR5lEGsPhapl3A7rMBv+XgdPwrAtrRpk5tsYMxUp76K2+zdKprFQ5Q/10k4Hz9mBCNgMyTlfdEUk/r7xcCOGzK7zVeX+bVhUJavrZutSG63vig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748578794; c=relaxed/simple;
	bh=/T2QXzGY06UpZbsWtP0Iz5b2ZEvxvpxne1oeaLnuPqk=;
	h=To:Subject:From:Message-Id:Date; b=PVmfiD0NRk/RJp9SUHupRbVkFYmUKmE2gvBmxR5ocF9Qcz8lzZsPTo+iiyvTJffpXQvLMrPT/3eAQL7KopkqG1ooIGoaVdruC32DJnFifjcnjA2Se5V/mrLna78hPUtkCgAsH2O/izUBgU0e3PGNE0EM8KukNcqNEqctAII9n3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhpRY26r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhpRY26r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FF1C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748578793;
	bh=/T2QXzGY06UpZbsWtP0Iz5b2ZEvxvpxne1oeaLnuPqk=;
	h=To:Subject:From:Date:From;
	b=hhpRY26rcEux2bjnUESfvqusyz5Pwbsvxr5DGgt9Ohkvun1doUtIBALXgNdRihMQc
	 uyQqjq2I/IWsQ4NRD8Qi6bwh4IzFckjnt7dx4x3wF/0uDeYQXz5wHYmdWsOWKuCjuy
	 MFbhZ8CCetkdDKgFd7dLIYlP1i7yqfJdj6CJxcuNpkAH7NJ3TxHXv7yOQVXw9lpf9i
	 eH+FISUwSLY+GbwRF+5AjS62/iACL1HALLMxWY5Ivl1KE2izwTPjQVtOrPYsafD6kq
	 wUN67SIz7CGl/MBGSHa9vZoELXtcPx2yCve8jFIHtMuxj7NBV5AAXA7hTSholt1f/V
	 cVgUCBUaax+Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906F4C3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857879358.2325.16059183524817911008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a33307ce8377306c4883d34ba1bbfada22586e05cc0c975ffd6909fde003528
Date: Fri, 30 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748578793
