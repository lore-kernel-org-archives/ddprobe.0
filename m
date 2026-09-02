Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D064AFE3B
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788368434; cv=none; b=ty0i176L6fMVjVxSJV5V3Viqaojh8HTUIZ/QmZuPGA9F7eHY5MFRxH+fT3HlpVTRry9Y7jBqOrpQxxwBk9A3siL9D85zLz0K6vClV66WEJr1eQNJNR5u6DyqgGYMSvcPEJANq8lpaXgG/jVT/CCyu8nxlmrUXGR5xU5w6sNFRZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788368434; c=relaxed/simple;
	bh=RqvkxujZtjj3ipF0WurDOvT7RpB1FDs1hZwKt8zfU/Q=;
	h=To:Subject:From:Message-Id:Date; b=Waj5uj5djPj2CbsHGBSv6f71hK5YEoBDkoLM7kQeI/mVfUPHDMEPIPpzFh9JkgtM/8N3Zht0dy7uo4kLgxfNDsImYmKDmhBiHBfhYA/EBzPTm7QLSwWPbzs7rT2YctXyyN+G3/p9r/aZyouncpteDflp6o0wDI9dA+iqF1b75wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3xrmKoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3xrmKoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1C8C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788368433;
	bh=RqvkxujZtjj3ipF0WurDOvT7RpB1FDs1hZwKt8zfU/Q=;
	h=To:Subject:From:Date:From;
	b=R3xrmKoZCceo9Y6WqEZZTzk1NzK72KG2ZaauqKo4a4UWz8XZMeIYfHWUVBxUyPxaV
	 xJ/RUe0ToJUorBCNpUI4tw2z/w59Wb5sJH8ij9uki5V7fmEN+3hPdt5x+3RsEGKmJI
	 JOYhtrnfSD2SILmmmvp4jR3o4B2aADek1FgW0JEI/nInfYIbbH+KWF0GFGAXCmBsuu
	 QwBYJdcdunP/Gy4dGeNVv31Y62HMqRLMThtS4CxlC4My9ZHPKXq8MWovLsK3AgUSIh
	 iC/blIqmGGzde9/Wr2poIQxhCyM5tprQxWhn8X/EuVYmBnlZGALeZH4T6qwis4Ac2k
	 ukWsd0Nk2IK3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5AFC61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836843368.9484.12781232837583180526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d9959f8a4384c81d11714ba38a26bf6a9ee2948591858e7abd06860e759eb9
Date: Wed, 02 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788368433
