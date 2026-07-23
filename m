Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36C83DE453
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784794774; cv=none; b=KrvZ3pfu0EEk2B+1JCK+C3/S06o5f3ZyN66PQ3BFPiK2LcgOIFFzeDfCfgKN2a+URMw2IveGM06t2baKsXxhwsh471G9NVCewuxWdwem2LedC1LbmDttq04QOZSfcRAVImcLJz+YAx6khkBgTjLxFlsTOqLtO/g8JJlzDA1zHdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784794774; c=relaxed/simple;
	bh=UFJGSX+gkn5GJrP4gDi0YAftDoPtX7fBNa24hWcYbAw=;
	h=To:Subject:From:Message-Id:Date; b=Kol1nJok2Qpozpqsq5Ge6Iama4PhlgfwHy/ggiuvHWdlVdr4jr2RzLJTSUZBKNpULNGfGK7B8elw/bjM8Qs40oO9R89AvtWZka6XNmRflb8+8zrM43IAlZu+4uHxQE/6Xnw2Ell61X7VVHf+q39M3lBhVVLr+AIgG2l4s00WlTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c51cyRql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c51cyRql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0877CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784794774;
	bh=UFJGSX+gkn5GJrP4gDi0YAftDoPtX7fBNa24hWcYbAw=;
	h=To:Subject:From:Date:From;
	b=c51cyRql+EfmSkckm1bfD7Sny8WsZYrhjB6U/5iSlxt60Otvjg5f6vc/4+q6ViI9H
	 4OWp2h5xlN4idS8VOPJ8zbHqFsWhHzCwmivI5FgRq2HqCfqNihNVBJ+OPTSGfEDi7Z
	 fG26CrHtZEJO3FrCcwwYYlRgjg7rNdhLXcdFJCDitqIqSo8WPOk83JWfSqHFY2opx4
	 nhryRfz+b6KDT+tlASvKV5tOrNHdd1/ZUHYpWu+FMw76KeLBdoP+Y9wbqryGggOtcB
	 x1KloraXZ+rGqp6AopjOdSKWhrkcm1qSOKQ0bV4J1jCx5Da5OAboh4aQCO5m//tcEg
	 mjecYefcxpIgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6A5C531C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479477370.27355.14611713690661011848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff8210be85baafb61ba30f14be77e9ca939d600634bfa763f59348995a78d28
Date: Thu, 23 Jul 2026 08:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784794773
