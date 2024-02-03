Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D8F11721
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706939897; cv=none; b=DlHFgGdisPMhv+tbLfaLakWd1dXb3MvIVD85wuH8eeC+rqjup9dy8fWJaxzBgDYKf4fcoK2EaUEa4FKot/IDZJhqfh6qo1ZDORnJ8XEvz8XJsa3H3UbL6fuVzMXCi5j40eSKtYkRzvAp+pbA6L0By5n5167pDmAu5BfaoRCq1ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706939897; c=relaxed/simple;
	bh=FQ1xV5S0eTvqikycXRvmNy6nfxat+3EcVuEBOft0kPQ=;
	h=To:Subject:From:Message-Id:Date; b=OqM5GLdFIoY6NxtLhMUqI2Fgx+aCp1g2tYGrDQ4EGSWkid1Kr0hYXWiI4n5EIq7roh2HN5qj2c47LYVufLRqOhXiJipFWmLOB+ebPFOPsSar7GkvFNvzX31dRCwGpc5taQK3ahsvYPGklgoHaIVivccYzBOB2KjKblhC5ZVsxww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGq+ChWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGq+ChWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D910C433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706939896;
	bh=FQ1xV5S0eTvqikycXRvmNy6nfxat+3EcVuEBOft0kPQ=;
	h=To:Subject:From:Date:From;
	b=qGq+ChWRXcB6Dx7Al/PSYEQA7m57nXPriaI7R8jWZccnBWHl/5ISjQWAWemyiGrxd
	 GnO69KQgbtgMbIjGUA4ToLXvKUJFTp+8NWKbGRIEcaMaHzjW7cnTwoXSVQHNyNROYF
	 L2SK0fy8Z38vYUUbjmf4bFfIgDfhDUZX8jE8HxkwrFNIfkn2XaIopZqOKVZAadW62y
	 PxQlAw4pe/MUbVJYqwZkicMH1S4D+P0Ys5CO8hOSWMi241BlJmZC/Zm1Ph3JW8bIK8
	 vllyCSaKlDBXSSka9aUMQMiUVBq9dmau3Zbu4UP/VpWthhWaY36DL+9dMQH3o7zAGm
	 ygacEMhJpsRhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C78C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170693989637.18814.10716820536125183032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544b3e026d0b4871ffd893230bc755a28d1b85d5430ac0b857f824b9343809bb
Date: Sat, 03 Feb 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706939896
