Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DD615533F
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743895194; cv=none; b=JveeU0SKeDmZeMHPxxULfmPZRLFmg19jknfPxAiF8fcFuAxpmEXxIibUj9tqwEg9fmuYEwZ/v2EI4fHUQT3pfMW4RZtKx3hkpNorpweE35J28MgDEEAlkhZzBFbwIw39Rgx5rqY1HHjIiNK+k8G6hrGEiJfj+DpA0WHAcJDIRTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743895194; c=relaxed/simple;
	bh=im9Uwr+J9gBy7rZlsKaWLltV+luSrT0NOCFx9KH7et0=;
	h=To:Subject:From:Message-Id:Date; b=VwrVq6t5hnS+iHi7Wk9tfsi0CboeRnM1PVCHdn6WrvUJAoJq4N45lF6WNtdVTIw+wDWf9GdwlaFQyCkaIH4V4U/c8+cBerRisOEbetH4BtP6eH/wIbJc1m7BB936kZquesNEFldg8S1UBGeYG9oUXSqsvamEtLFNvccQy6NUmLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOVyX1wg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOVyX1wg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC04EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743895193;
	bh=im9Uwr+J9gBy7rZlsKaWLltV+luSrT0NOCFx9KH7et0=;
	h=To:Subject:From:Date:From;
	b=LOVyX1wgu2A4EFQtGnhwu7zVNPEt2SxqsXEAEpJnCEEc8RObmJAy4D7udQzkmnwtB
	 waGqBEQpz/AjioSQN24gXYwX+UFzZPrmQb+5aGYDAfyaL2fRHDLMbB26VJ1M0kiDi7
	 L8+miVVcLDe6b8pk9opBdj9jwCWe9fHYrF3MQAVocBCqfJgiKH+VbFzRra0bpjjho6
	 t7Em/wxXJbl71UkbIVcUYDj6lHzNOnPeNMEcxAWv9pxamqzep3rHBGKRyuBPYqpFaf
	 WJZ1OkIjzCdYtDH+gsFgvGYxiPf827PG21IamuA02c7EgwOR/h2yz+94Qx6P1ieupJ
	 B5XKxGqV4dLFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CC3C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389519360.24888.6007926542131551756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc828f437a27d6ac76385174095886c2914e3d33d16e94f8446b6f043a491f4e
Date: Sat, 05 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743895193
