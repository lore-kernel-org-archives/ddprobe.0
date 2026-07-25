Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448E039022B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784971234; cv=none; b=L1UyrCp3bjcefJagtq3H6Jk49WngJfQpmhhZ7UEojwBWkU1isFAi+nGF2SZCxcXQCdNaAe6bibWp0pq8sf9DSbZ+Q9tovaI0bqIfXEMpq82XVdB5fef6dDHo5gbhWlDBQ2QLgabt3mfHYxOR6719Ucv+stP72kjiKUjjtPVhoLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784971234; c=relaxed/simple;
	bh=Fb6d9WbqsJL1Jz2l8vbVes2eOXFv2WO6S9XvRugVToQ=;
	h=To:Subject:From:Message-Id:Date; b=QePENNE/yEBsU7hHWO/swwaw6UwbtsbdCwgONhQZgleBKKa0CZJG3HP7FcGvtOT7BB86aYzSFLN6GVUSr81XNOx6nKRCTP02o3CYtPKqQmsVlaBxFkO4Jt/cgZT+QeYEp6M7IdiXjeUpAA6tUOw2qcD2Qq8fFQNVWyXpXzBhwAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Elu4IuGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Elu4IuGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB423C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784971233;
	bh=Fb6d9WbqsJL1Jz2l8vbVes2eOXFv2WO6S9XvRugVToQ=;
	h=To:Subject:From:Date:From;
	b=Elu4IuGUvNq0MTncEzWDj7nqDWAkPq6ATNBW3MNIDqqawa0xYmWLU8OD4ahA9iZ3G
	 jnHNh1OtsY2/SCAhmFJEZx1+2uO8ZQ4G5+p9wMmh5W6tRHMbOrAy6QI9qsEj39Ft2K
	 89WFQhXDAUUX6sHU7CdYcIHkof5jZSpIerrFFUdL2xWslrTj648r/i44h5BGO/1WlD
	 aWldLTGeNYMpXcuQ0P2grG87Muq5wHAEGCI0EDCVMaJE8GUAZ9QhKMv+ydfcK2srT6
	 U4WWwfXPTtB1dVufbij8yHXoiBAqS5IBk1F2WSTpq2hP1ldrTjR5f3agyxPsnLj1XE
	 8wNXiix3lkNJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93CFC531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497123368.31401.2514108580257820158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d85f00fb5acd48ee641fb6ccba29b6a4458459577b82092b4d1d80f18c0f68
Date: Sat, 25 Jul 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784971233
