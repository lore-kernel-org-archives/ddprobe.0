Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4E932FA1B
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785535234; cv=none; b=cAKjSaZ4cxUtCLSegjSemaLznNZn6sB6jVvHk/6t0aO8l8bzA2DLUA0gP7R6ux9Hq+zAU1rW9VHdHcEAzfxVXGPwEZxWZxRoj76OOe9ToadI70NsJ7kdqgzOiCX4zL50dcBkHcERZhgAc994NefILRffDDx2kEEGxXcPj7/VT7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785535234; c=relaxed/simple;
	bh=CU5mbsUi+ByuPZ36TBzPU+4kkyEfE5Imq2e3xbRstUw=;
	h=To:Subject:From:Message-Id:Date; b=KtPmQLiVCTIyMQBBVo8Ti8yQj7R/yXZEbymvg0uneZ2MEvDo6EdhuAqol08VtE6Gt8BQkbfH4TNm6OHY3/azXRG7R+tZMG8wczN2usdMtNqcnZkZG6K22nXbvYDkQZICpntXihP8DC6z1edbcliMOyk+utTg00LmYpPjXtFfzUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQu/BnIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQu/BnIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D25C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785535233;
	bh=CU5mbsUi+ByuPZ36TBzPU+4kkyEfE5Imq2e3xbRstUw=;
	h=To:Subject:From:Date:From;
	b=XQu/BnIYDv/g8abHMmXkgukhr8PZhQ+iNAStybdjMmEAqfyRThUI4wMGVpj8wfJ+w
	 RQb/PUpLCOZHDJ5SyySYEDYiB5b5znVRmWjJ7rCSCZwlKFiRzHcqxBmek/uT6SriwO
	 vTvBoFRGBFnKbp6yBFa58fCgFh5zUrsL9zAa2dLEzjbV84AuV2HsLq53GNyumua7ib
	 uizz8d6+k7ojLZ3HOKLT1SRR4x3aBqnTYXq0uOpgISv1dTc4WQzAkMk9IgfqvKbmFF
	 O5DO6crA2+C35xqZ9z3P9y9o3ASU8+47EOPxZBJiad+Zkk8leFmI7G5c7iqB4J5zFH
	 7lfH8n++Q1RoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8D7C55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553523368.9595.5447558289685112121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8570e2e7e22713bc1cc8fbcb3606ed4ae1540a1b2f9ab8a15d8fd95c16a2269b
Date: Fri, 31 Jul 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785535233
