Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC5F288C2C
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760459994; cv=none; b=DX4QbQusmiJ6G+JTVNROx7jxkk1sy+0sTT/Bys9ESDhOqgjzcjc0azsL4blyyuU4vTP2ERVbLfm2BFri8iqt6wtliYVyd3WdFx+FfleJYuzRsFroOeq7K3pYmyMDShfDKIM4eO7fhQAvdWXiRvi9z33fyTFilTj1smlWW6NutBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760459994; c=relaxed/simple;
	bh=NE9hal4FDGYU7NT7zr5AhQEsW1BV+0IqmkLHt8f6p0M=;
	h=To:Subject:From:Message-Id:Date; b=ZvyfHGlwm8JQG/L0e93FCa9Mlx6WAWLhbCl8OtyilG5CEFQIjkTgePFPEbe0I6x9xXDIyx42ydKm5EuwgG6shLSLSLw4OOahiK/psvR1vdh/U0kXla9hOc73lmkL5nEZHr+lHMMmIvHTKBmsIZ+kAR9aYo4yKv9/vuJcszzMnoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swzN9Kel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swzN9Kel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3290C113D0
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760459993;
	bh=NE9hal4FDGYU7NT7zr5AhQEsW1BV+0IqmkLHt8f6p0M=;
	h=To:Subject:From:Date:From;
	b=swzN9KelweivfmVscFdSVhvT1YpnqRw/JMr/D6QFmU2x/EjD0otvuAiDTEDm4b3C4
	 QHZuBMzd5uPxoUDM3Z7ujYA5uO9W2fuCo4qfJkWEUufeXNkBJUXetTZGod/kLbVe/G
	 yMaXqV2uH6nK/JAWcvX6vrrEadTCIdeQcVaBltauJlLOZOTp2HH9u44u1eXiEIaUEf
	 4Jrp08FYVWjiNTFkNDUzOyJOyuGI1UfgNZ4xwvpKphCZ7ksbYHY9C+pzaq5wghqjwb
	 BvF/kKrojT+bwq6jOfGWvhxYFsGso9gyLfuhllhZ6N2Xlua8qurDt9QmfXEx3xoBst
	 n0xkMGOhI+tHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAAFCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045999358.6731.7583580377012377295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02dbc985f2531b62c5656456ce2a8b5f2821b7a92caadbbb89840bc0722a2da
Date: Tue, 14 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760459993
