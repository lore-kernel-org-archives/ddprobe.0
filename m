Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEAF3B186
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760300994; cv=none; b=eq8Np5qwnvlJjnVC+KHMpCelR9ZJ+jrW7THM2u7EUUKnnmxlEJJBWCAN9uBqx6jm4MyxUsjpFTPJgXIXEwuLLdb0CJCsVoOK2BnA1r4j2YCmEjEHOoVwgAsbQyaKGO1N65kjc9EYhl+AXU4qapQtLoKzTd052cbt3Ny63khmYP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760300994; c=relaxed/simple;
	bh=oiCFocpO8FVi1BG0wiwbyNc1mOX5si4kBGBAjPxUdWo=;
	h=To:Subject:From:Message-Id:Date; b=X+iiGdJda6pc84BkRvYU6ZHM23rO/F7ELgO/PofNzlaBAgeFUdVmyyR+kgMbA+zdCQj1wR0foxZLBXSlSchQZbe4obRXatWVKekIBKqEe6qHPPK3tIo7WtbDYU69CygKbXgAJxGi7nx5PifuQDOV2+sGkYqUCZ/Et+ZJaf5KNts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsQHn3BJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsQHn3BJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFA0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760300993;
	bh=oiCFocpO8FVi1BG0wiwbyNc1mOX5si4kBGBAjPxUdWo=;
	h=To:Subject:From:Date:From;
	b=OsQHn3BJTIaM8dgh9hmvneLGWkCWnxrd/XElARO7rJFFmynqLQ8bfjBvj0w9F3BB6
	 f0jN5qjf10MaE8ZwpTV2nuwzPhOlbPukrR53/AyeXGTkGvK1NsYMEhznSOg3U+j5Ec
	 1oqqyfDe8G544lwuckG4mi1ExrSkGNCdhR4mYGOS6QXA0XHtpAerpJbGvvwMCGRW3D
	 DKZd9Eah+MCf92cauG2ib27P4HM3shwV1dt6jVzhuH7HtMREm6gQUi7C4TZU+gamo4
	 fZixEoUiaKxK99qF5UDRBS8aFDAvzARK6Z1xxdLj3sMgzw5b95mwQ6z3+2KmK/yS6c
	 T8kfHo+tfvxHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E97ACCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030099357.11328.12220893687499903494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2071999285e7a93deff6c1283236e20a9df8af5a5f44d8e4020d529e87a25f72
Date: Sun, 12 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760300993
