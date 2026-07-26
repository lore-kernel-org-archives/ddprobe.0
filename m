Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B697317166
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785100834; cv=none; b=e2CnaWRUXl4Wdn8jPpBZuEFPoxFJ6JJfoE/MC8ncZS2pf0Z7UlQgODN9oo3LDc7Lif4DawU38ieq083y4FBWomCueC40jnineOmsKSoixz7J/wgkr2f/aEZnUnrI+inZUqQ1IHhWkz9Tm7d1gtlg+uIhaQMmtlFQTM+8CXEDchU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785100834; c=relaxed/simple;
	bh=5WbGqXluUafELOeROT6pmoOu/ffXniMb1x2YUTwvQPE=;
	h=To:Subject:From:Message-Id:Date; b=swZAnPsnzw4BnMPBJ8bDMgbWYw6Cx71c/rhWFZl5MY4itHJ6PGPHf1qAmaeX+sXwyVxRS37R9HhP8JPOi+Jqv+xwKojUxlOEgYwjLiEF1CMSx6MxH1h8YDRE8JKKJhs9B8mtK8sOfWRW7ynwmpjl0P1W8qIrVfo/FUZuxgtxw6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgpV+AzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgpV+AzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4741C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785100833;
	bh=5WbGqXluUafELOeROT6pmoOu/ffXniMb1x2YUTwvQPE=;
	h=To:Subject:From:Date:From;
	b=MgpV+AzLJ9su8j8wAryzexiDSMU7Gs5wXV1iXfstjrOSTCmO5CDFHjIjHSvFiiVw+
	 buiTLHKSicqs4S+UZodZTMnYJCH7KSVRP8eRSi0NNXpTytKoMb8/t4SM196By+icJH
	 oU2ws8eo9dwJiHKstqwRJ2BL5C+cGXWTXReHDijNAed3bXU2qZwGDiRaoIy4Mf7EQb
	 KCcnpfCZ6Gaq4GHbAMcD+63YgT9DXF8SO1KE59l62SiOSyxeRK3O/Sq0MINBeZjKFU
	 ZrMxZoeGPEzEphDfJ/Y5mzRf9xssjFCvbo7QYLejff2aTWmqJ/4n3+ufseTqDhZYz+
	 vQnGdvdrD4pxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE937C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510083368.21320.9925711107386995721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8b0f6f63d07427cd81e7c5f28d6d1173f3e4df942a142f4102b4a8122abc0c
Date: Sun, 26 Jul 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785100833
