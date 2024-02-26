Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BAC19F
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708906097; cv=none; b=TgmQ0TNwa84c77gM0SrTLiaGbBnQ5Ny2RF7o8cmqiFl1ofOJczIOH3Rf6SeKLyGsD3eWTJJ3Zo/wXtSSBEtYBgrxAGstJWm2PbvzcZ3/wCjXRGvHddyN5qo/orCU+LJTD73fg61iXvmTxKwLzwSzDY7LCntHC3aPjDwBJmBAU4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708906097; c=relaxed/simple;
	bh=Yc+hJihxWgjZs/nC/oQ/f2VLBJ4l+gv3+6+mTFN2HNU=;
	h=To:Subject:From:Message-Id:Date; b=I5KlbSP59Ka3qR0zduQZQGw6Hy8Bi/5zb1HC80Tv0/6ZbRcndyqZWpHBRc+cgPG7cGFH1W9fCtFYHsx2olDHV6uVcjIdpK8pWjXHk6UFCn6k3fqKGVvzNlsJfxcDnYmk8N/QZjyP3267AcqB27FvftRMhGwWbFaQG/Hjo0qpjpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kutxe+Ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kutxe+Ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86750C433C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708906096;
	bh=Yc+hJihxWgjZs/nC/oQ/f2VLBJ4l+gv3+6+mTFN2HNU=;
	h=To:Subject:From:Date:From;
	b=Kutxe+KaPGik/FEHm4E0qlXlQcqrqjXYc4qDAdb0otbqVdy1ieVit3lBsQZGzmUtL
	 NfKW7WyvQHCqbtczy4jK2bt/Uv3qq3pbpnXkhFT6zeq/SMinIRGZ7EcPLOQy3gefaI
	 ZNqvjwQ7Lbgq0JhcAzXKqsws4WFUB5HVECSVvTCKTqWGzq77Gaz9ELoZNOFI6rJW70
	 CRG70KpXKwvhBWAaMngwd7gBr9777d3jd9ppfnKf2utyR7KbTM/O5iW2/jj9mrmnCb
	 icRxUifRDy7Mk3fhaJNciS45mjHPulfdw33Joa2t2Fye7+PL5CqprXPxiLsKHtipv2
	 T3i0ZnVUEUQ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65669C54E49
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170890609640.32450.11044137519302705564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e5b004307212da87927da1ed4bff8e9e8406ed8744545c6d4ede5bdb1d4a75
Date: Mon, 26 Feb 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708906096
