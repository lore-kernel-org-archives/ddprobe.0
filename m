Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D8D1A683A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775900854; cv=none; b=dr3xN6l9W7tkyLUh6HXDOrsuc+9wnc4B1vcz4TibD0ApwIo2iHRFvi/oT8kzpntqNS/GYYy1WoaYaBjZdnk+ivd95dLhi2cFcqOtVjFVYBPqgZ+AWfEpjm5j4kP2O0EtqzqyHJn8yyrFfMgavh6gJxtLPQoLh541bI8ZfbrYzMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775900854; c=relaxed/simple;
	bh=Mm4kpotE1XHRuz7vAAyUyhyPCPOWZDnX2OTSI3KsaxY=;
	h=To:Subject:From:Message-Id:Date; b=Mb4mE6C0tFJps6P5XOAX9SFQDgjALBO99waSw4a5GAejbJfa6SrcZWVcWW0pKzDl+U8VQfqQigrN8a9dscg/AqT7XbglEikPJxhDD1P1ffwb4b7fGU2c8/vUo84XNMpcoj1K71h70Zg3RbNsene2yIo1cJdS7ruXCG7CE9vNth0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpJuW4CN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpJuW4CN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0541C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775900853;
	bh=Mm4kpotE1XHRuz7vAAyUyhyPCPOWZDnX2OTSI3KsaxY=;
	h=To:Subject:From:Date:From;
	b=NpJuW4CNaNE1+XWgKNzRMpjSdHA7jBnmX2jMbU7HInQxQWggMf85O1R8LuQ0Wnt/t
	 ZI7kkFI3ytv58JmKIefNrgm7ckNzM0/Y4GI1Mgt2Cg+URBwefhIHJ8GCHqq6zI+nRK
	 n6rlfeZHlGag9xp/N73vxhn3xS54yuEuza80NQRiCmeHJGZkUKiWb1l8bONOGjGvjM
	 4wQN0h4NGo0uxYofyTBrfKMdPKwgcSucj6S4lSSlAtDlgztUlXMUZMlt3uIEShp8gW
	 wB9VVhnSD+YUz92T6d7mTn4PIMa+SYKxiFP34q3SMTO9FQXaBmSw32DzzS4tVPaGXB
	 HllWAYyjPF9nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF47F45A19
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590085369.20379.9449893056354370981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7f2c0802be3cf6358cd3b4ec7a27c6239d96c71a10062f0691b5c07bd40083
Date: Sat, 11 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775900853
