Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E4517C203
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780233874; cv=none; b=PL19Efw4x9cwJAWN6mHNGigFDwZSXA8Cnbn0Zx+XgTE1DVwCP1UznGKhZWHigtVfczB4CORaq0rQbbk4Gckv1BbtemiBgZFApcgemxpm8vb2iQNTSF5ZG7Sd1ZflFdDB0OvpG3j6gvkl5RyR6FoohjtrnTJFg8taC0wZ9TneYoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780233874; c=relaxed/simple;
	bh=xBskTil1ksjGqHzrwL9uX1Dk1UOOeOBrZhaCsV/iplY=;
	h=To:Subject:From:Message-Id:Date; b=PQGhXy50HFu7Tdel74jY5awpaixDYbyEy6djo2hjSnyeUXKMtSEXXLT/jMhIKP3ekUM09t3OkpZ2JV3K8+txbdIXZ/wPblYiu7Axe/wOPmu+Jd5B9Q81625UuUDGJxHWvFKXNpyAR4ajl/ISef4CmPXShPJBwaDPi+GgPpZPPkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLY+QcjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLY+QcjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF299C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780233873;
	bh=xBskTil1ksjGqHzrwL9uX1Dk1UOOeOBrZhaCsV/iplY=;
	h=To:Subject:From:Date:From;
	b=dLY+QcjES+AT2fQWrgRYpHLdZo+xZfOO2+VwjxuNncbu3mLs/9AEZVl6hYob28+KR
	 kRtFRSK/+rm59spVXq9Vyr44YGM5FgGkRSgrlQrpKDkrs28tzaPDaMbBPs3wSE0G2Q
	 8m9M8riBHYIQgOiOY08HrZ02FYisIIcL5WvYFmmnimG6dF2PP6fxpJDURkpC7KFgcL
	 pTJ8wQicf0QWG3JjMuJCJVdqDTqc57DgcE+JMzEZmvlkTDiUgRdBu8PqU2mf/XtaMR
	 KT2+5hFFSRjZLYT4E68r+QANc5A33OHrNoAbEm5Gx2h+12aWCwmICeZVx6TEHxb5pl
	 hsME5TNwGWeVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD847CD6E5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023387368.26480.18072982968123575727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6de618ec82731e02eaa578fc73b4d7ccee1fe921f78b3a77d3a9b5e45c6c34
Date: Sun, 31 May 2026 13:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780233873
