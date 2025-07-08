Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C576203706
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751964594; cv=none; b=fkdVRreAIHDWBNXgIjb0SHywuZ7ABeYOgy41LTtIGx7YtDV9CZbp9EJ+6qSuMM56u6sSNru5Kp0f3GEVVajNPU+FadFS6QcXf/ppEQxDAt/1ulkV5jOE5IieYeGACDfFEKvICX7PTtaEXm/4okUEzDxrTuHsG+IxvWDwguYNa8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751964594; c=relaxed/simple;
	bh=keI/akxmaJNKQGipqIsQbUQzzVVpEmE9Klc+IwgsKbk=;
	h=To:Subject:From:Message-Id:Date; b=j2+EYjaaljvNjdwcFnB3rfh12nnOAOnc/369R4NeaaQVxg7DQNX4ekro1mGCZD0nufeJPTAsy4yZhSuFQ86M4mqkcWyEfxHniphSjdtCwcnI5S2K6EGSezZu1dDUVHvcDczVnjXFQ7FIBfcliuw+IFp5GBzi/l7iRs9hK++p9x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eb6dyCBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eb6dyCBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29B0C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751964593;
	bh=keI/akxmaJNKQGipqIsQbUQzzVVpEmE9Klc+IwgsKbk=;
	h=To:Subject:From:Date:From;
	b=Eb6dyCBMC3DfG8uC1JG28EFXSkjO9I6KpvqBfqAk7nusTNlvaZc0Qcw3D5RRn/Xvr
	 RrqO7tyxNZAXzln/KQVM7Et7fJorqxzpKL/9ERXVLx7gKY8l+pYSokiKlLAiCgQ87p
	 457rlUMn0hniUt10Z1kOj2gezE2tr7oOumiwtMpVq/sk0+t6N5Vzm/jvuGns8DQ9io
	 Yw0p/PZAGBqpV2gsLPL0jwbTzqsWT9cklJRQEIi2VrrdNJvT23KYPoDqVs+ioIvduK
	 8fGdON8TPb18s0CBZAioXXN+EJ/44DrANus3tX3dYLJXav1+S+4D3WMn4SX4d02mwA
	 GnPcRHehw1/IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F52C83F0F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196459358.21375.6424741026904967457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7601b6fc06e71befc5eab69d10fd97ea2dbfca3ca58033c2e94a7c1034ebc7
Date: Tue, 08 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751964593
