Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718DA7262E
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792170034; cv=none; b=Q/OQ7v4RhkiF2tQ4tbJ9nkeBcQYbsCp3VQZPE8WuyNAVVlREt6ANGkD2BfJMla0VTXpPNFGXfVPcE8bloit12X30Utypq0JroqeeCwr8cGAOTZeZiIqZBM+RWD2Nct5uL3iXtuu/13tHnttUccIl/gyv0QzLQAmiRe625vn6tBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792170034; c=relaxed/simple;
	bh=HFTFKNfKBNgmdM6rzYDim562S1vPuLKwxKd2tOVjoNo=;
	h=To:Subject:From:Message-Id:Date; b=f5u99BEkwfBFI4++tQGc2n5WwrXy8u2AKygouMwnthKIUeJy0G403frGgYdD3HGwPaQ7KJoMXayxGzZ5bLj1rrD1VvCM69py2SX97kcPTqWgL5zOIttZlRiQDPoRPTk13xfKnQzzFmHQWC3qZ+xQoTwKqUbnMPda4GAvM5XcniA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlshDQF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlshDQF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9690C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792170033;
	bh=HFTFKNfKBNgmdM6rzYDim562S1vPuLKwxKd2tOVjoNo=;
	h=To:Subject:From:Date:From;
	b=ZlshDQF9a5m/QGoPD/Fy7IDn8sMhM8hVZqIVNX74LHpsw1lfQnRI4o4m5sbFt7tIA
	 PXm8lrQ6OK2gWGTbFqxuxd36EBArM6k6qFC9EOZxYT9DNuEzE+BpPVPH6kuRwSDuFn
	 9u0t6DczN2AR75Soz0wWE58eb9YiRdHtt6U2DnQsDrqMj70vXaSFvymIeNU/nR1bcg
	 IJWypiID0p5GOSptoFwPTkXPlGq0Mpoxs+98VVfVlh8XYj7DfzR+6sHMQx/EGqN0dk
	 rfSIFkaoC32pgJTJ6i+8+m2ATw2jvhqiCqJ2g+I18YdJ813KYNUStuYis+dTKcaiw0
	 ebbDn8KyhA6aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA331CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217003378.31143.7935229340969282992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6daadb8fb1ed32d5b4fee4685d8f110dec256b3c5e6a0967fd4f763c5fd8fa0
Date: Fri, 16 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792170033
