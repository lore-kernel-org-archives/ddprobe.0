Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285622773D9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759484394; cv=none; b=QJngymDeIo8SUfmrLJeUnUUxL9UYss6PD4EKobRPye9eJzJu1R8SDbNIoQW/2Ndu8hXRsJmy2dIGC/RrToMPG17k3RxLwrUVTYVRUVpZJ0thh9wWzfqGpXzXrCmTU7czEgoysXknmiuT0kmAjGn3sA61DcUhw3ytKLFt1zWHPDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759484394; c=relaxed/simple;
	bh=SUod2BQABB88LDBWdjlKv9vhQRH3H/sJ5LGfcsZnYtM=;
	h=To:Subject:From:Message-Id:Date; b=eSqxWkKhNrY/yLJuosqCeU0H0Y2YJvHH5FfUtEbKJfz6P+2GIh5uMyN7ozMNZK07u1jE3gefPm4rLIs2tCW9+Vt3uRGnevWsV283I9bYW+4qJUsYbrFeIcn78bVN6CW5v7YD7EPC9rfJ3OQ0AAgzL/2wAjCbCdpL/DfjgWLLAvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVGeH7Oj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVGeH7Oj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F61C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759484393;
	bh=SUod2BQABB88LDBWdjlKv9vhQRH3H/sJ5LGfcsZnYtM=;
	h=To:Subject:From:Date:From;
	b=DVGeH7OjWJn4AI00X7bL2RE1J3TZTfMDVE/Lwerbhz9UUEiCVZj23mvoFn8J5SsqZ
	 lRqrWjCvcGF+lYnadkCU4ym5aeRBxija2YY8OLPm7fYA3Eeg3OagwYezsXYX/o6O4Q
	 OgLZgSDiPFaEILulOIssuAG2OLx/lEhyd63Klr5xa92IJIdu0JOJIpZ1V0ncbhjUOq
	 7a01LfYnnRftxKKTKmBbQbLpHbYKpf/mEZDrAgDtix/9DbKOS4VLIGfRQsr1/ENFZc
	 pY6KIzFvY7CcsSpFRBgc+wcVFPL5Qt8GIDGOGnBC26FIDPC4N3NEIyVtfT/09cmJIu
	 hUEjTm2Vj9JUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8E7CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948439357.22262.18205073495189530279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d266242763fd07c978137a3a38e52fc12a6dff516e7903bb8d614e09c7c068a4
Date: Fri, 03 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759484393
