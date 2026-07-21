Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7C34DD6E0
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784647714; cv=none; b=FGwu5SWv/bmTcNJSIiPtEKHDgHA6K6+6JnGGPsy8igtatfDa3C367trjo4EZolh9pe26cDx1d6u3Z7oHVcABJglX/VOHRaIGSNqwRdwBBgPvpRTsB/5K08D3FcaJ3zxLMPo4hlnGnTlH4+7xOFdu9PGfni50fyieww3VEKQ7BAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784647714; c=relaxed/simple;
	bh=3jor2R2CsZmGhEU1BvQigVwjNpWBZVivlV0/RVHYdKw=;
	h=To:Subject:From:Message-Id:Date; b=l1T62xCCKjpktUp8MRlObh97CHXh2U3OQZOChfASFt4VHCex2stgrKoNc6VARCi9/2R6kXzhsxw98VpEQXX3+oFKIoK9Of0lgIae2TTyI9rHs8+TFFtuB3YDqhWFjmI8t0VBmyoWCbEDt/TLUMuBImhn2XGmVaxOUrRXJbiBehg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3Bkt8x8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3Bkt8x8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA254C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784647713;
	bh=3jor2R2CsZmGhEU1BvQigVwjNpWBZVivlV0/RVHYdKw=;
	h=To:Subject:From:Date:From;
	b=b3Bkt8x8UbTSS1qYeN3uOGAFsHH7lS6ScV7VGB2bnBcgE2z/TVWLy/oCBSbk3TYsD
	 RQ7f1XS3kkTOLt1Le9TzFw2/jHTakrf+kbp+H2/F1xMd4kIvmzwxfIJgeo25SdrPvU
	 vtl5Rx6rgSEpT2zyhlXAiRSWT4DxZF32IebpCZmn5j9ghigijWlSP5PRN/EK179HHw
	 M9LBCO5ZEzgfacIEdM6x2jX/FwpemvChxxVxwa9RCWllKNbZH9KFtoiZ2sPHylrBkx
	 paGbn8LyrTi5b0crKyaw75/rFekJunslYxFn8H8t5fk0vYspVHq3z50cJE4cO+DPDQ
	 2UGnbbErHaFNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2918C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464771371.16536.2710228419991844694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b1279f77535f1da593ed535ae3634a15bdb660033a9c1f08b1dc9787f612a9
Date: Tue, 21 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784647713
