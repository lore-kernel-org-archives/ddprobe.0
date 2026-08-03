Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5710830E85B
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785723034; cv=none; b=E/GpmrgJEVp4wvTZ+XS4xD+IoWgfMc6wUyfBRVN/X2M2LtByV4Pg+8QfNJ2nuXpsAWLhfbrseAlktRB7TnbfK4Oht887QB2PI0XaPYMw2p+thGWFGyb4ldAf+0ctfgq5NBvQdeC1rwnBfga4wi9u7jFepR8d0SkmXw5x9ZVWnMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785723034; c=relaxed/simple;
	bh=tveg18WAFq7HrHk+C++AY/4SRroRJbJaILnonWZZLjI=;
	h=To:Subject:From:Message-Id:Date; b=rSPBGfz49uMshc/pvWYkQxkZ/kSg/qb97UipwbVGUp703LC2zw8r0NWRhDoowUREQrh4UvZH+NtFKOra2+gj07kduMjFRq9/n+aZTW513uoqTb8Z2ZjeT3mVkfF2CmMgn0eHmUx9oGNbp+x3G+xjn0BuMWuo/FLFB2qkCi8lWSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbtn60MQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbtn60MQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CADC19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785723033;
	bh=tveg18WAFq7HrHk+C++AY/4SRroRJbJaILnonWZZLjI=;
	h=To:Subject:From:Date:From;
	b=qbtn60MQ7JU9KaLvbcLwCdMrXqZltvRw+yWLoFI6V+JUWTysoL0JrRJVif6I+/F3u
	 FsXY9qdY3Fm95Y9kh71VRfoJMLrCHvESZRPgJPWZ/OsBcjhzZ2FkdxOXi9EVKIRn0Q
	 o5Zwq6HF0XxG8rbw3frX+2d1X67/HBMw0X7CTb145y85R011VVwlPKzQYekGDmpbCD
	 vzWkH1i0N54Hs3G0581yt3qK8jPxK2lbcFzjTdsgRnbweGWScvABLiGP+MGqi/iTn9
	 a20+/hZAwV+g+oGBxQOi1jT1/43gfRsgJ7fYLbd7ZxM7opNzbMyaPsZGvRW16veaeA
	 HlN8x9GI3u/yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09A0C55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572303369.2820.10177512413809245777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a60ff6c88f372787e4dd20c1e93607ceee1dd4f5623c36192c76e758d78a5d
Date: Mon, 03 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785723033
