Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60120146D47
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714136543; cv=none; b=RZUKMYvLSR3xzu+zWDJANYb4/mZq4edhe/XD8aYRY/MkxRh40y6UUPegrvPfGehQ94imTJ6frcou21gK3FADKkIwD3OGOnposNxQp/BzQ9VNGadSRG9Q95cehAAyLsIpz6rq+XpdF5kMmL/MyrQwkXZJt8AuR/LEucRvDG/VY5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714136543; c=relaxed/simple;
	bh=lasYhZGJDm0ijSbhpIYbudct6ABpqa2gASmb6n++jGA=;
	h=To:Subject:From:Message-Id:Date; b=qRSvwo8zRKQQ1LpCfsZL2PrRK0LUhNg8h4fW1q46zBMV6I9TUfF3t37W141h9X5RtmDxPOJx4choOaUDlhSTuPItJ4nEvDsjhvrcZBtiXXX8AZkNwYhRKnE4YDWKDgl46KdvabPrgoLhVv22LcY3YBl4X9Y9kWg7xZ+OOn1Fwio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYcsu9R2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYcsu9R2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3279C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714136542;
	bh=lasYhZGJDm0ijSbhpIYbudct6ABpqa2gASmb6n++jGA=;
	h=To:Subject:From:Date:From;
	b=IYcsu9R2Lld6GSbKyzHUfzcOct+YGYbDs+FndS3RDM/kgzwDOauwLgPQCkWiVFymW
	 7zxEViBYpsv/FtXI1wRa8PQFKk3YTcwNrttyfKMdeiNBFN/0H2TqvdyJhA+62BLC3S
	 eSbhCaKprltqT7W9+scxzE4nwxx98CUHHJWYB731WTfqfyf+1TxWb8DaA4mpAda40L
	 fYUfaMkbpnPXgvflrJk+5D6Qbt3at29VQPsWmF+jfmdgk1oOPwcDDixUFluINCtEVd
	 9yQ7d2lgTP1GDW+zSV1uKU7A58wClmFhBLL982UuAFyzyszKmaYsYIHB0FsUbgPhYN
	 9JCphoaZCtQwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C248FC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171413654278.28716.6955501003295277056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cee9964f57181b225cc789a5cb200c43021bb79f90c042ac2f36b60e090478c
Date: Fri, 26 Apr 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714136542
