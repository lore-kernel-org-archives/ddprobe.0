Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E103B317141
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775316934; cv=none; b=oRDnfA+qSD4n6J08ltcvbEAlihRkxUj3Q5MaF0gUNIq6+M+WOPHEy71xwLJ24+RagU3d6JfPSFIGK+n3zE6Rcj5XNA+MLWCCn0XisC7ql1CKhFLVqAEBvSuNoxcBXZEDamZ7A4SJImXlyhjd+k/xJYTxMep2eK0s0Gm1GAupXms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775316934; c=relaxed/simple;
	bh=JgGaa1rcop2z/Lfu3d5CXPgKVr7xWLpcc34HOzD5E4k=;
	h=To:Subject:From:Message-Id:Date; b=u/PFv0dEoNqzwMG02paJhUaVAs79bDK3UHAE0aPrW5sg5wVuLQwYtMhcNelTH9TbT0m/ip8j4AklRxX9ZgwqjYqJrLmyMLSocD9kxchV7q4l2QVRsnWuyFdvFaJekEtOoPCeMLGYGtuQ7cx0tWAbg86k0HU456sIWGYYJiGECik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDmRHaxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDmRHaxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8F3C2BCAF
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775316933;
	bh=JgGaa1rcop2z/Lfu3d5CXPgKVr7xWLpcc34HOzD5E4k=;
	h=To:Subject:From:Date:From;
	b=gDmRHaxynUAGaslNEYsQKgZx6cT4zub+rX/8yj2iOE6Da2wJu7Pfe6UFtDlAFIHtZ
	 KM9DJ0YQOM98N61OMlOpq7ZUA3fJffrHb9cWmLwjO9y2+zXxNlTQ3s3vjAPiln3qFN
	 KJclDeg57trj+/sXF92e75MgdG5ai1FG/RuJaHCeCkfnDgzuTT/J1M2TFPBjuCkiv4
	 Js7N+e836vf3kP7UXMFHXtaZjPVp9ACy7pqwbKhdwJwAms48JBFlDK51ZgwpZR+eov
	 NfV0asaPjUGfOI6qfEmbXril3XqFkRt0aYHTHssj186md9rJ1gvwT7PhcMZBbPk70W
	 1iIHrsf3565tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA303D730B2
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531693368.26207.15002315137877566204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c34965bb0f14d1a94776481a9da1211cf9d3499c8eedb141708203ebefa130
Date: Sat, 04 Apr 2026 15:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775316933
