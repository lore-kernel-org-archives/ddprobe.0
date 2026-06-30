Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9D534CFC6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782839314; cv=none; b=CQVeE0DCFaS6EVfqvtxhCiWqFqCNZa//kAWMdj6O87d1KMjgnpeBMGlpkgUv6vNGIl0rWPYIYjekWhjBNs+JLD8lNRrFGW2+lEfLN8zPay19+ePdSCCd8/reUBEdsDEUwdu8F+R4OzOMHy8iGy0FT0eMs7Dp5v5ApoABPg7HIto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782839314; c=relaxed/simple;
	bh=ydCl5dkCeu60a4hQK/AY0oFe2CcjfrCEqIfXwStHDlY=;
	h=To:Subject:From:Message-Id:Date; b=KsxaDs9mFndSOrbV7dHP2n8POrqq78r1K4KUDpqC2lYxQY/EhGlT4yxQH57SnZxXejZmF87Zd8QDcYrFT+D8Y4JvxlwCA7r7usx0JeLg/pIfAtmbHr+mGK5rawpO6xlxE4HZpSAGFJYT2qJcxFlGwDYYteFoYJXJyeeMHVk9LAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pk/rh+7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pk/rh+7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA794C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782839313;
	bh=ydCl5dkCeu60a4hQK/AY0oFe2CcjfrCEqIfXwStHDlY=;
	h=To:Subject:From:Date:From;
	b=pk/rh+7zS1hQrWR7ZU5ih7G+S1ITnMnNomrDU6rCJ46t0kB6wYfNgcy4UlhO/UEDY
	 g38TFu/SNLXAk23IZ+PTm++FHo2KC5n7rZqITXbt8ktbr8peGeEjp+QZdh1HkM5Gmk
	 NrsdV56wu6vxddMQ9KszkThO4uobtUC0SSEBc+flSm/G8Dir2YJd6AQor8LWCj3z+J
	 1Q5zAg3cF8Dssnu/SqwT58M+NEb1fu4dODDPAwxyLXl5XCKXTGJl8Z9ZrLnbr/EgnI
	 L6GABzwhMf9XHIVPYK1c1kP5HGCWk816hTel8nrmtLIj0tbyJS1oJjx1HIdcjKJApf
	 rTXOVX2b92tyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC4DC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283931370.29561.4260312938095682829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a357175ef036ec3f391d939c43a8ef3650dbfa66252d49bf33e39f02ad29cec
Date: Tue, 30 Jun 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782839313
