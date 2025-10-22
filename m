Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0483E358D2B
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761149394; cv=none; b=h/2qzP3wdorsjQZQ5OwaUcyBW4CmdLfuRo+TD+fx15q6j1043FjJLlq9wEyrosgOMb1X6OIjuMFed/Mk5Zrho/HLNkfYOdkhuh3pMtQKkdfOhjhORN44pc7TcUYfQgEydOme+gN0/aPiyS+wCyw1fp2Kg8ovgNqsj9+1IHeHujc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761149394; c=relaxed/simple;
	bh=a1TuX0bVbnHAL3gsg7hMqyfm0IRU/PJz19U4GuSpACA=;
	h=To:Subject:From:Message-Id:Date; b=ak1/b+0fFRDJSMv4hVz4VndcDfkjtiL2eVvoc3JqR7k6BQd1qbVWnlHA+UIivTuRVMjlHKQ1azCGPpQkawLQJm7U6Q62XZ/8Mc4ZXK1hyj64BPPgdgv+ODdlCVFvDvPviSQGj6Qf9WRB87rSo0t7Ykq7rsfoKdsqDNxAgDki+YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUeXjJOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUeXjJOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A476BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761149393;
	bh=a1TuX0bVbnHAL3gsg7hMqyfm0IRU/PJz19U4GuSpACA=;
	h=To:Subject:From:Date:From;
	b=RUeXjJOhdVZFMmveQG9Tx8VcpTz9aSeYauQ+im6ZOJhK+kOQnKtK8SVKPcEpW6+tM
	 /SRt4GGUz/OITvs4bR5Nf5gf7pPfTT1HVQBVlHtBP8eLhqK+A/I8Cln+JfrmwWJ2O7
	 tvW1mvq0qvM/tPYeFHsWs9yIriycl03C52zjf4Qi/mgtZjenbk5hsegg2mQsp1Q+pc
	 1foge8LMRmlRX5VpJWMKmmyHVYwnQXmj0YBJiy7ds1JEJ6t8ThDvknyDnmnB5f+WWH
	 2VcguU5ufW7a1m9VbLqxm+37SoUw+RY4AmW7ZLK/lxIKR5vgGfXLA1qVJXu4SKDEwP
	 +Xn3ETusM0vnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FB0CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114939359.8329.4042725556398924789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cfb486166ae696637b571a495eefb1593f7fb8fe1f1593e1bb2cfb618da1f6
Date: Wed, 22 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761149393
