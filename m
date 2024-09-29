Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCEB33F6
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727570154; cv=none; b=CGwV3IFPwC/yGO6pARBRAxPw2nDGhiV02z8lT1e7HfjvUYvyRBJw2Jc70z5BYKiRxOEi1jwWVbQF6fNGqLvA8UvUiyVOaMvAZE0NR/ouUi5WaBYxVaTSWYuDVgxPLnypdiHAjiUWmCIKuC/w7xDNMCmiWBMgU4p2kqb+dYGwVqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727570154; c=relaxed/simple;
	bh=UI94Bb87bqeilgfKxqQsVlAujYF0UMNGoAwPNG9AS+o=;
	h=To:Subject:From:Message-Id:Date; b=iit+g5/dWctxzxbF2rLCA7LMM1z/ZSZU3MQ3jliguhdACAms72gzlzuBJ8B1rovSNudxM2kVdzdVwhDBcNPFSkGwmNPNT2K7OSvml4CBxuvaAG/bBLIX3xZm+699IaEj6sLCEKUz76ozrBMAAUJzE6iVgARQtQl5v1msG1FdL8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDk3npDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDk3npDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC39C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727570153;
	bh=UI94Bb87bqeilgfKxqQsVlAujYF0UMNGoAwPNG9AS+o=;
	h=To:Subject:From:Date:From;
	b=HDk3npDrySSnzSrTjnnoQZeyCoIhgknnvAiC2TdLCLJbzkOYa6tKxHOxVwGQ2Gxli
	 TKQuVj+ZiKue5Iq0i3QL3bMhsG/LLC4nSQPA/Qemt2f/P68StFcK+TipWS6Me9fOm6
	 KqO4kZ059tnl4chCUpR6gbDPqO/9f1cLnWGiIfncp02FexPBkdP3Hqa44vxK9iktIZ
	 yyA7Wx8YBqwIAO0gcHDoUFBcfYBKqX4UVz1Fgb8xNCHF1hz2sS/s1BztC0iZU4Fl3b
	 mr2IWOwpgopwe/vZ4mWrpqcag1d7JOvR4VTo5p0sGjKiKY8mrA98mMA9NzKX3gaVkn
	 tvWI4zhrDiQXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96527CF649C
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757015360.20029.4667915300188309244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d014827d47b84e010f4581f3cfb21d295db97a56291f9ec37e8a5f13773ed46
Date: Sun, 29 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727570153
