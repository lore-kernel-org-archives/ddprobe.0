Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2125028691
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752195594; cv=none; b=uKN6+ZxSNJ+wrqAKzX8CMsCqXkf94gcj2DhV4M0fNJrZASa3ZQlz7rEWzuHWidBZbMkDltJxsMXGo/odDMnaPGsz5PZfWpsQF+99amQb55p7yvG/wy0eH5wn+xL8F7hiJJr+yi2b7axkpJMqRKwFjSWNO2+hf0M3ltOR+2pFUak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752195594; c=relaxed/simple;
	bh=LJNrsqhy1ayy6PoqPXhszILqnR36PBz23EZNxcQ0r8I=;
	h=To:Subject:From:Message-Id:Date; b=BFOI5N+GGO9C70m/O67HpOLbXbnD4fp1T4cpe9/+yaHtpDZ82LvbLEJ/5eLi2cndHTTp/rESl29/u7BSAI6JgRlxxAMc4qvf7cJ/3cO9fsG6ZDpPB8kTvKH63/u1FrmJUulGOlNY2wzgzG2ckUkO8gXkz0G5MLc9LCo4Tr1qTYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJ5SGYO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJ5SGYO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D50C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752195593;
	bh=LJNrsqhy1ayy6PoqPXhszILqnR36PBz23EZNxcQ0r8I=;
	h=To:Subject:From:Date:From;
	b=IJ5SGYO8oGQtsRBL4ZEXBxnsmbzBX8FzfDD/X3awGYJRtzYqwNgVneIP4JzqcXr6v
	 cSopqJRJtIH/pUjtWrbyMQD8ROFC92rCGPp0JmmIpYDHAd6we9TCn+oenRr+Od/OgD
	 +kTB7YYsf3mqylIrR2xcnBy++WUCAeoBqsfmUrUaKTQeo58NqJ2H8gTkeGqitFMoxy
	 a4GI/VUELlTx6gGx4mf3p9BRL3SD4i/4ZUUZjPFVBscZC18N6F7JAZB384zekr2ReJ
	 X1gK8M9IxPcqCTcGmMh3HCRfoj172GTmtPpCzErnQOngaeUYgWt5IsYs505t0DiD1M
	 A+WiznCKAVvIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9205EC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219559357.19448.13364409500699576306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a47fa07f0eebd9bd9fdfd15f24bee2f4473e3c3acf88f907b3df98b25ad9a4
Date: Fri, 11 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752195593
