Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE223E7BDF
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779898354; cv=none; b=a6f06uhxGvAHQOO15yi7pA46tisWKLeWqu9qQeQFmPST/Pz3Yr09R8tGaFck1qvuqbirsCKze7RIErsLMNc29Axcf3FTKZnoH1aVbD/yjpbCPi6TmYyP4XfBlPFRq7TDWD7I8sHlQCCxWYDn/4JUR5RestgpDxM3Qe3K/OzUdgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779898354; c=relaxed/simple;
	bh=4z0b9NKCf6QSvVs0hxMyYBMepd1VE6qzuQq6qH+K7SY=;
	h=To:Subject:From:Message-Id:Date; b=tMbQpQZUYD+Af7IZBKh51nJzZ/pS8Hrrel4gAQwcEE0m2Yc1+AtFy0nKo0p6WsT81kQFujtCf6o0fIMgf3cq53xWniaPJeI8cKpG+KsUyTuiMtgnGOYWfAXpAkaJlpRMW3cgacgSIvs3Ha9BL1QxKask4hBMu3s8ZrfQJXv3JfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m70jr++q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m70jr++q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F91C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779898353;
	bh=4z0b9NKCf6QSvVs0hxMyYBMepd1VE6qzuQq6qH+K7SY=;
	h=To:Subject:From:Date:From;
	b=m70jr++q9CvqeA6+D+dji3BUuZfmJnjmNcIkKMtoV3dwX8YIAhGXMjpw4ZMzArlhB
	 Z9eKrDpZG4O2TTgRiQDiGXZ/OD96sw0ek8SCK4MFzfjgqx2dY0ad0ZNaTLnDmBJOEu
	 FIv0zMJbquhuhl1eHwvqTrDM27U72NOeAFP6rsV8kmg79VZXgiGa9iWy6rUZ5e8WFV
	 MtmG/BEbUgFn9i5/9zm8YQoPXl6LOziY9w0cfrw6o9TdH+dnLPtiWJF+3tdlgWQBuy
	 Pbv+3Jkh6z4e2bGNotlL9jDqyxJvgKztUiePcVv5K7LfimWPwGwnjKYy0YPlQmDLyL
	 cXUowy6NN4qsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA80CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989835369.1858.15199174720334422126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d05012a3c86d1a9ea16b12507d0c473b293fdd278a478047599c1a78e07ad8a
Date: Wed, 27 May 2026 16:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779898353
