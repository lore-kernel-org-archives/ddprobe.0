Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC992405EB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758357594; cv=none; b=bnyGw7TCGpgiBJqnWCd/J5jxu035VvGVy2EYwtfs7mBJ4X6I0ml9kYLzsAQ/HKlqNb3jdGLVykAAZs38vCcwMk+aw2z14ztHKJOAq6stJ+rAiYU1y9Xn004j+JWSjqbk5cl8KV1aZYnSlGOGxAqvXOLgCrnG3DmWciDx2zvRtCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758357594; c=relaxed/simple;
	bh=VfPtkYe72eO0gzxVu2jGhJeGuvXQ2xAT4tbeNsRyeRo=;
	h=To:Subject:From:Message-Id:Date; b=IFqBcVEUXQ8Q9VGqndItMuILZjbbbvc3XYHrSsP2yDgzI0ZPQw+Vg5CMAyg0BaBdbplOs+6ZDdtnJwk0LYS8oucTcyrgOPS7I55+9vBjUWH2y6tdZbYy/29+Ydr/nlgZb5apgD6yjAZxsWLxOUID/tF1yQG27X/fq1Mm6KG9IXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gna9cXu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gna9cXu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEDBC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758357593;
	bh=VfPtkYe72eO0gzxVu2jGhJeGuvXQ2xAT4tbeNsRyeRo=;
	h=To:Subject:From:Date:From;
	b=Gna9cXu8nw5TFk7vEvxv2nM8TQv5n8o9gBcM/BRL3ZSozgP3EZnlG+Ydb3jE6BhR6
	 lxjmtjMDtgpnsupfuahPk18pQAor302os1GlZ617VGOud8vQAjCIJH1/yq85aD7MJ/
	 a7fF4NLnXiVZwfkJwObSemToUi4fpw+5B7Oc/2jaLQPKT73aSTnAgLi0HUdoxVH78S
	 5btrHNPYpScWytROomgsLl/6vbbbFUBi9rxAgLYxoTS2z64I6GSg6Z+vRuwMcD5mOP
	 3grJ2IshskWoFu1ShRCzwEFRddxw4BVhodQ2/1JB5RxaNTda8MPuCwJQj33b6EdBuG
	 lOo5LlRZVizSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F735CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835759358.29415.1914333175886963898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3995d6c65a9f23045e167ed52a5ab967eb490dce4106e0ed3804b0943a912168
Date: Sat, 20 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758357593
