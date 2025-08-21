Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209852FFDC0
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755772195; cv=none; b=u0tCK7g30q9IyeVE5b3G1MG9kRI1Zx5x9uAkn4xd4pRdtSlXs9zO+iAfAnkMyhvoi62Ox606UheyaTrtZacPcmcCW7zNosk/r7q8EZoR+fsHpTCfetAUu+zkPxbO6Qo00aTCzFVpAP+5V93JJlQPiUr4bUgoUdgt16YhX+NQZHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755772195; c=relaxed/simple;
	bh=TDjUwh2HxEkQqy2Y7mjqwEwyCMyhGTYl/35bZoMoErc=;
	h=To:Subject:From:Message-Id:Date; b=qCsHa0nl2d5okRulGwpPSy6Q6Cmj3lVo5cTAphKiiNR9IKDml9vT+yKKI+9lAXzeOnHSu4fwwAu828t0Ah+WACqpaOiAYsweO/B18TYDoJ1liAch1II/JCy5ZQYhTDI0ypYU4bi8iQtClSQHRROEWldC6YXHquANCZpI+IfC4fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJtshEck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJtshEck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CC4C116B1
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755772193;
	bh=TDjUwh2HxEkQqy2Y7mjqwEwyCMyhGTYl/35bZoMoErc=;
	h=To:Subject:From:Date:From;
	b=eJtshEckBxb81MEQjjcDLeuDYIjgCQGeFP1WCCKMJB9u+ooLd5vbDZ4V9ykIa17h2
	 42qJP2kTgXNnxH+Iw7gpg8Yk/HSxDwL9SUcrNUQVkvpclW8FjfO+Qm/wXHkjgLekiB
	 TgzSOMESm0Y1//1ZpIJ3RzAyeEGSSbf410Z3M2Q+X4MDOpLK12LQ/rcRaKqxxDe3kJ
	 dQMryoElGJY6wjUaQF9IAu0cfKEFZUqe/zne1byPDht8digTy1fPjmXy5mVDywPKPG
	 nTlfDV0djNFdyUePx8v3G6FQ1zb1Y2BiC3KPJQpLkkYxr/mbgLwBs2tDUH6dlF5uFy
	 LQDG40sj7CzPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDD1CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577219358.23410.7752228447013573797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e0fdff37eadab4d38b4db9b474bc833f4f1f105c2e35670648d37b0acc2260
Date: Thu, 21 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755772193
