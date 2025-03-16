Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F9D19047A
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742121594; cv=none; b=mxbK9JUHPFpsuC883RA5gSFQIKdtmKFs6sQ1FhRK5RCljW9szzQhW/fspibUHspf+KIktCOvAIc0n/Zh8ahlRUSk/z2USS4lsGGy4WDYfq0qRFOyA9f6nmgXdWBs9d6R/awjHbaNxWf6OFlDy4gkm8igz+oGXzBezoIaO6RNH9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742121594; c=relaxed/simple;
	bh=QbXoSfiaCR2yYCpeVHy0TSFleDbtOEKnnyjVBeX6dnM=;
	h=To:Subject:From:Message-Id:Date; b=PcuzeD75J+QDUBS03miYA7Fq8um5ExUbrl4rq+Gl734W+7J6z6MXWRiIMsQVnjKq4NA48SNhLGKklLrQ3csT2FIwsuDKVsaYxRR7rNmOPX2Y/UtbtRvMu7Ec4/5sQlN6lGlnQWPEZ1V0JqJ3Nt6uIWidqYG2McLMX9ccZRL5rkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+y+sJY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+y+sJY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C4CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742121593;
	bh=QbXoSfiaCR2yYCpeVHy0TSFleDbtOEKnnyjVBeX6dnM=;
	h=To:Subject:From:Date:From;
	b=U+y+sJY8g9KhaS0MjSZLOQkwzun4jEPU95/7K9BnyOt+YAZtaxLEy2oPh/kVFHbcV
	 e9B0VnVJCFhXpLXI4hzdkrf0Kk0NEPmy6bvpdNopMqVtzM1gHcRjumbp9zN92dlal8
	 TaL02EdHXt4cDOIw3kNi0R9QtNR4owWCi5P0gHINf9wOBqN7LDMVBeZtmcTwK53pX6
	 9Pz1ypBO8l4zmqPZizfleXvGuL8lit3DQB98/gjPQtDSZ2kZ4Uag/OK9cgQqgAp6in
	 VIj+lzvhincT12+Y3nGhyw0LCURBC70qgK+QjfT5KG+HrxX/nmm2+U6ztja/70ghv0
	 u5BUKy4vhqDlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93355C35FF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174212159358.7535.17378894370455297381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6782a72cf0af1003a22141ba777aa83a0e3aa3e4bd7b4f2fd33351ee05729092
Date: Sun, 16 Mar 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742121593
