Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B98213254
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764211974; cv=none; b=Wy+j+bkCvqsyb7K4rDeY535EoIgpG1A6lwL0QIj4OGFm9d7xlckxid8VMEDM8c4hTEOTsfYpiGCagIZrd4kDOEdLdPKQepmOFwXH2oVUYcBECeUiOqY95lMgOOV/Vvmqso3rPCl360i+UkNf5hNvs0PFpuowulWlRLRfds7f4j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764211974; c=relaxed/simple;
	bh=ucksmNkuF4TlmsZMO4lnOXasOEeQD4uqMOxP5FwBKvY=;
	h=To:Subject:From:Message-Id:Date; b=oLJghc30DFg/AYbf+XMJUbt1Xmcaol94VLnRxbs5R1sN6lv25dwdFKx3EVg1gzyBjXZ8YG9jXr13T28KbZO6pe05HEZGfb7wmG/rs919V5OoN0FvcrP13Mx7asLbGwgx1C1ztQTUBp/WNrTtBiFs75d3ZevKQpOCgruxYliqg14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mn9mFWQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mn9mFWQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81D4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764211973;
	bh=ucksmNkuF4TlmsZMO4lnOXasOEeQD4uqMOxP5FwBKvY=;
	h=To:Subject:From:Date:From;
	b=mn9mFWQIiVYnj/mMq2/kEN2B9Z4NTzbkfWLIzUUBoz0TY4oRKd8hSQibf3qmf92ro
	 CfFFloMjNBYmWUMBYTD2N0MR0QgN1HeJCs58WshQ4je5jBLce92fUc5aekQmdPs4rs
	 xJvDOknbDI2PGTbvZrDGFNBS2chG6ldJphOMd4YAr16zcW5+A3F6hIDIo84h7uehg7
	 gpdCz+8ZHUI/WXWOGxUKw7y6B4kiJZHOfOj+2N0E3nN+w3FITAuJSjxjZ2Qr45rREL
	 tTaUMs6Mxd6twu0aHdEk+FyLo0AWjbzmU8JVf+PlvY1NKYQgL1veBBLK6TuDtHmZT7
	 UPMieaYo7ya3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9752FD116E9
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421197358.32121.15458304781516566367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ccaca79ae6aa562e2d4c782d18e7f8e7549cf51d01b981c5f44c381b74188b
Date: Thu, 27 Nov 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764211973
