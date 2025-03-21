Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4061B165F13
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742565594; cv=none; b=b+ZBq9j1/I/8/Rovjnks1uBkBXcIruhmbB9bj/3GC/Ss/n0qOMXHBuicDv0XJB/C6HMOq1vGNpVo6vrA2zHHCseJYAY1dlVAzKCuQo/2onCFuevuUH5HObPFGbblN3CLouAChylu/0dl3L1Ge3UiW2piW9CPUXNwH0wS5XI2m8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742565594; c=relaxed/simple;
	bh=DrGMZ8pCU/IfdCPSlFrQYhSRqwRvTvdg92pdMgWfcUI=;
	h=To:Subject:From:Message-Id:Date; b=bs4eJS/Qw06UGuM3MForOWp7z/zYbXTn4wt5QQL8n3OcHpH1Pcmm8QBsidiQLCNySIQztCZO01MDXdLgvp41gt/202qecWyWoRK4XJvwnRMtkyR9XtBPEb95UF3bcLNbKZgsKM48GB/8jk9i4Zjz42o7Q5s0+sNu9io/CWyQJkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ge8wqGKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ge8wqGKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BCEC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742565593;
	bh=DrGMZ8pCU/IfdCPSlFrQYhSRqwRvTvdg92pdMgWfcUI=;
	h=To:Subject:From:Date:From;
	b=Ge8wqGKsWzdmKnKR4EeWqwvIecbAPHR6snS/Zjr4lbZ9Lw9tq6ihOoV0reKbFcIT7
	 HDjkYnuL+2DGRZhcpxeIywO+ssCmH9s9pLxBd1mUkCE7gk7FENW6Vb92LQRRhZi+8a
	 Wg9WwVY1aN2N3M6dsNIubKccwj9oqEH3NlTs+l0IzsuGZht8q8B2PQzvtv8oNzGSsl
	 wy2igHFgyEn0BJZjIRvSl0qEpoIrochMlvrKHKYySP4IweC25Rdg++DUfeAkYMXge+
	 dNhBLrlFJ44IGaq84HB5/JnKooEo2gNm0oCFqA4tFVR3/m2H4MyNCMBmJN5uv+lRVb
	 9F51UMsc8QEIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930B2C36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256559359.25543.2694242029567260124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aff619c252df51fee647cb3cb0307bce75e5064a0c4a717c57f6f03ed32b406
Date: Fri, 21 Mar 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742565593
