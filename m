Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6513016F2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782270994; cv=none; b=et25CfnScSdNUiH8TP3bhzEwo2bX7merUfrF95vFD2cylYQeAPT8/RyYhCpWt1nK3UnJQeCBl1feKrM9Kh7iO/Neh+x+H8wKejTDOADTT6HxoSi7aDVWApJFvtNkYi/knUGE372DE1d3YNmaAg3cfb0gZF8gkBV/Fa30l0vA364=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782270994; c=relaxed/simple;
	bh=922VND+v3TIqIQzX0MFVR5AFKfd663+YSCygkjvxMFs=;
	h=To:Subject:From:Message-Id:Date; b=thKsqlHmbJWcXN10rnMib51U2/cuGDVBQ/lv1OL1+gXBwOibhoD2e3GVhbK4bty2iFMIVUgkSH3uSpujbVFUXfvhUjcHNNjv+5FbkBtHSu1ie1X1T6ae0Bq7OaEYRAfVpf78GzVhPuNCzEODi6uybMLULPxyqwcwITsJuNKwpgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=km7rKcFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="km7rKcFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FD9C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782270993;
	bh=922VND+v3TIqIQzX0MFVR5AFKfd663+YSCygkjvxMFs=;
	h=To:Subject:From:Date:From;
	b=km7rKcFae0AvVSklzp5uSksEYtR3sGPT2kWtMBLPCQJmmoSE0JOwN4Cqmj1THlqQv
	 RF9onWmiSycnM3IDkusREU6Bzm7cAxtmX/Yw+2ZOUZob9x7fCDWfNGXhvQ4mnTuZRw
	 k9HIKAaDIuZhLre5/cx2n8Phlf+NVPLqw23bH/uTa3b67wmXIRQwg5VzjB5aeRZxfo
	 zMwJFjRzS3e/dvz5rw9brIb3F1dD+WvfkRvYNUX5AJ4eW1bLg5H/Dea/zYmKbpmJXP
	 u4jhkRIbF4E+3aBnLBoqhMSzV3SMurTy+Ny23RBll+FJtYKrBAMe4AqELS5v6va/FR
	 8xjkS8NQru4xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42D7CD4F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227099373.30747.17041380548225687413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b559f29b57be2d27d1824f6a04d93f8ab572bfa5d07c91816154bc178b8fec9
Date: Wed, 24 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782270993
