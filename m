Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE0F219303
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776127654; cv=none; b=Ucle/q1O/zeFbw9MO7Jdg8lOei5UpjbmGqNTCJfUd47HhYVttvZYPCF/8U3/4KfJloGGjnfydE63jeMyMCG+06sVjdr6HxKgAFO+eJPpzm70j1wtxxYGQgzub/vGdlsxl/QOTh1p995DcyhZjIhbYFavFvPaAXjKAcGp6gUi0EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776127654; c=relaxed/simple;
	bh=bgdYxk/dH19dw1mM1VP13JJWaR7JyHKm8rera5hKvZY=;
	h=To:Subject:From:Message-Id:Date; b=MfaMx99LMFQit+5h6DsVNeKVa/wwLmtmxOedKITZu4Se0UFIj8X3LU+9wdQ/jifJyOrnNnEmFc48t8cCh3ZRgpJz8kwHaQsGnN/E7EpR5Sz6JHmDivV7Rymep+TnhaBlXlrAQjQCnyceeVnjhItvUFXLmR2BGX/jv0DU29FIEQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiyPS66y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiyPS66y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B28C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776127653;
	bh=bgdYxk/dH19dw1mM1VP13JJWaR7JyHKm8rera5hKvZY=;
	h=To:Subject:From:Date:From;
	b=EiyPS66yhGkLYM/eUpAgdya1ITCISfyU9+VyZFxX3EkBISLAugYCAtJsALDx8aOtV
	 QQYyPa4Zbia1lyivalbK7Xu1hnWqCr4Ji75TUBedW92JvGIXTEE+Vv73Q7DLqEGRup
	 Mqr0jsmI2eOPsSU5okIx/ftkmLdfFQ4BFj2SU6yfDc6w4Xeg9DPYA9n0t7yF3SkyqT
	 QxZAtkMBmvvXqJPDxLMu60pQcHaIxRH6LCqugqcf0Jjn7/WNsTv9IctdamI5o9fCxZ
	 EPU0cvY3acIhs2fhGLniCYvfkfjE777DNLq0Op0ITPebWjvZUmQ12MyZ1KmZuS6Qqg
	 zjI8/5COnKFZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA379F531DE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612765368.31713.7814542245416053340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8f6f7555b14a554bdd48406cfa752d39bf3a401698bd3f78e32ab4c00db492
Date: Tue, 14 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776127653
