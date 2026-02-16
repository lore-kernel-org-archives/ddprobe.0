Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC05E2F12B7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771281893; cv=none; b=uxQOyKJFfb4O2N8VlolGhE1rkjcZYWH5UeB1mcw9oR95UFcn5UAAPUJxfdpHuy0U/OQqMnIMKsnWLoxVal7zqeTibJmh7afwLTWkqpm1+cC4+TOk6vQ/KwAiPDx2BfV4CtXvmsnVBkEakFI5yQ64kjFr90U+yk6TJ8L7cYl8nNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771281893; c=relaxed/simple;
	bh=CT1Ef3uHJ8t8RU5fHA80DRlzoi4P5BUly3Ua2du77Z0=;
	h=To:Subject:From:Message-Id:Date; b=BnU9h3dYYvi26lBjosIBT99UuiueM9/feJ+h5TKTf5wASQMSNNb2EmafzZZzYqaurDhTGxwNCfOchdKgqyWQ1sFFgbl4NuHscGY4AARHhjIfBV+Oprre6gk2ZSziBZ3Pu3mHkmmaBJcBG0jj0FjS13jxva13ng+TuOLFv3cDEqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzqVyGCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzqVyGCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE140C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771281893;
	bh=CT1Ef3uHJ8t8RU5fHA80DRlzoi4P5BUly3Ua2du77Z0=;
	h=To:Subject:From:Date:From;
	b=BzqVyGCjgv+aFGnmQJU8MHGLWJm+ITR/gOK9czViY7Oc7uVpjhjGSpLY9IQY93TU0
	 d8SWnuc0eVStxeAIeuwLUYvgQ89mXgA9NnX8VPKT3ERgznYZCAtdal3w/aIzVPh4xH
	 S2ETrr18LcXJ3mD+D61F+jgXwX2n399DQ6WdDA49JLtkeOoc1GRI90W5GSDDM0eNJJ
	 J+ey5bnyiy/QnQolma9d0QsgqH4llxsdn0BW/Z8uMWJmf9YOWqZgaxqKfKcntnvr+i
	 /ZaWNypZFXt9LSpcQiHTogRDLXs2N0rPi4aQXsK3GoX+LilPtrqb9xZf4QpxllJuuJ
	 CT3Sp4/GBfhWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957C8E8383F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128189360.30658.12068956998495283963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6b27b1726988fbba59cefa51af83a79841230a62cb0d32c09d75e4de8992dc
Date: Mon, 16 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771281893
