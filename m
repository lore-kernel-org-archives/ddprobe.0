Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46110221FB6
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759985994; cv=none; b=dQvK7MwwpVw4Mr7qunwu3rYg78iH1SZ9nPpuIcwKyE8x106krlhKS/RGiwaCDBfYYsEcpkY78VMDagYF8uWexV7KOhsxOuVk3w+2zywwuAApPoxf1DtZBgXZm+dxRFcg1ka/6lapcLdEnNbkpJbALlrTAA1OMwFrX6dArGzNUjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759985994; c=relaxed/simple;
	bh=WcvI+lEMssptZH1T573ycJ9LbxN8mjCwmKQexUOrqHo=;
	h=To:Subject:From:Message-Id:Date; b=RStFHSuDODkW39zddsVqlQ4xTHVKYuw1xzkO2DjskEKOaH/U8tY6SWrHM4786UsGObW/cz1NUYgmkStyOr7+DeO/keTDTIJ8hn9pUpdIHBkBBE+prEL8dNtvIaIr9FSQFSTQabQU1sv93hoDJQy5rVKq375pnAdif8beqErsNvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbLJCOUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbLJCOUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BC5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759985993;
	bh=WcvI+lEMssptZH1T573ycJ9LbxN8mjCwmKQexUOrqHo=;
	h=To:Subject:From:Date:From;
	b=qbLJCOUASFREjYzmUkLMAIXteviipslH5GpxEMIo2TTH6rMhtSbdjmgiymiUSIPAU
	 CR2caJRpHTC1Xr75jwJhdY7RMLzUuQOZIwoOOrvUM4B5o5RJso6JoOrScAvwCbpEdK
	 qfEnG3t/qvPJl2XW416K03i5mgw4/IkBDcn4yn/I4FVokLpBCE1PCjs5FwMrW8vY9Q
	 A862gEBrx8a2ImWXj5QVO40BCNRCb8EyGK2K/uzdM02PKrLPN3kz3QGSOaqcC9mfPQ
	 GEF9oZv2tSLOFUP77AE7rMBTmfrO6R/bSrxMFibDlnuj/RRwq/ioOJakGhONjmSpGq
	 h6k4wDotlxQbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DE2CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998599360.8719.16631402674433679643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168213d273114f20102c57e8bdbf036e58ecb5cad00bf8f0fc0a8744bb9a43ea
Date: Thu, 09 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759985993
