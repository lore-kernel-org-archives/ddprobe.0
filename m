Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243851C69D
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760573994; cv=none; b=WT3LnNxMZp1lAiYstbu2VRS1TT0bVSJdRrRQuhiM8JYP2iSLSndBaNPKNhDCq6oYXFpgNNt47KcXS2L+34RNeh6rtpz2SSco/7Oz5f3Ft334GBkAiqCz7ZbD2GX7WJMDGrUXhupvETkvnSRIVdHSUkEgcIYLLmLJO30jg9I9gK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760573994; c=relaxed/simple;
	bh=cTSV1PCS9g//6urSq9yN3IqL0o7ybKVC+CBk69q73mk=;
	h=To:Subject:From:Message-Id:Date; b=iRWJfxesAs4XbfmIKqLapmI9fsOylua0H6hVyjNjSRnEe3++dscrHAZIB6irKi8fvmMmlJHv95abPcFbwNCNe18tNTyVC7BcNvopl0Ipjn63WDD6a21zEmTTjb8MNUhpHJRHvd7DD9cPfNvanal8gCmpro9MbUeHtkj5zWcdRsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVG8z7at; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVG8z7at"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08F1C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760573993;
	bh=cTSV1PCS9g//6urSq9yN3IqL0o7ybKVC+CBk69q73mk=;
	h=To:Subject:From:Date:From;
	b=LVG8z7atxzMQqXJt/nQ/G3JOfWfeqN5JbnZQYH9ZQ6OYjkRsmJ9eOBDRTUbp9ToAU
	 n1E7Gb7yhUBH4JlcWSrBnOGk+3p1bk99O2TPI4/KHpLyELzaiqD9dnDJSJuazz+w+e
	 KLreQtyQbYrH+xk3yxF8F6jUvHZzbF3zBl6dQtbjp1fWJyM6HqFPVf7aUwrwbuCaWI
	 M0qzaL9c1xvgKxO6iC/e01Sv6dZJ7FTV3hZ76CGo/sXxZUvmpptFqgKB5QbFtJveHp
	 a7rLqqCag70AiX953ylYcaYqInt1z4X84Jjv3FK1G6gwqxOMD7SC/jYwVMz0Q/XGPW
	 kAKS2so30yHBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC7CCD185
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057399357.13516.11216001400728215762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: addd4937da01ff679e7879abfcf2aeb508eb76b97f64133c72a5d6ab34c22a89
Date: Thu, 16 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760573993
