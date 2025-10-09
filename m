Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0BC23E347
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760046594; cv=none; b=ZSF64Qe837nN14AJEaDrbNfn577AHc4cfIVs5ThtdUR52rvU0kE1TBLnfT5x77USMsc+vOGta+D329qmT1usYx8WdxPPYZbbaFAJdPeqnGHR5NELfZGH3xB62fHjMfk87sjsJId9k+SfaOSqhWG58DGI3YUzu9Ot2zBwAXec/yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760046594; c=relaxed/simple;
	bh=DBXUHbpNG8A6inNi+HHcfsikmRablKBB17s3EEshk94=;
	h=To:Subject:From:Message-Id:Date; b=EQAIqsNRUdaZ7qSK8yCuN4Ik6kuUTSbEZyUAVKEYXw/hj10Rgrlg6T2bbEpuauMOuXIZB1TdaojMDjX0NpEgTpj7lz1OUHpO6zVIwJYHKKuCYISK3qi/iE45Eqe/Odp9W3YL4jl1qCbWmBs5oIgttOeDlhksShSSp30tEcWvHQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAYL96LP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAYL96LP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9559C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760046593;
	bh=DBXUHbpNG8A6inNi+HHcfsikmRablKBB17s3EEshk94=;
	h=To:Subject:From:Date:From;
	b=jAYL96LPpHUgkQyWo8P/4/0mB+L7pMffXGgzZnUk61F9tk6/kcDOGZxzmTvsEmLES
	 AOXqXV2yoCD3rlBIYA9QgZMECjGHg30i9MV2s7lh2U6yr+4UdgVmHdrM+y+434k9b7
	 xLLQE7nbGkmx0Y37I6UP+76cvgqsBQcBPOb/Nw+6tFEFs8i2YNLLFeW6veeQ7BMOWm
	 txwyq93S0jKgN2capPesIAOwtWAqW87NvSA6qitP5qpELxrFmEW1QkjP4q2/c3ofny
	 HrILM2sj+2S+SfXT8oF1Jy/Ib2zUGt2Daj3sek15D5A/9XfpBI/PbUfHzRxFz1aTaN
	 aHuFI77vJXBNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E94CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004659357.7605.10869046121323531015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a6a6d8cf6d0f93d672db8c66a1e1eadc78bbf91ea45a110ba31ffd2f97401c
Date: Thu, 09 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760046593
