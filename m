Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DAE1C862C
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756861794; cv=none; b=dSF7bHJTL3dfLR3bpggbo5ELeNq4aB9IS7Pm110HCIKXfwd5qyHu9IOowDBXXVQafO6i+le2YAB2hCWZ/hrM+c0GE80t9aQiO9FaIsHD1/CeYCh/GQlEm8VvRZLym5EeoWYqmF6MnXSjZ1WNAgi92dNkfHjP+phMSZp69m6rfQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756861794; c=relaxed/simple;
	bh=SvQQq5CWkuw8KD8DHrx1kL+P3INwAa+onPgTVFjRWO8=;
	h=To:Subject:From:Message-Id:Date; b=kQE8i2SYviWKwBFVGnD4gkrW7jqEVD4nYGHYM1SM4TZnJrlji42SCwTlm8yFhclDuscfnDXc7TSV5dQxqAQz+c2T0Zzw4yHeUZ9sQJFqmFhPvoMZlOq/ZJgeeWlMFFdEvER6PuhgSwSRjhz3rALMPb5nd0TX/Izk13xLUYmCn6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkb1ruzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkb1ruzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7870C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756861793;
	bh=SvQQq5CWkuw8KD8DHrx1kL+P3INwAa+onPgTVFjRWO8=;
	h=To:Subject:From:Date:From;
	b=fkb1ruzuG3ewI5BhFuogxy8EXG8Yl/ucVSKveWC1/R5zbo5pMUU39o/sEgybtQIwB
	 TrVSlWNdNwF+0g7yBtFh5OcevUxDJLTGHBzZ6QoFOjXPj7GZDg1tWJPyovlZymWl92
	 q8BmD6aZVN7znoGDp4XVQwDxGD77xpXlB+IG1ihId4XUp8rsRTz66rZ4HJNwdRkW7E
	 e9WZjq9+OjOP8Xbih0mZ2hvjo2ia3HgKSnKUEpBceNOGR7DpuJNrlqFGQHEwlb1L5e
	 GW0pDteAyBaPwtTYsKzO6JWqLCwxtlMgQATc2zQquqWNQU/ZBSyUZfvAkfXOqHd6zX
	 Nn5QnzNqY+Yvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94861CA1005
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686179357.14488.1756564109918959194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef80c3a2e5f902e5f1336d9987b4707e74d3c158fad57aa7e94b501fea1ded43
Date: Wed, 03 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756861793
