Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E154023F422
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769621634; cv=none; b=kCX6grD8j2Sgq59VXs46Nufs4a3acjuww9/ahdFBt2yffdcSl1qYEjViSGsdlCf7+sQA0I2zoAfFawLraTbdqO6W5IkJbPQ+sJVQe2v8GFCZoegm+LcK6Jj6kqUr1xdDJyP8//aTy0U5S75NdRhWtQFUnBy+g92zoP/bn0dp+Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769621634; c=relaxed/simple;
	bh=3fVm/3FV/9WNGWjykUIS9gEksAAgDTwBbsc7TlgbD6I=;
	h=To:Subject:From:Message-Id:Date; b=d5Bfb8ZaVyY4aLHmeTdSUJoMHi422oiHaoEpfZpOUEgRKu+ycTzfAjmBwu7BpL+6IwhO1btZQ9yfyWlKO+AFVHTYfW8FcQPUzqEDcUpoFVpwNVjYwDnzaM4Qq7l4ZGczdIr891g1IcVSjnzm82pyJwAFTuDMh4ttkxS/Q0kPhVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HS054Okw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HS054Okw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7E2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769621633;
	bh=3fVm/3FV/9WNGWjykUIS9gEksAAgDTwBbsc7TlgbD6I=;
	h=To:Subject:From:Date:From;
	b=HS054Okwc+k2u/M+yVNDn8qsOu0QzWOwoH3S1RFJvruc0nPbVwcJHe321Ms///Yjq
	 7EAmRJEwBkeQTqPOTU6rnenPOkerYqS3F3bBynuD008Mg8/qfXVCggbym0heFM37+j
	 yr4g8uF+sUDP7nITAzW3EZLDJyWKULMeyXYKVdzAdRmxhzw9P4oVkCoCcqNyQuAcjR
	 kbElMgwtyyN+8Pgs8CsqaWZDEslUWZ1ufubMB6KCMmZnd1fCAVeFbpX5aMd72t7kwq
	 vBAdpiE/PvtZOHzQNyJYmMo1ihusrIZt8MRHQfFw0ITZ28qftSOsAW+AOUbpHHX6ro
	 S99uJ+aSF2faQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B84D46BE1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962163358.2057.16066517299017860073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db59d5464a1160b9d634feb3fce0f7470aa6ff4ab1fbd98600bb0c9dce26149f
Date: Wed, 28 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769621633
