Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56210245012
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784305714; cv=none; b=oWGeyL4Y/MlwJhXIwwxSnc84qfTClTPKxtgikDczuX0/FQ3MLqrdxDdht7fSDStky4kE5QzGfRgobbywYyna1w8Ij3Cic4M8I0fdHdLyU/IFVjZi+ZkqjC9X14QGhqu5xJPa8ccf+Uh1WSLKQBckbCdDor14qFcEcgUrIVWNFnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784305714; c=relaxed/simple;
	bh=M07LrZY1DFmxg7J2c+WTAjHBjpBJ1Qt90j5/Eaaj7XI=;
	h=To:Subject:From:Message-Id:Date; b=mzmM8pT+y9TrnR0SA+rfE7Kfeda0xOa2Ppi3FMGSYDmhf2BijpOYoFy8jvs4mduka77ptW4GPAtxhVLqz0Gb7N/89lK3llNDvviY2btSzcn69uBCekxuhlWPudP/P+40fz1GaNylRZ8GXbQS+LPVyQNISJ+8icwTXbNzyjqAA/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULnFmD8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULnFmD8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99BDC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784305713;
	bh=M07LrZY1DFmxg7J2c+WTAjHBjpBJ1Qt90j5/Eaaj7XI=;
	h=To:Subject:From:Date:From;
	b=ULnFmD8JLX21FXfuf9EomQyYGi5fpPVXQbrnm7bbDnagVQxhM8PxUGfRBu1fZqKy4
	 TG1A09uBwRmpuv9U+0zzWgVtk6w+NDrPDCcbq9nBrtFIFaep2LjXsmYX/g/6hTZHYc
	 MceP400RSMjrwm4BM/sv3f19MAB1W59bJtwEKxaTwWjBr/xhT7UcH2kBwJJZrrALnj
	 3V2R2vhYWsaUyzY13DW8QGg2dI28L+9H5SQEt0RteuS+t7H04QfTMBSgSU3+HmUmSL
	 HPtHHRdx5c38SPTNNYKfgHDnx/un82xgEYLXRRaDldS6ZPblmzZ/w7pMsLoc+t1fW+
	 UpYFwsLMrLfxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89EFC4451C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430571368.19636.7075187903324092509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d370488f0743d9a7d3ee2c2220634a6ef83e03f5ff0095d03c8b9a464b1df9
Date: Fri, 17 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784305713
