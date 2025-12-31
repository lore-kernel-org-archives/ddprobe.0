Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABE8308F2E
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767207234; cv=none; b=a5xFA+iZWibYyTERJs/d4N8INATTsTkos3Dr6TlkegBijOdxz071vwwNwma9t/xObrsr3o/KMaVL8BiQfEUBVhIF5a5cpLfLliWzpfkajLNLQ7UTagrbH3/ZQ+8Q9rui4ClfJ1CaWkG5PxCPqsatvFrdbe+hsa0jvbayyJt8Auk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767207234; c=relaxed/simple;
	bh=HhHtvyhPyS/jSleqs0JmyS+dFBy2zF1A3IKw8GKHPfI=;
	h=To:Subject:From:Message-Id:Date; b=Y1sW6tA4I94wCSEXkw1fC1TTecbDhK9UlVfXzm5bkFewst4zFbG/WmwSHrsGXjd0GwgySMcul66PVg3Xb434xEvx7LeTP4T8aDeil8dMlXG9Jls1DcCrPZ7NNxVkn2UkHR4j4eYRhVOfMyXsAdddEQu9V9cdZqw/anrNZmIvDFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ/rrlwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ/rrlwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E75C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767207233;
	bh=HhHtvyhPyS/jSleqs0JmyS+dFBy2zF1A3IKw8GKHPfI=;
	h=To:Subject:From:Date:From;
	b=JZ/rrlwHjvdhvfeqP7ZoZkHsVOWKvvAlVNp30/mNJkmjQzT9d7ipBnsCOQlABMZLo
	 nv7l8/S57yPrfnN4lb8y4+qqBzENoMeVy4pqYdJpEmWsV086CyWZYx3l+pk8qAKQZH
	 oWtiGPoTuRb0Dj8GbXpRvu2lqwPVpLoh5g4fJY9nXctZOHhyqTCuBR4inDAo/Fekq9
	 T3p8ZApVNlRjyoSQj058jDf/IAjNaLzt3VBkJUNTmTSYaYgYhHRI6r+JAVa0MIcKBR
	 Cm992pg+bc8BLtTLDuTSaKl5MShw9rlC/LXjb/AO/ImxgHiNTp8YzZb6EOohHJGZwf
	 YDBBoFIMLO23g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953D3EEB56D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720723357.32492.13866038980498888616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a2ade2da7a34381086e42d47f820a85b2365a43514144a8aff7b0e166d3548
Date: Wed, 31 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767207233
