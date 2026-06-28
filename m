Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D3E1DE8BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782618514; cv=none; b=h5R2b5kae5ZgL9yPW8RDnn/Ij7WuMnWYdRL7ikZh8Ahzqk2sICAXvj/x4StLivlJKAZij8w3FgbnwQJmP66XeC44AV1uLGox2j0QotRe6UmYwiSh+yRCLQ7rIUoWadSlTyCfer9FqT1YVQ3lLU1tM+feSiVWIK1tEF1sUKf1xoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782618514; c=relaxed/simple;
	bh=O6obepDmV3EsGXQu+Syq4Iqgy+zt9h3EsWlBbO9qSiQ=;
	h=To:Subject:From:Message-Id:Date; b=MhikPzMffrD8sqjMne8IXBLqYV9WcMq18fynTspYoF+ZEUl8DdhZiYjexBQ3EGBIV4Z3MewKNz1Lg5u5WdFTHe0HFjn91zBC8t5sXipOiRxp/6y23pWYeJjD08Ja04tfiiwfFMunA4A99n/kr0V/bef+lHjQEGscaQo5P3/DoNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvC2l9QE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvC2l9QE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88F9C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782618513;
	bh=O6obepDmV3EsGXQu+Syq4Iqgy+zt9h3EsWlBbO9qSiQ=;
	h=To:Subject:From:Date:From;
	b=DvC2l9QE/fcYLA+8o0QIsNXubY4nSnUCZ0xAA7pBj47XQUfyH3S0xKKQjDjyFgiD7
	 b/yUhj/plIjXXjkzX5+iXlX92rHe6079vz7cuDJiZYUIqDHVye9Gs9mwSboyKmnIFY
	 cZNjEMQ1hwC5HzM2jsfzcph5mKboSGtTDsjA72h3fnkC5AkK8TkjOqYEPnJ2QFuSx9
	 UCHjOFHf3fUSLme3/t3aNo3GkFPkl8LfCJmJU+PN9xOnajhvdNmk9lmNfBw6GQfQVd
	 XqC7J7d37L+KJpCu5xhMdE9nkJj3rky97xrZnbLIXDXE1EplQ5wA9zHOsucNqsXkTr
	 vmgrkywh9/7yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2109C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261851369.28748.3502956803513015046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 309537a2e01b0d7da0873696c533926c15c9715e7b3d1a272cda651f7da89b53
Date: Sun, 28 Jun 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782618513
