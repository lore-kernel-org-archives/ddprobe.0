Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5FC37FF52
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771890293; cv=none; b=ANWPtSeFfcx7SSjZe7juDAXNStlKufBdTkWLV9mJhkjXLLLMcnVK4Ltlp27IgzfNaRCmr6ovWQkeu7iQvy8IhLCRUQsy/4tyBKYegUiYsEMtcVHl4UaLVUDoOw/RmDL4fXU7eeZGIskvH7xJX2VQRNEq6JUcD+k7tA70/k3kTZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771890293; c=relaxed/simple;
	bh=5ZRZjBnhFlvO4JwVD0OvaGmnE+vGgXLFqlc62xrZHMM=;
	h=To:Subject:From:Message-Id:Date; b=hSRHfAq3xpZyFtrTieBGd+3w4RRrt0F4QjFpJTvqvAK5xfktAPch/bFSV/+IrVWCcc5Gp+2pueB95WTbIqlbuaYw5MGQU/zHI0sTgZNCGBLQwbgYjdPn7jfsxvn3LerQxZZVin1Z2rarf3SLM0GLiYDCnczUBI4XYMaf5KdW93k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uO+4Qh4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uO+4Qh4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03F3C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771890293;
	bh=5ZRZjBnhFlvO4JwVD0OvaGmnE+vGgXLFqlc62xrZHMM=;
	h=To:Subject:From:Date:From;
	b=uO+4Qh4CeiYpXyj6ExBxE3R3Gu+HxTWePpKj6SsVGEsb7EFwiHRPt83uk/F9msZZA
	 LVvFbEU6wQRt1M8qC91O4kLtL5gb1nDxBMRFCzCmoUmCTKTCq8efpRtOhIz5y0piel
	 l60bsqzuLrWrDimQUyj4914gubmj2NfrIRNXgb0fHea2FDUx4T0n99HWVrHA6aNxsE
	 JbOBtbZYZzJA+PbjmSRvSWuz6wbVLy72Z6fIidB+2ikUsQ72HuNr44MDuUuOFURyBc
	 w5jILsdigHROykU1ML+ftDWlmDTvX3erfk62Ue7ELw1Gf1otvK8dnshefQcrQzppOU
	 sS7iYeouph8oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92336EEC2AE
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189029358.12046.16209519162152342293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8e0cd081cc99f8973e777e8ecbd5c11f045437f065cbab859d9d741a7d37d6
Date: Mon, 23 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771890293
