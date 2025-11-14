Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2380D18EFD1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763163594; cv=none; b=k53iMIxZwPBruWmZGqHUm2lc1EOc7oNGgneFt3fQXuc+iWszchz9Ef6rBP1qnucLC2NtHlE1NGU63yJQgIoSNLbvQszrmIKIfEijnKt6Z+etLpSjdFJVxfYsp4yYH8pfYjTZ/iG91xy+oVnYKcGg/eQ1FCDzXdwUufKEEyqZK+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763163594; c=relaxed/simple;
	bh=JR+fEq08BAh+kcuzU0xU0m51ecasKorsey1jqeIXflo=;
	h=To:Subject:From:Message-Id:Date; b=sQy7KTU2595SyyDcvAwrirfF5rF4Z9m5xwVTgYb42XVEhLtU6s/W33/HZhoQIe0YcvRSBcV2x5PZD2Ukk41tTAhdKbYi/c0FO1JVfC+1UPuyZaZE669+/7mMSrXbyRUvEr26X5QX4vAtLzn1+oX4K2FYbqRpX9+pdhXwS252Yxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCkVV3Og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCkVV3Og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18FAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763163593;
	bh=JR+fEq08BAh+kcuzU0xU0m51ecasKorsey1jqeIXflo=;
	h=To:Subject:From:Date:From;
	b=QCkVV3OgiWhyc/09g4kHsU/iaGlwP9rvo8qtD4GmHHnvs2alJqqybVutVxg1H0str
	 62kaWKTGUuSPnUQ4iwodxg9SnXyt6KvSJDloCOe5Xo4JShdBkE/CauCx3nMamgHonv
	 IoycDS5hPXHLrUh/Ujhjl0G0C9cu2MTOuk/k0aQVVnCbNfR5qTyiK+1bpASAY4QqRr
	 755TastdBFdGD+BwTxN/BqFauRCvh3l66C9sUr2tWhURZmqJSRktPH7zDGdguxr97Y
	 3i+wCrGOtkoEUfLyNTFhctJwKOWWHvQj1XP575BXeRkJojJFqAYo/yn/Nm0a7f39Qa
	 s4RYt7ckkcRbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CF7CEACF9
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316359359.5246.17190150966033222893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de257655826bb35b6f08e3b9ffb39e1c2d7a6abef8b293eb680bbba862589032
Date: Fri, 14 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763163593
