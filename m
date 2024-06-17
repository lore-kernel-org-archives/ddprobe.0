Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E7E163A97
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 23:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718666903; cv=none; b=Xr2wLY7L18g5tt67svFda0oMTTF/Oi7nP5l3TK6HSFtpJkJNQllPrQUA35CuDzqv4rit8iinP2bn4tOOdIbt5kG7lZls92+6sMhsZ5agKyngvucquYvseVqC2OOM6oiCf48tpPISkEQ7NMCY/4fVsMyY1JzqQq+SqFdNLepnM1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718666903; c=relaxed/simple;
	bh=46aLA67yglmilszIOUCKlXy9L56w+8T8B5oxPgk+NY8=;
	h=To:Subject:From:Message-Id:Date; b=nyw+MaqbUu9NMv6avCp4rkcTDgkZOSyEzN29xaDnE+5SFLhnvVxxq6PrvHWfMjy89QOdcH8YCom0RJFG6wT8RMPXtawlwQ+sM+TA4oT9RN3UsyHDCPD6OyBOR6w5MZO2MMqLLDwJhroFvNodUlH3tDZ1NkMM+5VPVJCX8WeJxlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7Yow9DF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7Yow9DF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB316C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 23:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718666902;
	bh=46aLA67yglmilszIOUCKlXy9L56w+8T8B5oxPgk+NY8=;
	h=To:Subject:From:Date:From;
	b=V7Yow9DFmi7vcsHTrIl5YDw16LqEshilUTYcgPfuhQnEhNSAxiDtCw6ueR82eAmRQ
	 L9qSC9cA+fTpxO+J1pXdZqLZ3Rly2Zx6i5NuQDdtnhK82Ejen/MyYEN1zHmvP9mdaC
	 N6lM4LuX6It57nGqWK+dH6u4iqcZqb4E6U8OrNCgHjJ7DNgKZksk1BB4b5acvt1lMM
	 momChtZSrXpIg5uBFoYl7GRIP1LYuk9G7elVi4kMkoZHghWIc8A6pBDGu7s/UC4sRD
	 Zszy9X/KXI7Yv3O/hFCs/e7sQxaEbBEf2cIw0jc2UwqhGGbrIY1RV7RWWAIjHRgofE
	 1q6jYZ98S7ZMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C59EFC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 23:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866690280.14427.13515994639000612335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5997065527ba7f1ba452ebf66c2057c9d028de5287b6b33fb823578143dfdc78
Date: Mon, 17 Jun 2024 23:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718666902
