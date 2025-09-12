Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26210313539
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757687394; cv=none; b=C2Llg6HOwucv63xsJt5NvwTAjny5hxOoP1UGZxI1CYElNkEGLDV6FsAFbihem6Bncz/vEGc2Na8l+e8Bpk78l592VHWQqZZEZ6keIvFLnt0f6g9LfC/JQo61OCy27FHnSxgjgBpty9YVIPJO4DRz5lETJW5SYSJ/gBmbufvuI8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757687394; c=relaxed/simple;
	bh=K6hPuFoTODkEVcgc2NjvoNkO0e3jMPC5SEFTzplBA04=;
	h=To:Subject:From:Message-Id:Date; b=XJ+yilRN7kG1xrkH6Mko6jzLKadIDvk9GYWLNt+y3jymW40eRBvZRth5OfnATY02H8wzO6Xje1SeG2NnESDVESHky1emJQhYOrL4bZ1UFfImR9YGS4JHdPSBWPTvOHNFDi4kMJ3KEQ/M3epRvANcPXzYKFqxIhOsXnWr9a75+qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRWCAMjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRWCAMjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB93C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757687393;
	bh=K6hPuFoTODkEVcgc2NjvoNkO0e3jMPC5SEFTzplBA04=;
	h=To:Subject:From:Date:From;
	b=pRWCAMjMpWkwf2SO1fFaWjNwzVci8uaNVTrPB+unl3mwjrIm6wmH9D3nLbpRkMxzc
	 zNogl6wdjyS9snMrTHCqVD10rIiPueUww9u31VF0uwK7p8vgqwBouELEs9BJHoEdBV
	 EgkC8pOpoQ1oCy9sIcL34ZzmVN2ur4YPcZawXwix7ACftjKeDZwHz1vofTt8uyeu3M
	 WyV/aHqsxU4+NXLGzjdztQQpZKjyjCr3IWpATPgcUJ5P4ve+DQp4d+uy+QxWVbao5h
	 Fsl5U5XyQa5Ailf5ltzw7O6C3U57fjtopLrbmfNLHUqxHSjW7rNOUTO6wtl5xD1qeC
	 HZKu8aI0rnkMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F867CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768739357.24286.8281249546814204691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2929ec75c4e87ffb2413db8b8f51f975fa24e2b8dcd36c79db12d3a47c6de08e
Date: Fri, 12 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757687393
