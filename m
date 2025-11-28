Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138EA2FF659
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764320574; cv=none; b=b3JnHeXe+g2WaU/ASc2pkCdw8YNqCdm/FUwZRTNkhH0FQvHKOWjjhhX01/WJTKZsp2P+gmBWYxdBMgdMrLzJV1Omc1FcJ0SQIPDf2wZw1p946/7YRIrbnSf5tfX7lojqou+LkbJyNnCOL3lHTK+N6wTk/Au/6vtnfeJw6JLypPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764320574; c=relaxed/simple;
	bh=l2kwfHhW84MtPpIjZBVxiJCHuoExDcZwtymdwysTK/8=;
	h=To:Subject:From:Message-Id:Date; b=I+CGXGyX9vJAfhya/vQeKv1gb8El51OefL59NJk/exyIJ1p6fcKeIpBM5AJGMDykhjblE4OR1saGn35x4r/Y3cOG5GkiYpCSV04eGqF5m9xCRnsLl5nTGZyY14daei25lI9I9/oPQL0C06n39c71xpkaL3oo2SPCKIbYeZK81EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adguZ28o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adguZ28o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEDDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764320573;
	bh=l2kwfHhW84MtPpIjZBVxiJCHuoExDcZwtymdwysTK/8=;
	h=To:Subject:From:Date:From;
	b=adguZ28ouXpFXQCKwBYZD7bUdEbt46zJh5yfs3UX2xB+FhjXI1TYllXWDCjsK9c+m
	 xLHA9/rsJn62hzwZyfz7/uYT/WWEjDq8GEW7HvDvQM9y1bmkhi30eKorwZpj1EYp6w
	 9isL/qRIXMsAiwSO6Z6nQeX1FvfRSV23zi3bj7bA5Jz7fjANVbyJsRirV3h7RehLGr
	 Tr6Nfa4Iz9bi3ggQ6X9DcP8J9OTcb86/gbvjsMTCoewLHflFf56jjpKt8ubvUGb0JL
	 YLLtyy+XL5qp2chC/9G3X1Kvh1DYki4r51gw6rCKn1Au/5NZf+uD1FoVhp2M3DCC2W
	 7TebLulKlv4Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E086D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432057363.13794.8411554235380590259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3064190b6faaa6e993f645dc1402bc3b32390845cc9aafd42d62f274d3206c6
Date: Fri, 28 Nov 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764320573
