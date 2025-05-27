Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F8B1B041A
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748337595; cv=none; b=hknXW00Z1u5vmOOQsy/BlJ18vWSOru+i+pWiUZaw6kunu2w4UBswfRR80RiYI2uiE/4WNvZpq17aNB6lJe0r0pRX0nkYl9FYZ6zNbqsoq+7SJMfP5SFl2xuWYWEjaYtrCeRvImapuF6r2qZlkAwjzMxvkEBAIUyZTiQUs7nU8Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748337595; c=relaxed/simple;
	bh=e4lRMzL1Zhe10/GJ4O1A3XVGMXn7689WTfhSXF0a4ZA=;
	h=To:Subject:From:Message-Id:Date; b=XWshmu0kCAMPhHG4m2RseOWRTeu6283ulsZVoLThjQEZf74RJol4pugpOsBhP4kKBbDV7bmDM77+c7DwrdXgADd1hcsAW7nDY6StGM0DI0wKNzFD4HZx49P1cPEWaPTevCr02jmsHG2r9CY8Vd5cnREV5NAdRjkgD2nbPstgA9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clS5CKnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clS5CKnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE0C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748337593;
	bh=e4lRMzL1Zhe10/GJ4O1A3XVGMXn7689WTfhSXF0a4ZA=;
	h=To:Subject:From:Date:From;
	b=clS5CKnWxHZWtZMyUJ3ozX6AfIcFMu4a/UOThiGLxk+yGX44LZ910kN6peJEWaXl4
	 IuAyAQVmOyGmbPTSFstGGTvkl0NU7QNKcwWSkYeSB6XztFcxuO1BvWl1oZMHQUOfb3
	 1ld74/PCpH5VHOg2oH1Bb+8qBr6EbGAZrkAhJEAMimXffbENgKhaBpEfjjFen17VtK
	 col/P1UAcfFTD+qVGQpmZeFxO06ZpQMQIOno2EmVD6NIhcjG6VJqGz00f1cYEL9L4b
	 as+TGSjba6iQ7lrBWQGaNOjR1hxolYm0b5iLTTXDDbFuO3rzE9fF+BFu4b6MKdv5IY
	 ob6eQmIHb4lpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E25AC54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833759357.11476.8200951971548978120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7010885c866b40cbdcccfefcbdc6c11a2e690b189d0b6f190a040ed729cca403
Date: Tue, 27 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748337593
