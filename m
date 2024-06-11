Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DBAEDF
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718065703; cv=none; b=JJ30A0M99F4ysK91saWKowr6FrsrmM9sQe9NqtMbPi30i4LM0Vfbhu6ETiCTTpfpm43cCvvD+aZEyzq5P5dbLsR+5pfXI2PfeP+7NWPjhfDR9DPgK6q0z70l50PPQV9TKx0u4OeGqM3LON7JCSbBhRe8byyq82rPcJaEEra+cZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718065703; c=relaxed/simple;
	bh=YJKjYUD0G7k0/anw8EWD0sYLBAS8vAhHwxZibPWV76U=;
	h=To:Subject:From:Message-Id:Date; b=exMDTGkMVOK5DzVMIZN/0dfHLEfq6cTXcXrQIXN/O0Fhwxwf7IpxSUEU5Xrp1B0+UPGVyaoAH7YBHVzd7qz+gCwMEsqdw0e+vG72PnYukLgckISrwLE/ygspulGX7bS9ovNhT4aZZkqXAJD+Jxgvx9c+0OO+JLJ/66mKujJR7lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmNKvLC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmNKvLC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2A3C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718065702;
	bh=YJKjYUD0G7k0/anw8EWD0sYLBAS8vAhHwxZibPWV76U=;
	h=To:Subject:From:Date:From;
	b=RmNKvLC2h/8lJFABahPAlgL270aoteQUTEzB2iw9cc9+aCSpMCz+u8QE1Y4SZaNif
	 iq62+ZPcawxSNBgmhxQQ9qsFdD6i89xIieMYzspkD+SECGHYXZfC038gsC2mkMttMb
	 JpSPLFsO5nyRSm3+I6Rw9JCNI4+JlcDnKpKt+czyKzCreeIUc1b9v32A7EPWw1BhOE
	 a7iOXn60/Td0Qnuj5bRXVhqUu8kX2kkmBvOipbafdStkvSYZJY32qw7rNRjVSsIqzS
	 57/WqYIIwhmtGcVaJiqAf7Kn7NVQTV32u0P1Xn0RGnZceHGev8mlMxqslfyDYLJRp7
	 OR1mvlTaOW95g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADC5C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806570275.15585.15885300802448274631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1808dd18743fd11c60289e8b775e23b4b5a25f1721b5bfdd3e2979fd787ed98d
Date: Tue, 11 Jun 2024 00:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718065702
