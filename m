Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34791480DF1
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785879634; cv=none; b=oBNpoLHJMRs5mgMxDL2rWYUDPBajt+8WXh8HeH2kbrXQJdbDgZXANC//TYRAg6/OKQd7NTNa8VTHSJzHMN5+RzK99dgT1AXxSbwWmreCXqWzLayixt/kZVyEsqACQoQ4jY67G8VnQ3TYPH/z7lScjRwJEtWP2XWZebGAyd3haOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785879634; c=relaxed/simple;
	bh=k8nLaRMuEtc31DyGRQ/bL8jibi/g8NT36gTTnUStHis=;
	h=To:Subject:From:Message-Id:Date; b=INSNOTmjYxMyxtUdPXfV2wCvTyhEIQA5SttasHE5H/cXaS82M3FB377U/3BL/AGFg1H1yDFugF2f68zQxljeQ90hGaGz+niHT62U+KGAOMrz8OrWkmSxo/lmzkgkkpA6Cqki1evcNTCxJumGothH7LgYEa3XLhpa1N4kRADDt1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzl3tSie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzl3tSie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B24C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785879633;
	bh=k8nLaRMuEtc31DyGRQ/bL8jibi/g8NT36gTTnUStHis=;
	h=To:Subject:From:Date:From;
	b=mzl3tSieJmAqSBl8HUIoabxQ/P+KAfvhCMiSe8QuG/HxYgj6wiG8g32cPO7VzxAf4
	 P7/YA5WDHBdlEA9gF1fgOW/eBP2lN1Afuwh3DAX3DWmvkGOYwtLg9GhFfv41Gx45c0
	 DmcmeK3nmDsOv1KblzjRIY+d57V5nJ7qu+BWa18TdaNjfNm+TLNDslLTUN9Wquzn1K
	 6BZWReIr9e9hPBwxrgEkI87Wx+k6hjs2j0cjOLzb2l4Xu9I+FpMVf49611Ad01W97p
	 1oPsBsxcfc5FdxXQepvp5odWXjZOIC+G5cl/gewEE7vk/aIfgMVQTVyWSM/WakZfCA
	 xLErTHNKrH7og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2FAC55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587963369.11936.7435465756076471141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce63178d10423672de3176a9dd43a427efc8a38063849dadf6fdb0cd5dae0a33
Date: Tue, 04 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785879633
