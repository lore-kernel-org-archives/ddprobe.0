Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D64910FD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747295394; cv=none; b=EDR55R8DDD2bBbXjJFvl6uyUaGU2dTneWhPyXodxn3fP4V+kYUhDGmihfP+sgtHE1jfkObBlCbRGav/ZWfvUzF9s4ToiL08THgMwhV1YcHeSH3EHNS/o3aTCr6DOk4yM1SAFv6Oc8YYgJCGyOG499mcDFRr1LpEjpnXEo3lz3GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747295394; c=relaxed/simple;
	bh=OOurcPpZhYs9SBSwEhz+frVG/vXCm7/s7U5pQnemc74=;
	h=To:Subject:From:Message-Id:Date; b=PH8zDOn8AZ8emuwYyqz+byEZpbyT8RYERSLLylLthcpmUUAxLVYydYj+mMCpWovz2IBB08wPU71I38MyQRhz/xl9RkejyInj1mrjvRgBc3mKzthJnYwfLlDq68UAAukAXBXsn5a0E+0G/G3Id/kmkh14NrEZYvq6U5AlNK4S/d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldt9xjSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldt9xjSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C83C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747295393;
	bh=OOurcPpZhYs9SBSwEhz+frVG/vXCm7/s7U5pQnemc74=;
	h=To:Subject:From:Date:From;
	b=ldt9xjSKY9Y4QhIf9dTRqUUe7gNq59PSCbaXkrSSowWkbR/V9F/tltElBs3O1pNfE
	 e24JsfujiMa5UA7MIafJywO88v9BY22lDCDZjoM8T44B81DimUTrZ6J7T5MRCs06CV
	 SKXTaWZ6G+ZiaNWVV8vOTmYox+TOCrh10hDj3/3Bzg2sQ2jSu9PqufCNiBeDm1Pzb6
	 Wy7/lsvYLXF5bL0T02/T45ezDijk5zeWcwkckD1UP44/BmUONWlD/hQu5/Xu0ezFVS
	 w3Ib/PDH3C0qZUCOSuKKOyolqgE8d3dUp5F7sEeYiDOgPmyadBml6lPqjm+2on/+UF
	 sjG5zsAUXVF4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F810C3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729539357.16505.17426476487781262048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc3b3e84ed9cf351905623a99e2e0de49a83038af68649c24aad66ebba0fb43
Date: Thu, 15 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747295393
