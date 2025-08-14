Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D981244662
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755203995; cv=none; b=tUGA7wxNKkc0eWc70MP2vwWqE/ci5zSTVVoWl5H6/t2V4m5ysZKSBwe9YEhHG4KrR7hnPpkzNmsRjlMoDdlr1F8Ql8Ao910S9qzOaHjLRxgh1pUeQBgMtQIMNdwpubmtQJtfh0nE6nqsOEhrnjC5QJeHkP/KkUO1tEWqicMmV6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755203995; c=relaxed/simple;
	bh=euulC1XtK5bjFGtH0LuK+LiZd+9SfZ4hI/OVjjPROXo=;
	h=To:Subject:From:Message-Id:Date; b=BdatWc+AHtrGURZENBSOZJbQ8ZIB0rSEG+K/G1gHFOXlSY/bnZndqN8cpBxFrJ4CecRA2nvwr67wnU2fYWa8BmQ8LairRZ+jHY8dgrkDBFrWSMr4N2+ooGK1uWBsregO75NhFpLZs6dyX3wq9o+PySqV+LClKmdXPZ01b64mXNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HB9ArZ94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HB9ArZ94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A385CC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755203993;
	bh=euulC1XtK5bjFGtH0LuK+LiZd+9SfZ4hI/OVjjPROXo=;
	h=To:Subject:From:Date:From;
	b=HB9ArZ94fxoJJq84za7tklctx4wZV1QhCBNGk89weP4RcgZEepu++rM1Drct1BDS9
	 +BY3oqKDGJC0KObdIfBCbGxUjFMLweBLibozfQchr2+az6fr34SH0T1jNd8ao+4W2N
	 lmsK19o+Fr+shx0QrW1xaE7pTxrkBIobB05+PtLybgNLGnAIBYaeiX2yN3VVfbuv2M
	 U8KetUDoG9HkTNYwfxaKWLdoOamEKjvCyg1/lW0y50SYML86o7HW0m70GVApTtY4pU
	 1SYH1JPE0Dqw0monc6jUV0cJo6FBQzLG1fwiN4EYioe2Gl09LV2rLcFrcv4w23TJ9z
	 lMv7+uBW4ObEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919EACA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520399357.7100.4881025872089557351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a873fe83c30a80fc774606ae7e41ce12f73cae89e2f5fa48b0067d89a9b323f5
Date: Thu, 14 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755203993
