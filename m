Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45879267B05
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780969474; cv=none; b=RxyPKnbms683H57e21vsvs6eOo80M5w1sfRsWxcW24upaKvV4RH3jRmb3zQD6VW+17X+6DO4id4tGXfKQFd7mVPuyFWB+XXlTy7vGvIYZv9jDwRESHLGJHapTHoj/gsAsh1/ZOBeHC4mnITD/LuVP6acVVYP/joDdaVscVr4T1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780969474; c=relaxed/simple;
	bh=UdUwaqF8QF+LNG9Jk26MHOJFnt9B6YV9X/1LkH+U9qI=;
	h=To:Subject:From:Message-Id:Date; b=eYNH3V+wXbmoal52qze86yucbS/OY1ZA9Cg6j11mxgRDQyaUUJTJE4MGJQtkdG+nIHinW6z/TJ2ay2F08O1kn+Umss0tF+yrEguOU12BM8lt/pnEG7+8L65iPmKM6492HIo2C09GJAEDzauag43L0aIgellOJrKtA3dS0Nea3NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESF4/EDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESF4/EDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF867C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780969473;
	bh=UdUwaqF8QF+LNG9Jk26MHOJFnt9B6YV9X/1LkH+U9qI=;
	h=To:Subject:From:Date:From;
	b=ESF4/EDQLOLTg5inAjfL5VlijQEGtrkV5TOo3WmZ1Fz9EmEcJc8BoAHQ9cogM1QuX
	 KW2O76PyZOnYskP/UBl+V3OnmzV+rFN2jkiv/BdiP2WF+G/9DxCmFHWqkeE6cFvaDq
	 H6DT8knequedLyqKnckzlADjt8AFHWWvMaNquzVTnyZ0KnA5mcggtQ7nUHESt2AVvU
	 dkZDvjhXe9d14xDOkIRqeofTVkOObCmVkZVw4EQhH+7DXp/IDZPQ02sgZZhOblU67D
	 ZNDE7Na5zyfB43bGXtxPfWRWcOMie+g335amZk0V/YT5lXsdzPXx6rkOwdP2KpcgGG
	 bNMpDW9T/DJvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDF6CD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096947370.19998.16009733988958014736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889da50559bae1d305b26ff60c5254b9538597d27f09b8114a8e320f92cd6451
Date: Tue, 09 Jun 2026 01:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780969473
