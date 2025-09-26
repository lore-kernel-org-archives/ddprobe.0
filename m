Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1152B15B0FE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758908395; cv=none; b=LQPpeQL9hCPHm9y9xkFDRkqNatcd0RTAjHmd0F+AdK1pB9nRJummA3iNiJRLzp3nbyThTe8gCKjh8KaWY3I5qEOeve5SqHCL/rDEV2y8VC6nDNm/CyEp3X5YFsB9loSC85egi3L24Es9lwgGHmY5rXckezXvz+XYILs+jyEmN/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758908395; c=relaxed/simple;
	bh=2xlacg5kDRHmYst0khkJJ2KJzGq6i5q1sZhyk48ggXg=;
	h=To:Subject:From:Message-Id:Date; b=bV+KlJyjZVnoBLuczVXl6zlw+7iE/PPlCg7A2nXDdIOirZSv6K0LJB+Lu+4FVn9+hk4vCKqTPxj3urxZR7uTwW9J6OoC++NvW9Y7CkBrlwVi/w8mQ6Fut+0YgbdibThxYiRRqcMmCDJDcvTTEK9RzZ7fctQocgm5xsc4K7yIiGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9ApkPuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9ApkPuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA1BC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758908394;
	bh=2xlacg5kDRHmYst0khkJJ2KJzGq6i5q1sZhyk48ggXg=;
	h=To:Subject:From:Date:From;
	b=u9ApkPuVnFoDQlgObBF3Ej0FluPewfG7hSAz6l8oKKTwCmA97hfvoXkQN44fgbVMY
	 U16m8uds/Yiis/4OnA1Q/TnjlkguelhbHjYvd1scEomAw8AULnAUzZQjcl13enqwK5
	 i3OXXVOZY4GBBVLZplVxwyPR7ZlNJyQqZOedPaN0g9/Fn32JwRNAtZR/8SQQBqfMxA
	 SBnTvV6BmEIn0xxIaf8LEeeFaorC6KDubO0YK5uDZfPnKVcHAkN9UFdCM2kZZkQe1X
	 GY6zjqIvLkyVqcYlpgYWUBesO82K76Q+TfSkPYzIhSRSNwKQ4lODQv9Tl3LFWPi28y
	 st758VcrjWS8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97515CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890839358.29420.12536047785154469976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3faac3a0cb934f2b007073cafcd157d23bf8b837204ad0da80e187e13a3aa08a
Date: Fri, 26 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758908393
