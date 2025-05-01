Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318E822D788
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746064194; cv=none; b=dYsui8LFsQqPsC+w/NqP24bU3LcHobMSquMyYUcfoUM8B+tEf3MBUoyCniBORuPVhOoS2NDz8CnHlxpMvClZLf0NVNrzRqNsGTURVLKK5Cy4BBlc6GTEhxJXmBuN4HitOkfJaqLzQcYXFcHIMPN2zHbFN84lRD3WA7rKUqD3ifA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746064194; c=relaxed/simple;
	bh=Rik+3PaDQAWMR3B/Z6q0dBbmluNo3mf0WgubxvxXpzU=;
	h=To:Subject:From:Message-Id:Date; b=pYPXPdAwT8SiiUxafIQHZngiihR/2I2GRwMmNDKR/CGgNZ2cE4o+glgZVUkakUs7vzrApsIdlT1/bOgGKBYVlkKZ+d6irLHU0pgtV9+PA1f1fvb4bB0RjqGHJUnMs4pI/1z91Ha5hFzcNEqGr+oTvDdiEeXYczoevq70SwbDfRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=incJadEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="incJadEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DA0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746064193;
	bh=Rik+3PaDQAWMR3B/Z6q0dBbmluNo3mf0WgubxvxXpzU=;
	h=To:Subject:From:Date:From;
	b=incJadEbSdN0SnDRrNTyExGIyvVeprIUpHcgu6Je4CDTIVAM55QyHZB2uVDUzOZJQ
	 w6t7XFrqX4jZdyNxrYo2NgLrly97bsOHiF97gvcIu/Z9ZLahC3B3swumMe1ghlSPZC
	 9IPt/Bf/MBF/6ADjx/AunS5XQmIKBWneJ0gtQ/ZwNhYUHDZVollfrw83c7AC2u7bzE
	 YX3AUEm48AsfTMZrN6s5mF3pH635Jh0YYPtT2zK5mXxYYXxIiNOeC3Q8XRx91d1Xen
	 9WssIOd6SdYyKujCFMcx29efjJMx27HaXSsrSxRbhCmIZQl5PrkjksguOQtxDbqxQ+
	 j2ZTXoPssPN5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E7C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606419357.3858.4604674145731227496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4dbb8bc8bf6be3095033a5c3337e9719b406244cb1f6413cc3610b61498fee
Date: Thu, 01 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746064193
