Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0AC1DC1AB
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784381914; cv=none; b=iuZm8nqB1aN/tnT6w8GtGi83q+BvJzGaqJ/HLDX3B8EFbXlYQ4aqyzCuEdlIDZExPVFu7cBTm2t89E2YyhRbNUfUqTomFhSPrLogUgp/HTpLZvBfu4+a77X/K1OuCxGWs05YQ04DetyUOJPhkB0SQARAxl4eh4kn1ht9dez3IV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784381914; c=relaxed/simple;
	bh=Lz0mj0H0wVr2Hm5+Pp6jnPkhLIVVql6nnctDnDKNaa8=;
	h=To:Subject:From:Message-Id:Date; b=dDHNEAqFg0Sxcj8Fl5rKLa7KiUVO9FVV71Z+cHg1R0PMluvIRKfKucKzI6SEzpE2CpZhpfrFOI51zQVXWJuxx1AWkDlZ+LOcts8i+ZHeirpMycRMgl6a2621REg09tA0FQmbkwPuBn1VEWZx3K2UXojnWyT/LKMxYbyjSuPxbvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upx+kQdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upx+kQdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E45C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784381913;
	bh=Lz0mj0H0wVr2Hm5+Pp6jnPkhLIVVql6nnctDnDKNaa8=;
	h=To:Subject:From:Date:From;
	b=upx+kQdJRBJqAYrtkyObl9b972tdnvmtOYZl5Wl15bS3eiXZlaRxnvC+OiLlM/UEn
	 +Mql7Sz0RMCLI4SbMX5vq46MQ4TYVDo+OSJxlaor4Txm+gCd2Ph2IgpP0fvWWJGPhl
	 G01jD+bs6B5mKtvZZFhDvF2dEH3PyE5yzudA+ZeFKwdnMaXR9ZgQ68p0uRyD1fyA7s
	 DLURrEaSXEKhpdtRG+Lc1EwPdRZ+8ijXEqiQUHxSZ2KUeJuJJbLzMgRTx1TkTAYn0x
	 DcmJld9tToCyFZo/lfm/tJF9oPvRooDaLJ0cfa2E1+CWZ8pUEA6KV3iwBTsowQg6x9
	 yKDirJ3+WPhZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB8EC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438191368.29510.6552704477854255277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25a0b81cd8bb7060457a02911b729a8f69e03e1dec9c6df8b5597f43a580481
Date: Sat, 18 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784381913
