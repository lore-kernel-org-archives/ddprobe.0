Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254F51C84AB
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762135794; cv=none; b=M3RFzM9f0gAex7XWs8VZiQsqt3EcuPThyRAhvyvydcJR4chlDfl7Kt46wta+aV9GYEsenvoue/gzXFkn1PGkZJ7V1jYn03ClfUSFo7/1Rh11bKqxJnExC+FxWUg9QfjY8BSMu1VKCcgwx0LHXq9iHX3FtVFcnRsBHXKdsQPtqpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762135794; c=relaxed/simple;
	bh=GLqLzmqDWPZGVzVe2E9yRVuEg4Dz57ZiMJLk2yAbpuI=;
	h=To:Subject:From:Message-Id:Date; b=kUnc7YGZvTyKpofYCbCS1ww4p/FtZ7uV2E0Aq1sRJ/Y0noaAWb/mi5yC8Kg05Z4tIiROGVqYq+OxW85oVA7/RqF35BV4x6/BVmrawIbW50BTYMgqlsiIxgxviXbhL3ywmPTNkNv5n5luR2++jr5khudXNKmlDe2vqByAadri5o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXsJTgq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXsJTgq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE8DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762135793;
	bh=GLqLzmqDWPZGVzVe2E9yRVuEg4Dz57ZiMJLk2yAbpuI=;
	h=To:Subject:From:Date:From;
	b=JXsJTgq2MMpv+MvCYbMB/BmPLe0fwkXjDQVMEM/B1U4LWpfBecOYm1Sqn8cj85qI+
	 3+mvBom+IXx/kCDgLiam5v/mkyRemim05wg65hv7a1HRagsb59UB3BboxM2MkXayP6
	 TLZPq6f4uxJ5vho8VVKGZs+GpN00Zj6qHIfAQp/q/cg+rRBzLmKwqX+bQ2KrDdW3cZ
	 v3tZo424rDQZ+TSwDK/KJSvNa0oW7/Fba8F7tb1u2h7Mm4Mzyl4kZh3RfcKp1UcSDj
	 +C5zrEYGiKTNB2RdLjzlKN3IHAT/6NCqFEqkb3uGq57VjzO5niH30s48+OPQDxOClT
	 tTZvt1igAEGxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D31DCCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213579361.20228.8953107009021780148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121459b954bde4337d92affd05bd25b77fc9be3fd5465a264da87e43fb546f70
Date: Mon, 03 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762135793
