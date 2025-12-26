Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CCE2AF1D
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766758434; cv=none; b=ZFKos2GewMYHj5orTHsmkJxFSc8KIxFP3wtKv3OCo2cBKMr/lX/2wh4u6tbK3Fe9jtBlnNIxwnBZd0alUDXJ6usuEBRWDpZprc8VAvH2FXNGEavwWPUi7bIttTaxLxEPfPUA5WNGv5OmBPiA3uS2FOnCqy33LAekcF0FbRai/2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766758434; c=relaxed/simple;
	bh=QkRZO1aDGp0G4T9o3bsK2JjtRnTuAUMgQikNQBdKHJU=;
	h=To:Subject:From:Message-Id:Date; b=PZ2PewymIDWKGo++JQNj2oaQIxWC71ZUk7YP11GFmux1pAhndHCycyks3ViH8LFdsrz3HRU+u3pvvJiOr6hqTtYEMG0sIyi60omENrErXmfExhJi5B093lfpX/OXIOKH6N0pxLmT8/ftf1YY/zGN8Ht+Cz9cWJALWyH1Sd7ITaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khd3kunu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khd3kunu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A979FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766758433;
	bh=QkRZO1aDGp0G4T9o3bsK2JjtRnTuAUMgQikNQBdKHJU=;
	h=To:Subject:From:Date:From;
	b=khd3kunuFP2LmeiDwce6AH0g4jnwegmoOqMfHHmw/UuIT/Dt5rAx2FzC3NlexiwQy
	 rWBa2zr8u2jTGV/RGAELsk88KwZvu7NUvslyhuEh/6kd7Cl23aHEDullz+lQVy4/st
	 LjRoclOeWcnuP2gVLaI/FVt4YdYi6ne4UNKLxnWfz8we32cdJknKaS1fvwXOclpxs7
	 PY3BY3xE9N9LN0v1QZhwRAwamNMP1775KunemOyDqYYktVNJGiq8+gtl0d2L8oVHim
	 IS2EtwzLxbfEdRzDCX+xX5FGd/6tr8SDCS1bD7kWu9Zndu08VSX5TP8bMUo9e0+zU5
	 dE6u+8YLoXKXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9797BE8FDA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675843358.666.16350529940649431574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3419d1e77bf87e417a7dea98716e24b8fbb80c40d67c82718fe441a2fff8ed61
Date: Fri, 26 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766758433
