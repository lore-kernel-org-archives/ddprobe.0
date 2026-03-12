Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5B43AF645
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773350694; cv=none; b=tRTdlHKVwLABa07frAupLTs7GdW5Jlt60GDSUOUZlYCAlQRq9qAxLMbNqMNH0CyhBvBOEJ2x2Bydo2q7/KhvbHe2kb/eEwoRV9F1zLpFDbSvnJAbuCDGe/m3OVPKoJzVHZ0fEq4AKSN8h5aAbKb3m8Pbcg1SE1eOBLrtxrPM5d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773350694; c=relaxed/simple;
	bh=/c1nDDyL42q3jBkqq0IpJEtEEpw4XZlY7jnwKdrbKMY=;
	h=To:Subject:From:Message-Id:Date; b=Pdzca9Q14cKYZcRVgGigrrLO6UEbPPB/3WTN7hZ8PcFqTXDuoBNq+5M/3UM/EmK9Wr95u+j/5C51eQ38gbOwG296yeGAscjYEjX+7cbn4VTnUAHtdZkeydQVFGdcRYzXhiGDrts2QovgG2zJPfWF4pJ1QBAPe7D4j82PtOiItOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJWnmYgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJWnmYgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A557FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773350693;
	bh=/c1nDDyL42q3jBkqq0IpJEtEEpw4XZlY7jnwKdrbKMY=;
	h=To:Subject:From:Date:From;
	b=NJWnmYgpqNSmPX7hv7hRM8VNGfuPn20L101RKpyC+EHfiQxnPmFun1HtlBV+rVQ7L
	 6umuP/11HEeJKtFUYSAJN/9jlf+fg9iBHjTUBu9gt3FsK/25b1VkI/Zl2/pm74qDf8
	 6Cz9U+eVxyIgFtS00yXN1+gs8G/fYgeI2cqsh2nUoKovvPTMre8M+9vt6a0U5WegTL
	 8+oeuYLj9QwaGiJyhWeNx8A/dZqIgnNZTs4eWxg8tRM7aIeLqLNosJMQ2ktY1dLFl7
	 76nv5tgXXGRguaOe2ULN6f8hsogQBzEqcvy4PVIIkdyUAwSLfdOLVRktlBvetwxuTD
	 s0AXw5ZmfP80g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD5106ACEC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335069357.31997.5144982647634556064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d29f1183e4b5f15e5e72114fd12435a3bafcf143c14eb4e55ff81491b4c4aa
Date: Thu, 12 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773350693
