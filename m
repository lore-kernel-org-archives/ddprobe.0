Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18846283CB5
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750414794; cv=none; b=YOPrvmQOWhiWzdeo4Ds4854VZ4CdToGP4mbbc7RBdRj9fPfAgj9n3FPvJiwUibRZ+YuzgYkhrenAT9Hxk6F0V/UZ3TFzcvMn2/uSJN3/qCTnUfioC+AjeWCcvSShJnmcQ1TqOuLtocWn9tjToiN4NZAvyEkOnNh31aRnulVtMM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750414794; c=relaxed/simple;
	bh=T2xE650y9EjL/o8A2Mc6EDJqXSqFHW5+47k9KYIsVbQ=;
	h=To:Subject:From:Message-Id:Date; b=XbX4m9vCCqRpue0NcKIZCQaJ+9AU3+ri9JD6VDskRX8FJs/PbLb3qtRxuiBoendbqvDKaYzV34Z7L0bIOl3roNviBx6Hoso6GOkXbShCWoTGMFyiZoh3SnflAnfYTFtJ3iwS37XXx1lgrdl0Y2ZHZKfevbasxnfjZOlbVTvSXjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzpBNwRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzpBNwRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DE5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750414793;
	bh=T2xE650y9EjL/o8A2Mc6EDJqXSqFHW5+47k9KYIsVbQ=;
	h=To:Subject:From:Date:From;
	b=YzpBNwREnxNssbikgVEZBd+MqZymiAyZ1oKSvLun2W2drX+zlzJ2rlH0vsYG0byaW
	 UicR/KsGcxMIdVQgF8mkRe7b6b7Yr5LNspm0ETeJoN43csREB7TbmLVxwARsjmNT0p
	 QK/JHlXpx/f8uteELDItgTUQiVP+yM3ZLixxpe9ZUHAA9plCQnKD/zy3DiAOYYJPZ8
	 Ehuu5AKdJzvDMzuBYBsop6tWrEB9w55LuKKbyg9tVutJ7HeVi7gTW0fr6zSknjR/L4
	 3iDohfUKpHyjdnlSCMIfsymqZnr0ZGWkNyY8xULtQc4qCLK/6uk4jIb4ACtAk6eKN7
	 UuqzUVmNbpeQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F895C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041479357.11705.17269746654938040384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41773cd0f1c82936e096b0e26e5d0fb620963679830a35d7a9c89cb4664df9f
Date: Fri, 20 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750414793
