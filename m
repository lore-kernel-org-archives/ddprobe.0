Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3235D34321C
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758031194; cv=none; b=hWAOnQzZ9FRgTZcPHlgKQiKjPfAg+Ov9VHgcSdFkk+AUr5qIw/YO70lh05EqsViJiBEl0XDzEi6ikSO6HM48meltjxZtdUGvL3nFekbmKHMD7Bln3KiWQ4Ub9GD8NlIjYpfckZIHFeSrH0xzZ6EIM1OEYG7GhuMwy21tL07SFcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758031194; c=relaxed/simple;
	bh=dlAMcyGnM97Bgx/q5q56n16he+yS/LLXnSaw+6/yxn8=;
	h=To:Subject:From:Message-Id:Date; b=fwMu7VCBYpBhEEk5ZYmZPEWOhBDcoQBjTPBS6A8x3ZNoYwvFEIr4WZxOlo/tIIWlriII7Flc70BlZFyCbg61mRqgrdVCmop9P7NbgfG+3yG1vzstbjWQkcjx7SU6k6iNAAqmnB339xcDwC6c6IVjkT2dv7/Ev5DYCaUe91JWHqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHguaeXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHguaeXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A044CC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758031193;
	bh=dlAMcyGnM97Bgx/q5q56n16he+yS/LLXnSaw+6/yxn8=;
	h=To:Subject:From:Date:From;
	b=lHguaeXgk5Sz3KupYCeujBf53I5vPA63ScBSKq+6EQCt6Z4BXmaOQkz1NytiPjcGh
	 O/leoFSd1o0iCrNCRchJURQowK9vcdRObtCMt3kunMUwctIAKZ+CMqrSuCUfFoO8td
	 kLa8haZ5b6BZqbOSchKjP1rwy1imJqNz4RDRZVG4NaS5DFHYs5A6CPNYJxqILED5wN
	 lFyer1Li2t8y5KHuIPOajmpIi6IlMdqCq+k+vaaqbYovOP2J3FGCL8wLvjHGc+Cca4
	 wP41wETe9yjiCTkMseOsGUC3Kl4kIEmkARfay1zw8xWiLW44oB3IsF/GXi/u39slNj
	 FDbfxf9E3rYFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B99CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803119358.18321.7199168141657761304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506e64dc0756b14663918f7433c087d1c5830cd3dceb0daa47bcc8812986f89b
Date: Tue, 16 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758031193
