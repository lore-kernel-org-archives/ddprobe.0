Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2791113D8A3
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723138554; cv=none; b=S6YK/t0bh6oQu+ezznxA3TzUN9bAb9sSeJpLXQQWvYhK0V2T9PTHn1zChdt0E0dPWGu6aqbqUZNWpUsZIkcPrya8zqNfpHyW0cqw/2AdNs5iR9xugkRf6S+zJu9w/Pf6SS2e2qfw+svOO2/iT6nN81B5+rfIHxiVSJo03AV3ej8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723138554; c=relaxed/simple;
	bh=8hiKrH6DKnWBp738AOCGuiZn5K35NV6PkaShIJVooWo=;
	h=To:Subject:From:Message-Id:Date; b=QVH1CCrpsZ8oJDuojJn9Y+oxa3reQcq6g3qZRzfkaYDrBNSCjlk310xr5TzI258rOm/W6Q5esbxDciRwCB1cghp1qPk8TO2+C+pYwVwSg2zAGbyLT600j/7klUhaj3sFmGZr+x+5YCI7dFL7F8/pc4J2j7TutnkV7cdYXMZmPPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6RMdDfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6RMdDfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16D0C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723138553;
	bh=8hiKrH6DKnWBp738AOCGuiZn5K35NV6PkaShIJVooWo=;
	h=To:Subject:From:Date:From;
	b=q6RMdDfC2UJVKqF1yzAqPShJhLHXQKqQk0ijHSQoh93oLqQHhB8Grxcg4srbgSEn/
	 qKLKcuVnISzEm3AN68BcAnH9Bzb7WR+i44nhisKDsD+9H+ySwgWp5Gpmh6T1E3oDgS
	 man4mCqRDB0jXN01ZmyB/1fszr/aOXvyY4Ofchmlj9FowdcfrJc4qvgS7YyHWukkSk
	 6+2ieQi7IPZh5r5R1c9PafHDYB4wk3SuZ4XPp3S6t0Qgl5H0OrvZMu5SdQ9R5S+QJJ
	 Lgd7MjUsKycx2PkIvCjIM0NGiu5r2h9BVaqcrqqScpkOzokcmeAgmWaVi8XFpSzhju
	 MGNaGpt6zcsGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1DDC52D7B
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172313855359.3901.15767259843251511504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae34efa3c6e999ada36f9bdfaa0edf626245573e427b4bfa844cdb98a90bde55
Date: Thu, 08 Aug 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723138553
