Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E1E355F30
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775673934; cv=none; b=TqCnV6deGGYk2eib3RfQZAmdIbJi8Oipu4XFm4tNmctsaO+FaTKn+vC/xEdHjmzG2gQFWVSRIrm8ymkYpmx2/PfXwDV6VLfGWVYRnR5tv7SFqVTVl8t3femxB6TJQOa55auRRkHyPWiELd59hLHBtF+XU1ir3ca02csUC7zYOvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775673934; c=relaxed/simple;
	bh=23+o/lb52D3bjiu7Drxr/kJGBwRwEz7r1EXW9/cC1pM=;
	h=To:Subject:From:Message-Id:Date; b=oRn0UywFR6CwEy1NIb1w6js/yZjH+1c/B/+SnhXRCmhnEZAT65RpARRonI2IO5bjsy+FmupGMvC/u+vGRZHolUYGe5oe8C9saq7NhpwOf/3wIuyhEht7uplybANHUhe+8HhiQaQsEIJIZHJI7AcIXFY0jV3AzoECayAGIRLMqaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoHYOwdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoHYOwdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C001FC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775673933;
	bh=23+o/lb52D3bjiu7Drxr/kJGBwRwEz7r1EXW9/cC1pM=;
	h=To:Subject:From:Date:From;
	b=VoHYOwdgt1UQ2l0eDTKo10GiFUU7i80MywEFTlsiaEwdwrX/LZOKu1WlufgMWrFiG
	 w9CRfB2u4MI41NyQry/9DeNwMA1LhPm8WoNk4zKHVbDKTLAP4cULabcnLQMvsSOzfo
	 wrNZsz5evdOyMwyECDiAorA9Btm2gzsZTgvc9cwzZtUO1kLpG7aAi4tgV9mNkPkyh6
	 QudY/fIHu1lAc+/g8Lmbbmvfc9nJ+xnPKCSs6oNG4N39wgLAi1BUbWB5wJ4+DRcQzq
	 P4cVhWhSpKuVF6I+/beNzU1mTMRWzNc7RDOM7Vmwd6aPHlkzvogKBSzTCdG2kDWNTG
	 GEBQO2dQj/Afw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B027410F996A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567393371.7893.15427326320778554142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a1843ebb2d12e9e19fd71f0927c2a0dab1cf5d2e9937af00721a9d4f8111151
Date: Wed, 08 Apr 2026 18:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775673933
