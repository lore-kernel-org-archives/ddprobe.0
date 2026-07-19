Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACA6126BF1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784483914; cv=none; b=e9jKOvOIVnPkN1uEL2kILZNpIe3kc2JtpQhZZcked4M8yDuI+1ThTpWRC2wyyMFZwR6vN8Who4CQQJotx9ATu0qxtDUhO+bbn8ICxrpaLHSIJAAF73kM9Ftkrg4IcaEMoederIHlju7eImwJKkBR++3KtdEK1fvllP73PfjcAJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784483914; c=relaxed/simple;
	bh=vpoRtnMyjzhY00CYVphcz3s6GvJ8SRKAtuBSoBWRdmE=;
	h=To:Subject:From:Message-Id:Date; b=XFuW8OrJ+sn4JI8Q/c3lfFU0zaHaI9gXJunXtWS357nAhSYE5R5dcWLM09Ka8wzJtrO+WT2Hs8xaKlpRd8BOj6ejr/vbPdIPI0lLuXhL0o/W2zz/VKwRtm5gY40H9DUfe+wWQNccIkVa3TAkEwk4xJ7Fmm9c/WyspWF+BIsIhMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzSjzkWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzSjzkWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9380C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784483913;
	bh=vpoRtnMyjzhY00CYVphcz3s6GvJ8SRKAtuBSoBWRdmE=;
	h=To:Subject:From:Date:From;
	b=YzSjzkWk0pH/h76/vzDBrA/ix73bZQcN9mp43W4aW7H6uwI3Dw/3CJsUWm+3Vcj7P
	 0r1S0bf9hCSag1UO90Xq0OgTLKbhD63S+Q8SbMzxO3exN2kP76+jCKxv3morqmTJUD
	 1AStjNow9aDPeuHDENl57ifcsQXglkJ/GN286pDRAL+Rja6b9OuXWHW4KWPNDP857u
	 HJLYCYJ3d/pVVp0Nwvrefn8TvmtpXKbz9GFm62yL9hn1DMCaBfSdGCGHB9n+smOLSM
	 rp5l1NOmgCk2gxGHWYpELlIfeILFAfqNBbyX1uPYd/IqoVWOK6jYjhTBZsxWBtPr8b
	 wQx9CxP1UVW0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A25C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448391369.28758.5680836145990601224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8994fb6d01ee20bce4e16bcf27622df329a2e242f8d218ff5123538e7fe6ef45
Date: Sun, 19 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784483913
