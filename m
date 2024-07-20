Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573B38489
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721504754; cv=none; b=dM6CBNMKo7cLXrJCyIdxdGR/mGs/79Ja4fdzVTnnjKXhg6OZtMkO5rhyzlonJEOj0aK0xnmhSNb8YdLgoXpGM5ARTDKt75OPeG2UPJ5PxHsE/jdTMrgmzui1qas/jrzPH1z4fbQWvj97AG6I8rPrV1RjttkmkCuyGnBo85nUx/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721504754; c=relaxed/simple;
	bh=/jj6A4S/gheZtMMhbBd7A1rjBGJOh8pHm4wztwMOF1w=;
	h=To:Subject:From:Message-Id:Date; b=a+5Yw3ssUMOOrCF+jDWTGueYGF/z7xDR2Spj80R3P/FYA6fW8NvA/6SZxtLoxxTSTCNqDa5+gbIRaChv/5VgRCtw9sPyxjr2Bx0oMZy7Elg3X/BFGeuuBLUig7MSBmr9blFA0B50D8H2pBKTdlaEpiCSyeJXdJOjeXNOUAsdS14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRwOO8PU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRwOO8PU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1A9C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721504753;
	bh=/jj6A4S/gheZtMMhbBd7A1rjBGJOh8pHm4wztwMOF1w=;
	h=To:Subject:From:Date:From;
	b=GRwOO8PUQ3oe0EpjJARZpmAvYAFg1+FEjJEg6DB5v/1DCyhzJf4J+A8C0f7tt4R7y
	 lgU5j6u04uhB4SGlfxVa76lZfKSB8RP6/CXP105gcUqNSZQ7KgOq3b1kEQv3q8f0Ok
	 iZF095kDZJO+LVTq51qx33Y2Blq22cCvVEB+YOFey/q5P/SwItjSuutwVuIzwio9fM
	 a3OdXuJU2EVBKhBO9L8JGjC8SpKE5yLP7MrxQPnIOlUzK/IYCnN+aOWejsQKJAxzC7
	 Yw29KFfbW0xuIDaYYpsS+/am7CSRARnvuV5p82wFdCgm2dZOFJv6TegVMO2g+6uF6V
	 lYxj8o7sxaDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45B1C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172150475362.30551.2942601493682597470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f6b098c9190a7d535630c326d8adc463a25ec7be529b085f4aaf20ec4da3ac
Date: Sat, 20 Jul 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721504753
