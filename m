Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DD01F5858
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776733054; cv=none; b=mTZpyqkVC+m+L/zuTccyRdEaWLY2bt+zxNTEKpFbpUOdn9okd9Y/j94ba5RPJYm3yRvWPWvnrSa6TMw8NyZaa531uvCXyIY67kYlT6aZMA8t9pqIef/O+YLhLJBoNJKQKgxOZrUoNhG/VU1UQBs9QBO7QLzXWB/kTfES1AQrvV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776733054; c=relaxed/simple;
	bh=jGrg2ZZB6hvwBz0phnXdeV210Qb6QD/o33VmGvxKYtw=;
	h=To:Subject:From:Message-Id:Date; b=dCKl9UZkIYWpJsSUGkbRlYJ74Hk55wGKaXByuUA/WUfQuibQh5WtCqW7pfw+NJWeg6duVCUEMxlzi4sAI4N8M0n96+s9PRocUoyI8Y9HOSXiTtTYU/1RD7oUpu/G+bEDal+I/s1rtQJCVtprGGZzISdtPCbZp7qUCNl0HF6z/Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tE3EkRkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tE3EkRkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E45C19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776733053;
	bh=jGrg2ZZB6hvwBz0phnXdeV210Qb6QD/o33VmGvxKYtw=;
	h=To:Subject:From:Date:From;
	b=tE3EkRkQBQRaaO+01gOpIu023QLGPBuzl21nH6LSP9lVpHbGIb7zLrAUvnYqkpDW+
	 DjWxM5zPI8Fz5KkR6EGTT3U2joHqPfURgLOsaA5krGNgPr2ebr/dNKusUV49OOqBiE
	 ibbqCGPjqJflPGv9EVjuV3q7TX4FWDqwViM7xRTka/qFN8mTw04Np+hc32gx6Swgqf
	 eTFCgwcSkEptHxDBvrCkDKDslbwzGhOvjSCPgmGHiRiggApu26v5g4NOPG8scBOiml
	 hO+O9l/LaoF+li8cTf1CK41sXrzjvBvLHnFnXmX8oCwRCcYpFqk0hnt6Wa15vKyCRg
	 y3otyVEjSZQBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B8AF5A8CA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673305368.24714.13781675355091027016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0095ee29f8cb24ebd813ebe3b9a0eb01ae5abd7edd56a6b1bf6fb9fe6954f5d
Date: Tue, 21 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776733053
