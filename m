Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A884190679
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730959554; cv=none; b=PLlOHiTwzkP+gcib05u1SWI2Ax6iE2hXVTJ7gxjWf5ZgmZOT3BCCvtSWPGpsxVJzbT00duM/kAUebRrm1aZ4sLXlvuSlVP6MxESwnLM+FTfePmYaKwoVb6SkIF52QyGr3n01AaNGYvWoVc+Vq/JDQfvIKuVe1Bwiuqkb0ux1anM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730959554; c=relaxed/simple;
	bh=/KxLFwvDkswjgVTam1oJZCU0olmC8zlyc4HHE/7CBYU=;
	h=To:Subject:From:Message-Id:Date; b=Js/BhlxZPSn1qwQF9PgdjG4ekS/cXX07RZJGeZTwM01L2iyIqsGq+50fSLxoJ3phBCcdMIQ9sQL/8DYy9jOP5+mFYuNY7lefzSw/j8a26wykxqeU8qeZ4E/1uU1DY/ePhtX6rQnsOSl2oCi8YWhj8KkAlHUVPjUPbskRY5tx/oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxefHtwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxefHtwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD96C4CECD
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730959553;
	bh=/KxLFwvDkswjgVTam1oJZCU0olmC8zlyc4HHE/7CBYU=;
	h=To:Subject:From:Date:From;
	b=KxefHtwMekYz/y4hL+T8gomuB+0k0b1QHbBiQdXCzWzMPextCoPF/qZHoI0G86LgK
	 r+u+1GHepOBYFev1OiOYkyO7rAKIAv/oCAgtWjF6V3SXsfAptyZnTA6bHBqolSxG1z
	 XiMvvnS+ukI447khs7qvBLPrIlXDl1pDge+7VYxbhWqSZa5gbfGPOr7emZfIswURzn
	 go0XQdPIrlpvlZQHvRDVqNcizh+JBUv8fzCZrxg0yQdJv1FvEKsEkXha40wWatjZim
	 XKuRDdSiwdVJx8USqbP44AmU3ftNM/MWh/rhPEZAyfgjDS2frOfE2Ok7yHGEQN21TY
	 HKXtU0AUOIlUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F02D5AE60
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173095955360.28189.14301967947794691078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc720bd09518e3df142049961ee181148b8535fa8da27b61f4632f18fdbba7af
Date: Thu, 07 Nov 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730959553
