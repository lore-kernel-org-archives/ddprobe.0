Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73323489882
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785663034; cv=none; b=VdJSnxP2zoKQUFXKNZHKHKvOwRgjlV8SRf+6Y8mrGvFcHS+adCvFLW03s9IZ+b2XQy7haITy0P0yQV+hfR8sz/yCYHJdBPDcKAIPR77aB/X/04uDFe4wdklKawxZQud7+ltNTxldVFGUbD6Xpo5Wlq1AXxAk0C7fqX9CB+S+5xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785663034; c=relaxed/simple;
	bh=NgO58xpht1afYJND4TZWr9m+kDJC3ptQsEqFVoWEojw=;
	h=To:Subject:From:Message-Id:Date; b=VAmxR42JiaWF2SY0Lep0Ejj/4WrtVIljJF2AWhnsY5Zk0gqpbshQnjfjM8tf2xFFX9yBLr36ZST2oU59NgnGKjeIwwSkip8Ab6oaUg0SzeB/gjFVZUWfCIQMkMLqNVIhavZNgHROwOD8MvCJitxQ7x+d150DDC+3rV1v+733cd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yonx2t9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yonx2t9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05FDC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785663033;
	bh=NgO58xpht1afYJND4TZWr9m+kDJC3ptQsEqFVoWEojw=;
	h=To:Subject:From:Date:From;
	b=Yonx2t9rtWP9qd5COmHeubuqCq4hfcICWiOCXKY5HDbZWBrEe551puusEyYNhxuwU
	 iXFXSByUhkTtWAUI7FNtYfUIJZ1+t17D88SlIXpeLG1PJ61U8rZ3ppyUVgkgpuMpSn
	 PqUaEXGwO1TzO/CZg1/W+3JAywKng6gfgP49wEiNbDPGNuA5k43gMFxVOgevmBgbgg
	 lPnFA3yeElGz6hvsDHzVSyxU4Qu80mIS96+Vtojn6hm5Rq8hMqZKyG1a6FkRegNTPy
	 3uN3Bt2aS5FDIyZZ6PVT9Ve1eB4ElgzIAtj4k57aJE6FLCrzqE5MxoSIQJpvFFRYzZ
	 HhyqCF7rCi7Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2E0C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566303368.8130.15902396923867773291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc4de9ed71ab9e3bbbc367a24b71f8123e2cfdd6dd45e15b9e36d3d9d57cb71
Date: Sun, 02 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785663033
