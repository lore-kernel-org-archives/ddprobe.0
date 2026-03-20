Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF59A64
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773965094; cv=none; b=RrGknFSDNVaHQ5z9DMPXO/hqs9S1FdWFQ+gtVBkchrIL4hbLQtWPASyOPp2q4U4eXwL2vRvMiH1Dpr/MhbW91KkPis5SawlYu608YY3R4EN+ejNhFHHhs6sr6DbHUFEPew06V2fjI64J0Nq9YCl3X8B6RlgXU0M7+N1Ciqww/x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773965094; c=relaxed/simple;
	bh=rIvJORW/Hkd3naGYPIKZ+Ab3lskAzwJrUZZwGugCDmU=;
	h=To:Subject:From:Message-Id:Date; b=FpDyfbdrNXLPPGv1BQrnEulX5ztg5S2ckJ7ac0oG12hK5NXaeh3qPzRBisTIP7qvuLh9DAzI9ThWlFSDwni2LeC8MuVNIQpU4HdAhY9HcIyo+9U8oowozvdc96xAqelA6Y3b6QAdY5ajh7EB3Tgf9r713TUZIVdRl0+rMU6Z3po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bti/Q4Ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bti/Q4Ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D9C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773965093;
	bh=rIvJORW/Hkd3naGYPIKZ+Ab3lskAzwJrUZZwGugCDmU=;
	h=To:Subject:From:Date:From;
	b=bti/Q4UeZmkYLXQQV1jMtx6Pog501BmXejAtL/tY38ErddetUNrQDAz7hvk3HiL64
	 hj9XLGBuGYdaH7ukYf1BC+GqpRYL3jyO8asmX154RebTqIfkXGNlF5XmerHahrwpdC
	 ch7eqL8SAI+MYc5x1oCzfljHjts2JRYtByiBMvf2LvkzF2q+mpaC8dDtyZVydDZSnX
	 R2SjscpPTWKNtNw3sTh20oirWWej+/9YyWk65JZBVse3rVseTS86BsICjqAFKKSEmd
	 xwI5y6IjOkbTq8OHjzOQ8ky2wt6F9Cp/iySJkKrC7Qn0Qi5EwSz++42GtZcSJQpRea
	 FMx25vlATfmaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FBB1091936
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396509357.23194.1532971309963724818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 993b03df987201c83a590cb620d3fdd4aec71078d358e156d4b23d91f8952c9e
Date: Fri, 20 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773965093
