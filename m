Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262AC156237
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768530234; cv=none; b=BEhVk9GwE6wFylSC3C7N1SN10VcZRF83u2w9pv/q4swrNl0vcpKsNJKK9+WCuelr2B46Sny8Snil/kfXfnZYJYvi9NBzPsUe7e0quei3W9UteQ1SfET44buVQoNibfNMI7Wh1fjpiBSP5tEgUrWMITQQ+X7hU5Cn620J8DF05C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768530234; c=relaxed/simple;
	bh=Hsvc2ddqIAiBeaCdfhiOKMJlW6VP0aXw6QtWET7TSPk=;
	h=To:Subject:From:Message-Id:Date; b=FUK5WBiylB8/j7DiF8NsqxUdaesViZHd5rE8iXvMLrl0OCbuzDR4WGUapytSKFwK+2lIXYiRtuxfM+PuLLiuyCK984Tu/NXhnI/m3NvWhJB7uDe+pa3XF25voEjFC0mEBUl7PcL7fpcxWDz17XS75CQ6TFX0cYakdYj8WthqtxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ske+mwwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ske+mwwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8BCC116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768530233;
	bh=Hsvc2ddqIAiBeaCdfhiOKMJlW6VP0aXw6QtWET7TSPk=;
	h=To:Subject:From:Date:From;
	b=Ske+mwwHjAmYbkalpEQ1wxbebT+gOlkXrN0BcgPYG4xDle2dIBrk6QdLTTrNgMRel
	 D7j2FC9IE4t6P9Kz5WQ8JkNPcXa/nFP2RjXy+kOOq1DbImKjWDGeTwKxsNlSebNxvD
	 1omZinn6U1hYKrC/OI25ze0CV9yuHYWBRAxJ+9u6CJWyAcrJRgfKHIJ/8bJiTFjmTF
	 J1K0riiZ6GGGIttMMDud7T3N2tGCfmkIEHwMAFBag9sIa8DqT6hBTvibDeGUfRh1D1
	 DVBJETr6XXaXS3tSymV+77VI52yp+YGOTaTaVbJeJXYS89k5pzUFL8MgtThPFl+dfK
	 1zFCNsxR3mrRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB61D4A5E4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853023357.6900.13723050590181018758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9dd910e57eaaa1b10cf9b99ac7ebde4d3f915a1db2914a7b0abf84b251b614c
Date: Fri, 16 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768530233
