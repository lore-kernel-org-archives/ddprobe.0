Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D81284662
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747303796; cv=none; b=p+6wPberVinnlrMot2RrjkSftB41rY6BtPRCG/BIctp0x2XssIc4TaTW/HJ08UKTxPg1nevoLod4W4zdLTqNxPStJRjgnuuc2vwr5MtS4lm2WfV/hW4XxTrsxs2hWpugjg9f+aEuJkoEQ0xmQWsEdX9ZZHhe8nxXCFX+rlEx+Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747303796; c=relaxed/simple;
	bh=6Y9P5rRMJCiT6N982sd9SByyT5fK4QZmyim/b4oZvuQ=;
	h=To:Subject:From:Message-Id:Date; b=YgFIGnJA+0lQZwSpYuOPhKLOmMBWT9yw8knAaKqhMEhbokVOKRBIR4LfaDLkKHx0EUh2Rw/q1n/jIvBwR5RTA1EdQgZzSymj/hDfn2Beg2aGFZtrhkq++rZs2+Iq6SgZ7zeiv8gUQeCNipZahZ6H59y4d2mGF9JudjzitY70ui8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QX7Dwk7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QX7Dwk7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747303793;
	bh=6Y9P5rRMJCiT6N982sd9SByyT5fK4QZmyim/b4oZvuQ=;
	h=To:Subject:From:Date:From;
	b=QX7Dwk7cHZgFFl1+2ojDHhCXqXkpQcHAFmN/ox7t9jpdF8fHGAwJ8jLkQ4vdjjxk4
	 Ex6fpi+vdj/PKetVko77Veivwj+schQLTziVmDvsdnJ5ArUxzTeiFgTJ1UeAiKfcNV
	 cu3JZ3POuiUXZ3Lf+Qaf/ThWJ0WZa6rZrWfwdWbd9a57NhbIrmvCez5rAThgetZ2k5
	 2NOEMRg6CrtSbwbTvJqQgNk87aAY0YYpDDhiIUQDAVDFCMWeGaF1ViEuctK29w2LhX
	 vK0vHIBPr7fTk7VvTT1w0RVrIonfN1g4IIbR7X620GEWDH3Hi41NCMfHlXstQEgrdA
	 L7cacmGN6QzoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBEDC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730379357.24173.11658491718246458998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53d95cb5369cf936dc15221eafc7af506f4b5e8f1994d2f5cf357a8f1faa405
Date: Thu, 15 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747303793
