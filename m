Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2331BC9E2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756889994; cv=none; b=i41ff10tJjV6en1BuOw9OG4TMRC6HU42xfMPPu88kM1T5yW1NsoUPGtiUQGva0Ll7P9lvU0/qGtCLssMSBAUxnrD1fFu0d+H7bONHqF79G7GX9+labHbnVs6bHIFjAyOVGOOdUDTEXnSby8i7oSJasr+YU7iOA2DvuXCkiHYHpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756889994; c=relaxed/simple;
	bh=UIR9NeucoNn9qPTmNVH12xd6DMDCpqVBPgAbC8WDGpY=;
	h=To:Subject:From:Message-Id:Date; b=eYba5uXPrDu/lWcZfm21qoviYSfUogjR2EDxrwisCxzl5Hvr6/Y4HUC++tYuEHdSPaZgCSQnQLdMVDjbszw5/IB4Cv/2jjMvQi4Bc/kPzixRZVj9YzQ957iXrZGgfylrhbXowQmMgiMbEpeWM/8Dp0V2pndylqyooZzJieya9MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVF0Q9NW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVF0Q9NW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5081C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756889993;
	bh=UIR9NeucoNn9qPTmNVH12xd6DMDCpqVBPgAbC8WDGpY=;
	h=To:Subject:From:Date:From;
	b=aVF0Q9NWthXezahnAQCOKzMVbYRlNpU8rHRQ134E8KQqXaFXzOdCx6dd3JD5lqznc
	 vsD1XSnGedhHAdc9/Du5pLoI4PGCPPmeBbG0foPZ7EOfT+0X/w93EEs//Kpk4OIw7f
	 sNEU3mykLeHTt+dfkhOppQcRBcjLWgE/AkyzjPwYaLdlXomELZmNywcyygfLvhxwS7
	 YT8D5hU97fLXhjcr0N0hfNd3ZIC2EtAm3noX/fDvRDuaS2SsDzyiYL/MSr621U9jk7
	 XXBBUAGyCPhUpGHNX79WnAXao9NTWg+EgQAS1UdEPQUuEh6SpNQlOZfpgNGzMNHQXi
	 yzpB+3iH/cA8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D3CCA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688999358.32046.2495897459904907784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d06eaea093b3bbfd2213a6b3c8f7b4fbc7c9625d6215c8fd314ea6a586a18003
Date: Wed, 03 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756889993
