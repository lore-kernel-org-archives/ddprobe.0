Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCB654BC3
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714293743; cv=none; b=V2SS9poDgYmYIdYdIsoI1vBXwii72yQH2/T6jC8Uzs/UszT0iGhPrGWTuENVeGCqXLNYJciHwqG1Uk/+gankHNhCW0SYJ1yTBbNE7kCTRdXqgmnX0IGn8Y2/aY1VcWQVWUSmt7Fqy5mZeolxG7rR/dWi62J9V+KMtgQkJpiETuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714293743; c=relaxed/simple;
	bh=D3ma6NSeMilDUyFlngnr95ewbOQaAk/eLiF8aDZaTlc=;
	h=To:Subject:From:Message-Id:Date; b=t0So44jZHHMcZtf7iZY8/0ojrMg9EbHDdd3K5CqondqlgpiAfTOc6hwabsDAOWAzyZj7ToynTE75ZjfojafX/eovkoKyLwn79MGjEgrUEDuk6Va5CVRamJ8UIIA4/2Ciemv1U357kSENrVNRCbV13GVcQDeNEk6OS7L+nCoBqas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piFyx8kb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piFyx8kb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34D4C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714293742;
	bh=D3ma6NSeMilDUyFlngnr95ewbOQaAk/eLiF8aDZaTlc=;
	h=To:Subject:From:Date:From;
	b=piFyx8kbj+o25GaeNkFFTjYQ/7gG90bg8JJwZ7b0RXILVsd2IZ6Tyi1r/Z0q324DT
	 7k7jKkYP5znxxbemp3iyhoBA6OsYYTzY/ESnSWcP/APaO6RDeTnm9ZFMnJgkquRHg9
	 26reMQfcWYDH3uc2XC97SfZ8QCLcb9ppqtYPBtamwtyktkJSyyJjdnO10E5yuvrrd7
	 lMdUUK78QUOuevxrd6D3hTkRZRlzpWKtIZ/ZLP52cLNXv0RBwMZ9obeJM9HaRmtCpQ
	 bxqK35ZOXlavDECehqwKDZhZmzT5lncHGueMWd3NewnN7zKglfsnb6t1IBt9GNFJAh
	 Jij/JkvSrFMGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE167C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171429374275.17638.2556178326692417219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4593e5f7529962453d0240d1454450e2682ae0fd4995c67c72b973541537a987
Date: Sun, 28 Apr 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714293742
