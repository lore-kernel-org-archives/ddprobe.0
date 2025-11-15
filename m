Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0EE128395
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763221794; cv=none; b=qMHxWqG8M/k1MffFwEtwKZl22UAZT6JKY75Ok0ptCCaATRaVXd7Pe0Tgv4jJNk2Gw7xp8WfRyd36PrssGPrs8MRld5jnG5gxgHQhF4GF5rsqbpsoyfA05CVlZnpjcCSsspGW9w52k7vcGwwE80sZcZj90PvCVaDlxbhgPPbeJEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763221794; c=relaxed/simple;
	bh=w2kNsINGpl64keUa64eVtTXe7+fZD9/4dAgSmr0XhW4=;
	h=To:Subject:From:Message-Id:Date; b=Ev/tAqcZtK/yaDItmWgreDUAGHHsfIFTwVH6l6OmxfoqETDyt0vAXUr4ISiNjkN0fULsKArK3lR5BEGX4iQhP33kJW1BWnUAjlV0tT/Eg16rMkbsDelhSWE3wamQ43PPLYHSbSLbhYeuaa0FFXN00izNhdVVNR6pPg4dQ12Dsww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNo73wwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNo73wwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5E5C19423
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763221793;
	bh=w2kNsINGpl64keUa64eVtTXe7+fZD9/4dAgSmr0XhW4=;
	h=To:Subject:From:Date:From;
	b=dNo73wwdka8mGRZvpDGzlm6DFOFP/StgxVh1pbKtXwOnzJf0pPtdmqTob7nZ7iF+F
	 cYg0U0Oda45e/tFDPzBwQ6BluEaxgWz6lZR1bAVSwtNIFBx+c1mg7rAnGldH4WYdGo
	 k//wCmpNwf8G1rymU467mOow2pJ0wx8Ka2hcdXmjFbRRLtVMcjPQxIdTMMt47V6K7v
	 LecArjFTUMsIDzAqtVWumzwIIAveVQcb+yGNq2JpHlU3s9+fu8zpmlq19WOPaM8Lkc
	 1GaQsaXbckTLefob1/fVLB73h78xinTbWYY+tKv7yuF0XwQXhsIemE9IhpxKGMyIX4
	 95grriFU5D8YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AD4CEB2C6
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322179359.18255.17660102927305017293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5393d3a6b268cea8b06ff27e943468ee55bd89d28f7cfb99372f4350054b9187
Date: Sat, 15 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763221793
