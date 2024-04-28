Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FADB3A1DA
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 09:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714297943; cv=none; b=MRN+uEzA/2ECeZCP40WsCYSdAHPYkM9ZdYcNEpSE4+3+RQViWhKk0RjGhI7AG4ICsFbwshnP348jpcytArC1HWGMuIx4wRc1ztBQ+enkCNDzigiPEz4B8abn55xchn+zasMsjhl7pLiWJXIGOf+5vBHWTgMbIumhNnU+SF1gzPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714297943; c=relaxed/simple;
	bh=Cx1w2EjJJN6Vb1+0hUauiXuebhEwSkMatoGS5yjqTzQ=;
	h=To:Subject:From:Message-Id:Date; b=C5CyoE6B0gYsO0EMB72c+DrqeRNi9G3l1qWa5xE6R6vIUAqDRYfXLxykLyqv+ybtc7e4Fs/pqgzo8PqY/14uSbVnGM29mZ2aq6BkRjJTAcFd0ZC0e2EsmMjGwoNlWsZKX4oKov2IAcdFgd8Ts8lE+CQYyyp08RUIiSg3d0SVcCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjcA9axT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjcA9axT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63E5C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714297942;
	bh=Cx1w2EjJJN6Vb1+0hUauiXuebhEwSkMatoGS5yjqTzQ=;
	h=To:Subject:From:Date:From;
	b=sjcA9axTs0MgeED3CAjzDoYlhBtG3HS2Exa5xRP6k7QSde5fDVMpjMep7+2XhU3nK
	 0RqR+RkTSSiTMvbgG2iUlARsGLpPjLCRFPRXG+qPycrUmp6DUiTS7DUY8h+L3skDnu
	 9pZ1oy5B3XUctAqUTMoDFQEApvs2jOJ/UQMPI+ukysU7kv2YIsVD0frf9dH/NNjyOG
	 ti9+WYHC36XclttiSKobuNdbv5C5SeuJbCfOcQPh7TJPoBJWX+ocYAa4Vj1i8kBZfD
	 wuC7Fze5Qx9TzMd+UKXmVkn/wQyDpUN6AM0yMcWYccklYIjT3XNpkEfqLmJsO58eBO
	 7ttOpunVuzR1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1611C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171429794276.27594.11816625374221897986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f748b26562ea195c6824e55e2c57a8e47307b730838dcf52e53b5786363dba
Date: Sun, 28 Apr 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714297942
