Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420061DE2B4
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746034794; cv=none; b=kqHxR7Zc4A9g2ZurX+tD5+2CxYVO6z0sjWZqxfMAvxNE4dzwMd+jY3NyyrO8BvsgM5SWjQjfe+A10iCvJRcsPMkjq49ZcfGxoYJUS2DJSOoKpXoHhitm/hEC1egIFkaS04osZZ1Euo7rpUD8iVtH9Ywzh8/CAuklOVobeabf1JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746034794; c=relaxed/simple;
	bh=vNY0KVxFqc5AJ1hRd2koq4Lf3qW00zY0VoV17kW0bgg=;
	h=To:Subject:From:Message-Id:Date; b=Y4hBc5Y4Yhz7nbLKdVaVP6HI1jrbeW/ISPeAowtjJLzvzq9Twsc/bL9VeyY1YJYr8B/ATaX5gwlQO4Ojm8HngbXPPBffhA7UaNkkWBnaGWwjilQHGlSA0wekkfROSHCHQ8hlzFgQTXCKwolORiByt399Hgm+r4fn7CTP9xyjF7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tw9nQufc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tw9nQufc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2671C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746034793;
	bh=vNY0KVxFqc5AJ1hRd2koq4Lf3qW00zY0VoV17kW0bgg=;
	h=To:Subject:From:Date:From;
	b=tw9nQufcEFFY1aQahyVW7S2pzAEMt6wxSS2Tt5eATOaig4M0VLAt4/ekK1n96BOvd
	 z7yqtAQ9e8L3P4H9ZYm6ma3YezA9/NX/njJHXZYGGCfAG3cwmhPr7nzqqyOW6Y26E/
	 +THT7zw+J3JSxD84pQOyW5B9QtOJY2+wyD6fO2sG33VvV/l508Irt9krlFJ4MV51+e
	 ecqqQd+R2jXd4dmznuc4WQ3cp1N5Kt7Ip3Vsg3KkhEKy/EINDqhK5cKl4kOshpYkdq
	 HlUzeJzhZtX9dOIWxaPjOm3TCpyHZSGRBZ8I73HpOyOfdwLP29kSwClI6xiWYOGzDb
	 g1QB6BkQMkWvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C09C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603479357.16376.7437206039858359573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba66a1bb76e56d38c2212e4fd05e3c6f7399184f76e069aece4e51d2d7f3678
Date: Wed, 30 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746034793
