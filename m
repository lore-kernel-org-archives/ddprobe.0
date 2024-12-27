Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDA9156F44
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735339554; cv=none; b=AFb8UqAmS08qOA5lnxtT6tf0wQoxdAxDWnRAimOJHHkR1Bv0yVqjV0FOkyW+bYxTRJIgdgw+ORR/9pW1eAIHFGZEOe5yCdjT5vf9pui8tRORamrg01dl4xlTjLPSo6CPcOgw5BKUrfg/SNlmqXqIKGgauNxV6NfU2Kh7mZqLd6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735339554; c=relaxed/simple;
	bh=V7tDz0q4lwO34DCw1SdZBPVzmQ9NqKs095Lp5j9fZng=;
	h=To:Subject:From:Message-Id:Date; b=GKdhI3CX1dniVxNyH4QEnkEbYzS8WxhQRUWkRC/PGr1lF/N/VRfoMYYuja6snf9HPXeoalM300Zvh229kYjr2DpdmE7ySMBJtrIQcOMZ5NjtcvhhyDE8lAAhUT5fA4h4oYTOr85PpEkAmxhWZshDbJPDzB2DtmspRcr7kFgozts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGTEEfvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGTEEfvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA01AC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735339553;
	bh=V7tDz0q4lwO34DCw1SdZBPVzmQ9NqKs095Lp5j9fZng=;
	h=To:Subject:From:Date:From;
	b=fGTEEfvB4ERNZvEnObusx7bC4Hh6uaBkhS8Z9dPv0LRuj+XN0wRS/uW2b5EEIxJqz
	 qtVbiHxaIeBswR7s9RGii8Rgk/fPrWOHYcdn1rWW6VZOC7MguuoAFHiihdIPnkWzRK
	 FdQ4vvYGcyhVkrNfOyjTYFnFw+FxDXQBZsDPKgJfSPIuiRc8py5v1RsLVttXl1fIhY
	 zEnRrImZCbE7fWKfeKMhGQDxiRxwX1THdB5wZCAriyx1XHHfVJrIHEYTvLn6W0fmXm
	 YrJTYfwchvh8WyrjPB8p774YNWkvesXAOnGRxA46Bwibem48U8Ta7ocBxDnMyghMwh
	 GfZbw5DMgILAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6300E7718F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533955367.24807.4706841703728907549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f747ab7db396bb139f6413293718725b5e7cfe4c376b7f9f828a9a9d40d701
Date: Fri, 27 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735339553
