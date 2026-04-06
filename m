Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E8A846A
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775448934; cv=none; b=Kw+/sYqQ3pvh4qa01JD3mthAna4il3OYDHmUZa1oLEIPmwB1WU273N4Io7rAKXNxiSjeT5UYS53N2dnvBTcja4aNxJ7fgeEUqOBxFbdxJ8kScA2eYP5df7Y2rHBFlIHkIT2tFvCYMgnDcJp8T9t5sAu6i2vCl5sKWynu3hMyWsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775448934; c=relaxed/simple;
	bh=apZXsV1xFXIaN94Ky0MRVS832eWpikheOUl3UKBpPtY=;
	h=To:Subject:From:Message-Id:Date; b=IR/5aEPLmTchtPzM2x1/XVOgTXQ7gOkQ5hxZuhNR+qu868OggQwUr+Q2unT+zdBUDPdHyXP60d85231T+UIMwl3UPJjkciFUQnoRdDEQTHuF86B/5kGMriV1xy9JXDw1eNu1EXsotgHTFCoHmx94eQjEkNcsSY11TcdLNSzo6HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBKfyLDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBKfyLDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63F1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775448933;
	bh=apZXsV1xFXIaN94Ky0MRVS832eWpikheOUl3UKBpPtY=;
	h=To:Subject:From:Date:From;
	b=vBKfyLDG1fldhRepHYkWgdb/WMyHTnT++OSlzmuIlTxbYJXEUKDK5ve3cfiTRr00C
	 WbiGH2hSp3V9X7WlYv4dgU3SnFEVXv6PnVlj1vBgXpMvEmWPFeNR2YObsLNIdLov+n
	 GaSUm+AKgyA1jxpVgpo8Dv/lonJsTSBlsO2ebPQpwKliuML58TFb4oJemSybPg1LRp
	 WaVt5SUacuYbpSNngJhIg95JwXAzCTLe7Cvy4s6tx5/VSgiWE7MtnSe8iz1e4fkiRh
	 2FvMV5yQjW2ERwlbNIbBX6HezIN4eXOmxbAP3nXMR9aE/PN3Sg65n2SYUsl2cfl2TD
	 lEAOZPKlDlzIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1139E9D831
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544893374.3817.15585401816798489204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 543261eb959f73309285ddb088df940a0bd463e1a91cf96b19805c4f54c7fa00
Date: Mon, 06 Apr 2026 04:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775448933
