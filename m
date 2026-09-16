Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA232253FC
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789526435; cv=none; b=lJGiX1HKQLeKZ/qcp9EUjDE+6igCaC/aTlMzecAtoXO98jArwnerUEk8yMmmn7dSIq3FrPBEVy8nkAMiJxHZcGG0kFiWyMd9qgcdYZ27NtIWW/qZjvHzjJ0Czkqn1m+WK9fNo1HGTqFqsE2frfdwyG75zMaWw3b4XnT017TIFPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789526435; c=relaxed/simple;
	bh=ruSJiFgcGC/pxXLVWzxTus37XmLpd6vVIX/bUQUSfH4=;
	h=To:Subject:From:Message-Id:Date; b=Wqc1Pp8YmzWUKKF4dsx3WEDKzKgWfqIPbYAvQWaDZep86lXMGF/Tg/6biym3rm2DioAo+rKnvx//rdr7KxsxGMpgX8vkeVJFdHBYE/8wXUq2KbGygz8OMuG0BiA1bZxEUQ1oL0xVOaXUCeSPmc3/P2lbWi/81rdyzojQqEIUPWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4cJUIbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4cJUIbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0647CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789526434;
	bh=ruSJiFgcGC/pxXLVWzxTus37XmLpd6vVIX/bUQUSfH4=;
	h=To:Subject:From:Date:From;
	b=Y4cJUIbzgA9llc++IKTUwzaSbXMnIRkxhNBHl2X7maM2nqBJZeMF2dCtDmT1zAuoD
	 o8HBxzNPcSSRNBvvhvIbzeeJ3NYHdkKW6i94S7OIQ8o0C2q0j5QmP6Nw2jiWWQCxlU
	 30m6gDlJmCgdUvZzBcK1nY+cO1bXSInyx2wKJw8wDjthT5AeyOQiEnvHne0TD6r9Fz
	 MsBFjuxVr9ohOzoZC0B8ftXu8LJ9gcRZaID0Nj6PJT1kjSxH6U5ajBrydWv0NP5sEt
	 httbf/uAkf7VdM8G5RSx0ScHJs4LVqMz2rfsn0gjaCcxZK4p+FIzlRanqqY+RuVy1O
	 NVGQEgV6v/c7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91F3C88E75
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952643379.19289.2897119919986374207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797c669a554938d7e1f7c534f45db8428ef2fc7122f8d5322e83d5049c9283f4
Date: Wed, 16 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789526433
