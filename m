Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352A42820AC
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779240634; cv=none; b=EPtfgX4iBmTDTVJonWT3YpComQjjFU42yuoUB6iEDcB1vXVPrRQUMzlIFo1p4HEwrig1wKeo90/CwnJL+zWp32qzvpmYlOJvnCZ+1DNatFkBdEP5eH3WLMpDPPiGSstuTlkHYFlBwJ2ShPxr4KN+qW9P6zOHfQuD24uWk2nFkGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779240634; c=relaxed/simple;
	bh=AHuAGFuzMofOlGUu1WzUBxNgF18UKEN4q/ycr5XMaMk=;
	h=To:Subject:From:Message-Id:Date; b=hBdQYu+CvvWNC7wmTKrJ5bPzPas8IxKnScPp50i6l7s41d1MQ3y0AfB6W+jVm3web6JlYiEnNBMJrCJmJDN5s3vl4BOjUfEaP8d+FxBXu4dK/f5QKgBecRxZBYVgyn9cTEGe+WnUQlaZzaVDUaiADoKLX7dZeo9VZ1PN75/4ad8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaFYrF8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaFYrF8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79A3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779240633;
	bh=AHuAGFuzMofOlGUu1WzUBxNgF18UKEN4q/ycr5XMaMk=;
	h=To:Subject:From:Date:From;
	b=VaFYrF8YQmLMpRUgjXW5YFQLLKJ3dZ7lAg1UpgybaOZW5zjcNgZ4AlXPQTozI/mlH
	 B1KrGJdbDCKMI6RM93XT7GU/Vri2JSxIdS0JEm+qJSI8k57oNnT095p+XJHoMmraWU
	 efYozbO7HQ5aUKSOiEdUoiG/lNVsjzGgrxLdWFV4vFziS0ZPyc3Dv5pliYW6bHiXLZ
	 w7Ww2t0lVYSfi1hwiSXofoGc9CIYxZEHsoSsWAQ/ctgZUqlnzjyfnEhzIXCYNptuqy
	 Uy1SdaUGAvSrHMmTMUxcnjNtEVsFVABXkyOlyzO0wBc+8iDEtNk9w5MrTStz4jkk8n
	 iR86JTD9+FDaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6DECD4F5B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924063368.3626.16383754819774028057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859552664f6b377a334eb9c5de351b92e4c598e8f0b77ea91264ed7c4417ac89
Date: Wed, 20 May 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779240633
