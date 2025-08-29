Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4512F532E
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756507794; cv=none; b=RLuAieSjZVUKpblhofpKYirl5NMuyPKyfED7iUwpJemJ30obbkqBTIN5Yq72Oo7gt0WUXb1ThNuxpTcDiEWcRLXkl5AtGJt3ZodQWHljeM1q1tk1acv3zTxu8PW4EayEnjN8rYOplxcNNdu3zEKoIG7cGQ0Z0+QeDPzIm2+KgY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756507794; c=relaxed/simple;
	bh=owhZu7EboAlK7dkeuC2kLry9PQiuM0iBdSTjgWrc07w=;
	h=To:Subject:From:Message-Id:Date; b=g/TCLBSU2Y0MbZdoVtlkdWsqDow5q+LMNV8FvXragQNujAqeOxaNI9M+gkRc715UAGAk3tV7ne1LonW8ZfEq5+wNI0ojFhhaE3jPVqn7Rfd4KUDt9ZgMCZSWWgiD5rNsP79jL0gLZ4mcuhaIrvG8vLNCJyJ7GPkIK0T7jPh7C74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGAVVq5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGAVVq5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD63BC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756507793;
	bh=owhZu7EboAlK7dkeuC2kLry9PQiuM0iBdSTjgWrc07w=;
	h=To:Subject:From:Date:From;
	b=AGAVVq5ZuaQfPTAzdAfgQbtnJGiU1PHDkpqbyVWp7ViF4ITxwkQpo/RsnwoXgp3BQ
	 UMRR8smraoq6yXqgOVtVFoW/4SX5/srO19OcJQ1iERMfF5Y1xRXTkx6nPqdoTwscnx
	 QSZvBt+9C7jysMjLGtjvs0ZedN9j3UvKVQEeOq9jS/eXULHvAL5YKNUyO89PQZ3okC
	 hdp4cqLkPUXX2+/qPaFAXiPrMcnYYON/yj7ayz1VajZCj5eI5LQt/LlN0xu8qDAldZ
	 fIgSCgZnFrmzlG2uVKl6jUSrs1HLwjOibn95NrjmghNxaUQxZFdAOgwCxiA/cJjINh
	 ZYMc6yWPHdGZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B256CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650779359.19486.17513218320723250361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9b3d4d28226db1cb8325da7fdd6ea68cfe746d72f30bcd52551e3f247d7c8c
Date: Fri, 29 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756507793
