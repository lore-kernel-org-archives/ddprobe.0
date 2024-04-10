Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A78125AB
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712726297; cv=none; b=l0mEsHyc26U0M4mi5QHypbTKMcBuebY4EoWQDYQ0j47ppB9B/ZHfbkB/apoXctBW2gnwSKBexARD7o0N845alJMEDZTSH7PTltIVMGBLzE0UXKc9ohJkaMF0D+mgZYeZL5KpHk5ammk7MQbVD9wB6xzcHLDOdAEwHeawBHekG3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712726297; c=relaxed/simple;
	bh=NOk9M9XW8uScscahLpdb7cYcYckuZhabmdCGP8gfVKo=;
	h=To:Subject:From:Message-Id:Date; b=e7VT/Ig2jisXNiU6guFelkAMuO4BoKJQTZmW7tXzlehNqxkF0Ded+hruJfiUyyJiOjNa91D3SYBLKgAfREXnBtL2OJi4Q5JoWZNd7hWydvwzFh8UzSHUHEaVN1ni19q76hK0zvkLPNGKSk82tblfRFNWlsQ85nblSco/BOAoUwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERZc0C6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERZc0C6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BB7C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712726296;
	bh=NOk9M9XW8uScscahLpdb7cYcYckuZhabmdCGP8gfVKo=;
	h=To:Subject:From:Date:From;
	b=ERZc0C6GNKz0lIACajyFYw8HyZk11iaZr5PizxFtrp/HZ+2cnEIiwrA0cwVnkNRuE
	 dDLNDi8QvwqtmKdz4ZrI7enytZIE1X+mH8meQ8Gyiaysa2hVUKYjRR5hyEXThKgNKB
	 JwC1M6tTndxyVGjgcX//GhWFOu9yUyDbsOUz+jEqccIlh0dFll8mdgGGMB5jWs9+Do
	 m49pdAq67kW0E2TNX/BmJMG/BBQo15vrjRAwen224Uboeqb1VHMPnIZFyrVfDSJdFs
	 u0X/x7LNj3MK9irF6lnlXlMbCPutSrYM+I36V2dXZyA3C5xjzlJocjiqcxtNJTU7nS
	 2zN1Mwhbkt6Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BD6CD1297
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171272629640.29127.16320619343917995732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217d1763fabe2d887ebac85692136d10686bf2a590a2bbc255198c1be6af7e8e
Date: Wed, 10 Apr 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712726296
