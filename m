Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7519B7494
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716587003; cv=none; b=Bnsk1uw0xKFuWUFzuvygKFlZpBHXBnHxfVyMOFeaQgLJ8P9DhBxUI7wO0TY1wzAQaJinG7S/hAAXpzW1TG9XbIQixiO/s95Sv9YGcs28OUEt1GXNH67oV3XgWfJoV6rusMhxQt8eX6924A/6LKII3C9iLCCIBKmMnEJ9FAJJAhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716587003; c=relaxed/simple;
	bh=HKUXO0TlgECqFWdUW7SxO6AY4KCimsWE+bSwBQ0ghL4=;
	h=To:Subject:From:Message-Id:Date; b=SqAedA05lyauKUhtVWZ3OC9f53CMpaZhgyCP7P8QDqqP3b21QVZs3yllmWM+DtSLmJzGlIgRnWJFfOO0idYs/fkK+lBfVa2qL9V/oyxZ596YrkskW7Pcdvdydca+1ulL/lwchkVupE7UMK/Y1PyvKk7y3c9gQdxAwLlALdLEZ6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/zV3ay3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/zV3ay3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9231C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716587002;
	bh=HKUXO0TlgECqFWdUW7SxO6AY4KCimsWE+bSwBQ0ghL4=;
	h=To:Subject:From:Date:From;
	b=s/zV3ay3EiLTifNCNZrM1zVfNtKJD5gbBe2TtB/YjfWzGYqtWyXiu00GFrjtKtP59
	 1sQDPKmh+HUjUINeD2BQ6ooLtFcNT9VYWglPjA/1a8NMMLPL9bNt/CLbQc3boqzA4o
	 Cdjj8YlY8MV7++NazOPL1pm+OWxOAVYsUg5+2ZaYeVg9XvB5FW9pEmpDDUkJ3+nrAB
	 +XxCgSZTY2PEL03eD/fn5BiTWsLxBbAYzq0ii0IrA8CNM5lDfOa1ZQqElKdYq9fdXw
	 HUVnU6H64XDZIOCWYWVy26Xoel5IkwBzylFaDSRz+J1Cj7a/QHl9c+9B+e6JQGlVlz
	 q4Zq+K+XX+jWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C576DC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171658700279.17800.7532135165367019545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc7c5efda85c3640544301a3ae1599bca2f70dbc3e96863126d6302d4bd79f2
Date: Fri, 24 May 2024 21:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716587002
