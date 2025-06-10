Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D301A1FAC34
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749575393; cv=none; b=i03g0qcTURTbrbepMyrSyHgIF0tIsjteasOMZvBok16GfopyQNE0aYIrTjIFf1iE7EIThPTC87QEfpNFGZRZMEOhlpHAp1UQPyMai3XE58oeBb7bCcVjXJ3NSzbxuZTFiwikbXd8KNo5Yny6Ynd2H3nD1BUc4NZSTISdxXdNkLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749575393; c=relaxed/simple;
	bh=DfXJLmEcs4eJeSxTRB1uXtGHTkpC/+39ou/mZ0MveaI=;
	h=To:Subject:From:Message-Id:Date; b=rOkNZ6vD5JENsRJbbSPTH7kuae2R3ILI8a2ZcE3nzz5j/RVTyHYRMOT6WBCybMH+77Hrnr53dNY1RYxOn/FUBxE6TRuULLsmz27kPkAK0a7OOooOiNXNtqKUyVVsioPGjTvtq05QYpwKDzstzgxPAnIeuFml1kpBWsgzmFUrn5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eggtUyCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eggtUyCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DC8C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749575393;
	bh=DfXJLmEcs4eJeSxTRB1uXtGHTkpC/+39ou/mZ0MveaI=;
	h=To:Subject:From:Date:From;
	b=eggtUyCmO358WmzS14TzXCjukWXV/oWJBbOOAXlYJ3wryrTOwbRbRH5NLQ1BvQjID
	 KFjqiGMn56IZFJOLpDGYRt20DiUf48zGLvUCnG+mU7V8D6awKgfIjfPyIHHUiI4XKC
	 /ZXvfJ6yw0qlNEUZcwj014+xPhKFFiREh1gnJ6yuH0OGF+S8T8+nsLEOEAsmorGuhz
	 U+06FJqM3z1ev3FXmFlKSnSO8p5ZwmL/A7JPC8l1Coz/dMr58ZWA1QRpuDx1bV3ISO
	 YH1MApNb36QmrhodAUdrmlJo++6kDD8rdUo4qvNdORNXi9iy2U7gcgqwCBxRMYomdu
	 OX8B2TOcq2yQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908BCC677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957539358.15624.14783858553647514203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a543b4b6134b049bfdbd50dc89418846a1abb5a564319ecdffd6dc8b92786f8
Date: Tue, 10 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749575393
