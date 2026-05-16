Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07572346791
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778910635; cv=none; b=NsWWeNJNyyRc4u0oLg5sqOAp7lJDvHwlc0wMrCNQCZWR81d6SsKsb+jbu0CAq0U8JnxBbFC+xByltdU5Igyk9bstflPW84gyBisMexkmKBR0HhTyZh5C8UpW0pyp9okvDQmArepqpOwifME0sBrmehePBAgWw1R4Fj0V6OkTqeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778910635; c=relaxed/simple;
	bh=PYvYfSkChi+zaviow+ECqW7o3UynLHrPX1Ysh3jDkIw=;
	h=To:Subject:From:Message-Id:Date; b=PAOwNvOaF97Hq+qBXEg/YkGTYxHOWiy00TCjYLUSHhCjoOQeOn/Jl9YnZE1ajkkl3Y5q0G2hi/TmzoBcfxDn/TfDswcoWl3qdA288g/NBm+SltCJpiitRCgfxX6XNlKHsxHcEc7M29BhuGvpL6WvRYvIRMKWBE5GQ4bY3jBx5Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KADn+dmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KADn+dmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36C0C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778910633;
	bh=PYvYfSkChi+zaviow+ECqW7o3UynLHrPX1Ysh3jDkIw=;
	h=To:Subject:From:Date:From;
	b=KADn+dmmirGfIdAm+d/zuadcZM+yozPDUqX1xOvB4+jQ4MYNI/civSVLC/IpkB5JI
	 UMdozMK9ssR69BVJZnGb1OFSg+eLtjnM+17nqO54GSCKG06TGc0RaxmNL3kv9Qch5s
	 S54FdKlSRFn898/dZsL/HkbmWRIOJtKODy01z2GY3vGgvAvT6syw85l96ahyKwlY21
	 uPxCd/cmcDTx2NvA3T6+56+0yXxAXgIl3bV5oZ8bjJo/GvVAi0EKyBai3iTDMqlZyc
	 xV88CjArWAjDiMxFiVhOXyi4xbf6XL8gFGXgk6jYnB5dyI/OZKxfZupOnj/NRtZqsH
	 CejjlHgnzTJ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3B2CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891063370.16598.10813150105096596626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad925ae703a5a64319660c9d5f925dc5efab98aa985e0a2d59af041b0ac076dc
Date: Sat, 16 May 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778910633
