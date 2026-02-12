Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5B53563FF
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770903293; cv=none; b=CT18sTmEFCPCyXl8tg4lLK24JUp1NC+xof7SRdFb/WOQnGo9HOFKOy05yivCK/f7A1XOrzM+fjcDgkEmk/b0rZfaGZ2tsQsV9+X5yJLjm2ydzDxXUojyqrw5cA5sS9R6STpkXPmBCKgtsQrq8gwAWr6ZAlO2pQ39/f/dHHVVP9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770903293; c=relaxed/simple;
	bh=ey7pTxPj0Fwvbxgc5E+sEbZ6FnfHGiLIxN268LOT2kw=;
	h=To:Subject:From:Message-Id:Date; b=EVPOsY/F4kV5gRFsX/Hber05fGO0qq2M7ZJxfwaKUTtdoRjY3FQDdXzfXy3W2b69mM4NHMsP+8zlKhe6ApsBZgWq2Tgg1F8KBOTwJEoyg8K5aHQreUAQ3SMHCpsE80t/iiosOHUn93DISRYQ8auupwWiwxJnOJ+ke9FD7pjJf48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nmw63xUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nmw63xUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAAAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770903293;
	bh=ey7pTxPj0Fwvbxgc5E+sEbZ6FnfHGiLIxN268LOT2kw=;
	h=To:Subject:From:Date:From;
	b=Nmw63xUZD1BzvBCvXX9B2/pGE4FFXdiDN/lL1/XRWR/xVxhqxpivbrj+4KSdwfSEr
	 sHklM2d5d027x3waeK/5HMSHsPLSTvszijKyVcmULRzGAA0Gr67MSTPd55RmqEHIvj
	 5I0J6rRtjZGCb2sRBoCcETcUNdCgddkE1+iyC/FpdPOCJqsQt4d7K++pQYkFpQdcs2
	 kghF3kezCGRP3BYpJv3HFmA/rjFAJDQtjguxwBM9tXVuhKtJrjL0PMe7eEO3gcfJWH
	 iOlQ5uDctwscm7NJBr8E+kTxSEcAoVFy0HJR21uSOB6GYKf1JPgJrpik/XDZ2pvJSn
	 cn1WQ1yLZHHSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97694EE3683
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090329360.20344.18274603932946764657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421839376aac66100a83ecd2940b60da3480dcc5fb8fa00ddf7519ebf4a026d5
Date: Thu, 12 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770903293
