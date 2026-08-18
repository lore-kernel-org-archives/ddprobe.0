Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DF235F5E1
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787021434; cv=none; b=OvQASVibwv1unPRRnnwRvIVqJK00ljqyAQ03y6PYboa+mlQJJ+QgnPfoOHEQpgOAbLOKGd1xTWHOCb+V5iiiUvPosTG0jtcuvLLU3rVvIypDqNxitWCDb1tyLWsAyWUZaC0zXUGFS2heden8q5UJWgD1N9HS9Oh5jA07p7yef10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787021434; c=relaxed/simple;
	bh=I209aamTm3GmtJoLBHr6tmHTqIP/BtaQMcewxl1v2VM=;
	h=To:Subject:From:Message-Id:Date; b=Dwn4leKc6WMVgmLgknvmoAknTeUs1v7rZXzrb8fzMVkpxzSbX01PaRtuYRp5HUyxshm71DHYRIB9EBwlaQK6hISmFvZFYo7Y5B/K2MS2rvgyasaiLh8SMH9eyULqW5w5B7Kv1VTraXZCbpZRQ6s9+mKTvps/bbfibKkdfGrwbso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/Cfubnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/Cfubnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B7FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787021433;
	bh=I209aamTm3GmtJoLBHr6tmHTqIP/BtaQMcewxl1v2VM=;
	h=To:Subject:From:Date:From;
	b=j/CfubnuoxbhR/fQC0bKzYjAtX9dsHKEEwVrJzVhKjyFbkyGvokejszsqkYx/VX6n
	 56abFEheOnV/zZzBLJ39jnkCtpj0AQHQ0MURDsVvyedDiNkrUgdWoHwfdVCFrNlQuq
	 n9zgI7++OxkoeBDEkK4yr6Id5Al5STdFqlf9dp6Tz68AZNrdLRCdne6YhLPNPp3ykE
	 DgvecMtYNGiVUBHW4FjmJkC5xHzESUIDVhmKcOWBTwVJWHdaBKRhE7U9yQ3VDp+6j0
	 sEOqNPVlrVRVs9dwnniBYhbZaR9yCYzxbs19QadyFBdNoBQJZxZgGW9NALXlAcvMuH
	 +3ilFFRcTPGNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB19C5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702143368.13213.1984485520918451384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac73b0c2788809ef4b1ab094d1fdf11f319cab1a73e02a41f62499689205f08
Date: Tue, 18 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787021433
