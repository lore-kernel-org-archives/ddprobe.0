Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675A13A1D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769040234; cv=none; b=rCunmyoqOY4m6QdwsJeVHI4YPZxzGZkpbHd9fGVG1kJL3qC794iQQ2jXjwmMWlBXcJ2qeQcV7V1HXyGVJbIAm2rzls4Cy6vS9+eePtha5pD1JFrYJdl0tJfWDVJALlm2FbsPbk8ZZwRt4+xy8/5jgKqD4YMaARtD6aQG6/lQZ8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769040234; c=relaxed/simple;
	bh=ykxRW9fABIndv+/QE6Vzt4ne48WaLutTPVo9VrOeuLI=;
	h=To:Subject:From:Message-Id:Date; b=a75/AvB2HkyZfrZlseDU9z0Ffwl8e/fW3E2PygmmQVk/8AIcTRa28bfRKjDxQC9R3OzFmLU8qJ6pwD+Sl+fTMVXbpnNCT+UTHHWH2jPK54KImfccYI8COn4lF1tlJ8V+j2unfduyoSe4+15rrhH+XTbt6+vHOCgx2u+kZhHi/7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhIKMazl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhIKMazl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769040233;
	bh=ykxRW9fABIndv+/QE6Vzt4ne48WaLutTPVo9VrOeuLI=;
	h=To:Subject:From:Date:From;
	b=bhIKMazlX++P3mVZlV+++/cnnJmwhCPemrb1gzVC2+p3CYrOKpRjeaZyeENpzy5RV
	 qR86krXFJaKPg8fq+Olq6nyWira6vaSW1hRf3O8qvdSUDAgVLIMbrhuC0QZ6dgQbAF
	 k9WwgIjB7+C6q0AYE41bjfPnPQQZLe/9TxzZ2dxqnTPc+X/Ta5og+qn+SInt2RfNKI
	 X5PB+Hqr7a7l36M8KsVJ9yEfoTB2B2jYDPsKudh/B5YftKD3iVBLKyVtMKBJLT7vNk
	 Q8d12boULZF3bOzRHcJ7uMykchwGIroHApErPWHLF2BlVdCV2SfOYkEJ65x+nPsWwm
	 W+yRSnFy9fWQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966FFC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904023358.27853.11223259862484307129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45311ea59025027e0180b7c1066392c337f90b097a595f414ec7b00b49518d3
Date: Thu, 22 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769040233
