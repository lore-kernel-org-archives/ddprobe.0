Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505EF41A503
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790065234; cv=none; b=oDE9o1FA+ilLt+9CzBWUarUPDDAGEU4p+7eYiaviX6kt9r19A1Hvumd2QoBOs0gnFeAb21zuziiMp20GnVhmzEZElqGQoIQfSUkQS5fI/kE8oEXj3b73ogY21VzOO46P6KKtWxZCJ36J69grtd1E0Vg4aYoCgCSA2B0Ldv4dKXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790065234; c=relaxed/simple;
	bh=mBRKv1sDXX0nCQiUJlqPsVR0mZqdJANcbd80SCD/yKg=;
	h=To:Subject:From:Message-Id:Date; b=avbsk7kc8EPuXPYf2RzIwg398+tyxPoKNNDR0kkgRkTVq6686M1kG4kxTRP+FLIkggmJlzKzGN5l6q3xLQWEYLXWs05Ww8jYmTeVsN2sdDoDYiZEYeUr20vpyAbMtR3HR9P6MluHe5n2/2LL9d9rtmub7nEGT5+DwSKjISiOh4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpPiNf4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpPiNf4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF26C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790065233;
	bh=mBRKv1sDXX0nCQiUJlqPsVR0mZqdJANcbd80SCD/yKg=;
	h=To:Subject:From:Date:From;
	b=jpPiNf4eqbZ+0MaNy8I/k8tQtKbkAIIZZuOKs4RbMcPxrYWdzTvVV7byF4SiZo8MS
	 5bxoudDZA9qn0GXDyRsOAFD7TWYGoQa1X6bZ8LKgF5g6xZvSrxPgA+iZvMY4bU98TP
	 wN/nxHJq9w57LSfnQqfW7HnpaaggjhW17i+VLZUM/WqBqvrVBLST19hwJJw+VH8BGa
	 LaRnIKURbKEI5peRBYZ3TPqqR/natLjrmnp6guAOYsW5u0IcO+m396pucpvnwzTGTZ
	 B9XOqu+FHU8Y6Zf6yrAsxXXESRjTgeeKYZpzGWnJ3AwO0s9xlHUy/V6QIi6pzDOYic
	 JDRR/QMDRShXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB45EC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006523369.28468.14468080755066831014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f63607f511579018cf4e66c3ff9bcc93af5ebc9ff07ed3ee61719c776328aae
Date: Tue, 22 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790065233
