Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37ADD2F6165
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766318034; cv=none; b=c0/ma2GJ0vx/TcdHuQz1Oma4/ORjluU6jwHEoz+OVe1SI5iVbnVx8apSg/x4ghts5etJoYBJV8xFFF59FH3X1wcpEtsakakR+KOLgIIp0Wbph9pksrydh+uA2Xi1nORCDyRPCYM7zhtbjrBLwdLGOIcw86IsTmnznJrO26+IQ88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766318034; c=relaxed/simple;
	bh=A5WUe0NKkRcUVjRJ11y0CBxS3CIP/72/mQxP2B/+XWs=;
	h=To:Subject:From:Message-Id:Date; b=rnaWz7GBE5JndPascMCmJ5gvHqxtzNko9BGbh+usgv2yf1An4yP4atgZQ+Qzg0rMzblSXN5t+jAtwsITPbv8yHLLhOXDTsluXowS/9MosCmhTzZ5x4/nsmaYQkF9xRXAjnejm7W5GrWrFAY7J4VSwKCfgcbP3+I8jwbREOTEEDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdphhEmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdphhEmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78C4C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766318033;
	bh=A5WUe0NKkRcUVjRJ11y0CBxS3CIP/72/mQxP2B/+XWs=;
	h=To:Subject:From:Date:From;
	b=kdphhEmgNNPVYscQ9ULXibkSlU2nT1IMiGg+XeOPffRu/Gwa7gyppz6RUpvAaYWBj
	 qJbPe1OJUxK3my8k+WtGFbxELD4kjVszNN1JvqGRRHa7/9yBJfxJUfQJk3Kw3Qndm0
	 cWLOEHHZobSr/+jzfI76u7zd6HG78wnaFov1hxsC+BiB1FI7KSG2pyFWUr4yC4LkqK
	 fKpLO0/LzniZS3LsxYmGTRwMPPaA4w/SbMgnyr7fPRG5+dzrlzP+ClJOSrNyY8nKOR
	 CkZh2yBR3WvOdCQbc09/69tM/f8WGzLXk/q2iuHkeidkg6ZhJH6xTTJJyzRr3fWvZI
	 mHn/cBNfQet3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CFAE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631803358.29648.7762756218253051491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b9481a5e0a397e267f9ff2281e080159f9eb642ff0bfb164bb619f9111b8ff
Date: Sun, 21 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766318033
