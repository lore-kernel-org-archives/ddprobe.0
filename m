Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572D61946BC
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742854194; cv=none; b=WHAaLzvNQirKGtjzQoBpkPEBE6z1Q39DVIwNBIz7xPwVTv93wVMqS2QjkjAhoI+dzB6Cerlqgd2j5wNYunuLNOsfF9dA9+q4ZayPbq2UYhWmwvNRajPTv5uu2LlP5BKDmjrsHr7HGRl9dhWTWryPhBxnVc/WN2jhk74IEdFSw8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742854194; c=relaxed/simple;
	bh=P6U0k8WQ1lBosSVOuL9Don/e+9OZxxzM4vHwJMJ3dOE=;
	h=To:Subject:From:Message-Id:Date; b=huCaadQYr1UKVkj6AMdLqG1y9Q6LZFGLXPTAJPqrfwmv9GNKDVnRdoEjZpalwmlbGw7IPGWfouLVG3QGQOoeqr3GEH9XaxLpOAPLzuC2Ob+C0xtlTG4X+cIH/Z1zJcKaqsFFwvGgme5FV0FvdOCLgXEpvwBQ2PXzZaOaxLaSMj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqvx1XzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqvx1XzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30DFC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742854193;
	bh=P6U0k8WQ1lBosSVOuL9Don/e+9OZxxzM4vHwJMJ3dOE=;
	h=To:Subject:From:Date:From;
	b=nqvx1XzPf+osuqHNzCNSdVvwVZZPGHx7bTOlmZ/fYgEqiqRVqR9uSDms2GHteR7QB
	 thA+20dK2x4Z0dDmA/eBoMjUsZrGZCJR2kKHJHkFrYu2Ry50DUwVgBXg0F6l2f44eu
	 +EH4qqtAAPaMMUgesHY1j0n2Z0o1Xc4hcIy6GLdCxhlkgwjD/3uWCHJ5sHLExUznj9
	 wly6r9UWQYvwgADF3gIEaXfbSJVGuspNdjeX8vIEnkSgYgCGBus6pw/B5SnCST/00e
	 3OHOtWjw3MtjBYiID996+HTN7fDBho7zOdR9WUEVCg3cPik4xLhHhGtJaqOk00fEk4
	 Iw0Fb5XPZgmew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95727C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174285419360.17860.10175594989151996508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed15f02c88a64248e51f4b86a62870626861b51c66e4ae394d1e79c31647528
Date: Mon, 24 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742854193
