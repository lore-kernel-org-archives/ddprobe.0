Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E58226CE2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754395794; cv=none; b=YhN4+DxFBp3YYa7r5BdtOwdGhcWEy3xBZ5rQfDCt94BIEy8M3g76bjl3Ya/Rhh+gr4caJXexSU/PlbLE1wZEq3A3n1r7Ib0D0UUEhXVh2xv8LWV7ZX5Wxi0onSrksIWQjcv3+M0sdp6gbyP8Tam0kIGKNBh4/o0GYK/NKraUxdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754395794; c=relaxed/simple;
	bh=U6DnZ8uMHJo4oXoCnx4IF0kJ7AdO3NPkt9vDfWWdFno=;
	h=To:Subject:From:Message-Id:Date; b=ZQazzVjgMwEo09Y+TCghxPQm0IDH2XG5cQVSqEPVNrQ4UJ/+v9v7JHKGJH9aoHQPrptMl/VoqSgfgToSWJ362T44Q5HkvUAF8MS6QAkZIhH4LCB22xN4FGDVi7aWxPZWFimD1CTYF6/BfkKz+edvOtqxeXjcekxPwaDJADeZhRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0zIeMLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0zIeMLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A114EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754395793;
	bh=U6DnZ8uMHJo4oXoCnx4IF0kJ7AdO3NPkt9vDfWWdFno=;
	h=To:Subject:From:Date:From;
	b=e0zIeMLR9x3HySpPpk6KOos2YidJPYtWrLux6kbLGk60IefLeVRiAohSs/Gx9ws60
	 1s26um4OAZIMz3NlDSCFXm0dvPyri5sPGAcJef0ExmJtjMnr0/AJ2pXCAFKI9T/SXH
	 CBBZTxZyH2EvBw5qjJUzLWtGq18Rmk2DRAP4BRCZbGvjrdfcCzRfDOeDrexQv59P2s
	 p1Vafzozw+aXJ4QQx5e5oqKtwaL1jwPXkvxW+Ldy2nLF6gHpsKcy1JvTLu0d9ErBGc
	 +Ur45dCKC4wDfyUeNqkmoJoW5iyx5ZZ4x3QTgatznJnKYRSk9346dNF5ZMT4hCztSY
	 S/PqV3aL5Q9ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13BC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439579357.14200.10588450253312516847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963f8b3bc6ff90932fe1fdcf121f30206dc8f95acaa6a43054b5123081f3e626
Date: Tue, 05 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754395793
