Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14D12367B8
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747138793; cv=none; b=ToJ443qnPMNi2o3J7ILiAvkobLVZuW+PQkwkSivpEEdXqOwouwU5nFetAVrNRdLhuFGw6cdU1H0WQ19ZrIBTI5T5G8YtQsVuBz151ChPvwJbtDFNu2tzv+NO4pyaEkw5+LlODcRkjdZG4ZRNfACjcybedLjKZwwFMcerU/JhRUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747138793; c=relaxed/simple;
	bh=JTXnhY/TCEw4xQ+ZFsvmCsPGnEdURVTn5VkGjRboSS0=;
	h=To:Subject:From:Message-Id:Date; b=rGTiX9T0d2dB4NSZwfl6ji4Y38wGDZS66SHbksqF5YjivBwDvRjUCRZZFhhKh2wTxWU2S+y8HBEHVjaQ/wyD0V9zaWHg4Q3oPzIxUkV9UwXQWuaBngOuvv/6DuBRA/OqR/IG50qWnjQsYZFpWeVUhEybcRsE52G9eWYqFxQWVgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et+BGpyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et+BGpyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC23C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747138793;
	bh=JTXnhY/TCEw4xQ+ZFsvmCsPGnEdURVTn5VkGjRboSS0=;
	h=To:Subject:From:Date:From;
	b=Et+BGpyirAkl2A4K9rSz0m8UPv5ZsTADPTkdfOyudFo2KqGJLNMKkNYbmJdj7JCVx
	 QAG6gED4DbYiSoBBnQkJDqMq0PgO2q3CEFgUAH/ALZ5YSNOljThRKVmMVAXvtCexp+
	 DxKZL8biuVwhouVczNM8+lULdRgbfQaUKFfmLPnDnpCaWd+pVt5AX+wf9TxLOt4aR2
	 0/g+o3Irb92doj7MFDDKeXS5x2kV1Yy1z3NUN71amTZRiyPv83XpM1rtQaHN6veUsj
	 jxVKX247M3FemeXGcd8TksKPmKT+6PvOUHsi0wWjUZofMEDWoxOOHqqvrReTpMRQ17
	 U/49qc0c9K5RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D2C3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713879357.14240.8896354052027729514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef259d2a02bf7a6f8a41aead6921c93a5fd52ff1f177d8627e36730888f6535
Date: Tue, 13 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747138793
