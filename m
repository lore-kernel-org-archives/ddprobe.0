Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3110C2E0B58
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778706634; cv=none; b=JBbXYQLQOfE+UmBKJigmPLQf772AovEmsxfH7kehJ2kMxO1ZNK0rvxqeGMB3IQTt8NHHYVvR1f23TOvOZjr0vKOu06U7bSIM8FpDJkqd7K42i6t/kuqSaLdoxhm3OPmwGVX5SIKoyRM+MVeemFh9KTxOwACFpYIoATfhd8CUjZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778706634; c=relaxed/simple;
	bh=F1hLP5ddMYpbY0jE7SV0jUaNVUfFPsmoFTD6NtfFFDk=;
	h=To:Subject:From:Message-Id:Date; b=gfSTxIgSwwifftKspWvz6hJ9gRn5dEU81AtyiZ8vmND5ey4Jx5h7KutZ/mU98u4rucsucXqynMVRn0U2nPq3r3xQlDFd0LyR7Ir5OxtNQsoMN72N8MDOUHRZ8BF5RYPx0tZYA+Rn17qKefmbsUuO+8p44Sat6CceCBJ2QcItq9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvrVpMaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvrVpMaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B02C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778706633;
	bh=F1hLP5ddMYpbY0jE7SV0jUaNVUfFPsmoFTD6NtfFFDk=;
	h=To:Subject:From:Date:From;
	b=IvrVpMaR402q5BExD7wBfcdIxbx1xqNXFXNLnbPNlxzZskLw7fDWicUnOpgFgh1tN
	 FX5NUmTMZnfzWWCSnhZzg3Hfo4YpT67YZk56ItCTGuNMdX3IamfGhd4i77xbTF1L/n
	 6dwUyYVuiDAfTcJkSH/1vLjHAPFzfSjxOmtD+ZtAmLfYZtp7Z4OGhBsO/e5PNEHyUa
	 w8t2hwcKw05MPhtabPw2PnN1RdSaTA3bnrkP9Baja3+gntbyFbkhdB1zjAPtTBUAJO
	 2OL84OS4zmMd6EzHbCTpTU2wV/nDihmEOVf9lk5vGXUjjazvR/WUu0bBezXZRhz22f
	 8OmcCZyJEWhZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4339CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870663372.9968.3464312316645819574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29bed711ba7fb8205029b6555365af68078a0662ad2682d2862a2bac6e64bfb7
Date: Wed, 13 May 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778706633
