Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6023F13D51E
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788060634; cv=none; b=kZ77A7cuh+XUOf1bioTfYCYVnro3hWcwmKHWlO9uXxJjCKj3IxBqj6UrL1dcTXophIV3o9oDMp9btNBHzokFxcUhrCRjA7meCjxdEYYPO3VQ5+mSzKk3lqs2OFzgYNjFuHx9kjF3Ec2eBENrc4cIUukvm+T6Vxy16GTO29sa8TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788060634; c=relaxed/simple;
	bh=kaqA7aOfctpM7u6bCv9STOPyAcIb9fzfau821GFpek8=;
	h=To:Subject:From:Message-Id:Date; b=FpJlAAR57WQmsbVULCxJAbIAmnsC5e/xdJTRkJEhCVueJmfp7icLunFFsiDOrF+VcKREwZfNbwn8XUO8LMTDKgin/Y1AKikh3dECJEp96+6ZdmSMBwt5pGLi+uWn3K9ZL6drJlX1gQuCQ+arOnp/TTq7wIY2tfEtJW3YZKkp1WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnLLTwAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnLLTwAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BE1C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788060633;
	bh=kaqA7aOfctpM7u6bCv9STOPyAcIb9fzfau821GFpek8=;
	h=To:Subject:From:Date:From;
	b=LnLLTwAZfSzDZ1rn+zMpw9KWLZnXJmYk+FHKv2tSj2nj0WkVLCcLJqqYDkup6cXdu
	 4K7TIZjTqm+3yXOYoGsCfd+njO97xUJbsB3vpo5kQBR2yqNuPNHfkosgDDSXkIFp/f
	 6pEdAqRDxE5rPC6ERlIqpLeNoxLKd+EddLsNQFajtqR3Q7HBkHtDoVUm4NPawiOOtq
	 ly+Yr4o38sUaplOlkDZDr+kOFiQ9zJG9XgQA6rlyWtb656pdcA6qAeWBxdPZKbVB//
	 JZBRSU+cPWl87pzOY3ASW6W7hnxy0vh4ozdwNCswyj7zoAp0emw4IhjHCe+Fw9RpgJ
	 XxFdx0Tg++cqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2EFC61DD6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806063368.29517.11129905994154149799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201cff38bbdc0a11ffcabf6f34e8cc81ba0a3d7e16b0febbf52114cd75b8b785
Date: Sun, 30 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788060633
