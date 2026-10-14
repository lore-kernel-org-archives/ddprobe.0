Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9774A5326C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791986434; cv=none; b=cdm30T1A8WtH9qIbuxcCvFYzS3j3qfrgOPGcyDt7CWrslBYhhoO+Tv2Yua3OTJzgnD8xfKOC6tHcK6N/bDYEAozHbBZ7yCE3fR4H8ihjD2ZVYOrLRLW1XqW27eCp09Yhk1a2qjtS+UJPLXEibvLH83mGAVC6MsqmkbfXt4Wf09I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791986434; c=relaxed/simple;
	bh=w1ehVZJSylUqxba9Ydt4j4yjns2KJinIKWdf6ClLOzs=;
	h=To:Subject:From:Message-Id:Date; b=AhtXwIH7OMoeJVnyaqBr1cTVjixbU/MEzIR+bxlRyVAV1RFmGr+YVXp8Vlq6eqVwvc8f6t2wEjqHmEbw95//UTluKLhm1WER5DgC+BlDw5PwG0YyAyLlDAOdnN1DyFReBTIIfQxYSwF9inBW3Ymj316bybvWHH4WY9FXFt2XDdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=di8NiT0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="di8NiT0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F66C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791986433;
	bh=w1ehVZJSylUqxba9Ydt4j4yjns2KJinIKWdf6ClLOzs=;
	h=To:Subject:From:Date:From;
	b=di8NiT0azNCYu/j6/NjQNeqD0uqs2MIjXoiErW1sXmNorb2WVQfi0scNbZqeRyT38
	 5mnKk9VsJs4NpzVnYcgS0Vl/ovEovf9pQReUy/D7A6bhW9rrWBzMk67aRWC4mPX089
	 NP2B4rDIhlYhwSmPtw8KnYoC1kBlyOSe8FH/YHrYiMLzhltEFY1I6UmAQE05Q6jqqs
	 QIZ8mi2y++E5mc6VBWDtdSuik0jNMoHUmm+5/1fnPbmkx8exdD9hC/JopkB9nZSLpX
	 TX74uH2GtOFqFo0opDrfF0iPgbHp1xXWFWb6hXGnPVVkG/E9TJPrTTZNVamXDs8ooa
	 WJZNNPSVr/1bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE9CCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198643370.8243.5156132884481369740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294f822a736b7ec93bdf5d411049008311840e676f8954353bf9c67e2c6adc17
Date: Wed, 14 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791986433
