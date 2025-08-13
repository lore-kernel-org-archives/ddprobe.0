Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C67A74420
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755085194; cv=none; b=BqE9EYVPINA7wr1TAwTEHp9WoYT2RkIMcryslUHAguwuuOSwR8blx8C1tlitGlf95Kr2crdU0Bxx+LGhsq6t3ktV8PtmEtxAgJBR4+N5khfJE2XXXR1q2nsir9bp0g2YHyZrV/PiBOtSa8YcO/1+QhWZ3SP21n+Y1SdGMkmPQlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755085194; c=relaxed/simple;
	bh=b7YXRryxklsKZvYAFsxDRMgnLKl9q5h2ydtRWEDfklg=;
	h=To:Subject:From:Message-Id:Date; b=PvvVFy9LcWqO1IOGdFr32JAv1CBoMjdRPe1m/f1X7Sv/6q6DKGbQf9pXTeVIGxY3XZM1OIHPC7ovMUaX9YOmsSWPQhc4z1X3vE0wDEeHH7t1K1zw2QBuTJhmLCUhb6FRoEBN8uaRHvH6sgkRaBXzUjzpL6s20NLbMH25VfR6g9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVMl7Hcu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVMl7Hcu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A396CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755085193;
	bh=b7YXRryxklsKZvYAFsxDRMgnLKl9q5h2ydtRWEDfklg=;
	h=To:Subject:From:Date:From;
	b=UVMl7Hcuk5IHq/N7rRJY5HiZuBYXOg63STrAiWkSKCiuB/W0p3QJ1e9uwcTtoU5pz
	 x95fGYB4C6gf6S8jwxc+WDReNKH/++rWyz2QYqYvRDvDjz24wYsWpnEI6cVo9fx5Nw
	 NsIw00beahbzlUtBuJsfQPgE4Hb4AClxNMkEvVaMG45evGELJDAZmIiAM4JLggL42r
	 WalXwiuKgBTqERXDVOUvzO5lFicB1nn7kHOFMChI+4IUukp4qTXfUY+ICCPL+gz2WT
	 Vl3eM12RGAOoFuR3z/4c4l8dJDWRNRJoG/9skRjjKxhI/X+7kWUozB/UAxu5ifWgTM
	 XKpLf5U9A1LJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E97CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508519358.13781.15599251741478336367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf38ba276170e980ddee958e3c2338911883b1ef4e689077673503373c5e9490
Date: Wed, 13 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755085193
