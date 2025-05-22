Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3321B1AED5C
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747905594; cv=none; b=f5/NWvT8rDlGyQC15lGFgaj+aNvlKOVmtsdrVM+6AWGwEZ7C1e4NZUDny4C+YsiCrFKWYkSF4LLMGkF8EbJmbxsLPrRnzthCLphpi2z3glLuP8JNWvICpUqnNsf00NVba675anPQ0JxJmXCn5+pG3Pw7oQLkMLRtXJgxCWh2E4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747905594; c=relaxed/simple;
	bh=BBoFwf+qxkjDWwhN7PiHvTEjTgYkfM4N3viMN8xDHb8=;
	h=To:Subject:From:Message-Id:Date; b=aL/asb1FRuu/nadoT9lGY6KkNNw6LCr4we+TsjPYFr5IECNbgnu4Hrzhksk1DUx7rUAI8el1sNpGwBbdK4Y4GGOxl1sHjFPtMXUMchQv4We2bT87mXKeX8sjEYQcveX+Sn6Zjab3hnv2J2r26Pi/gZf284I3OquKkeKmD1wmRnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Awgusnxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Awgusnxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BC6C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747905593;
	bh=BBoFwf+qxkjDWwhN7PiHvTEjTgYkfM4N3viMN8xDHb8=;
	h=To:Subject:From:Date:From;
	b=AwgusnxeY7VLCAhVE0yLW7gR5aqHTq8W5KduWqfjCV3iilPu3TtZ52SfWPDXngK2y
	 qE5ko8hCwu/snS972FMRcITIDyTQXBYs85RMHCd3aO6RizeI1YLBBTS7QK0aOV91V8
	 Fojk8kNovqMmxQa0EM2CMWnRfWs1Mxrbb6Ho99ZdZ9ioNGo0C4wgcVthZKGn6iyf2h
	 pRsKy1NjMhrP8zy/CJ6T1LAAqCVRcPgczKPcHDnX8lJ1utcTu7Tg6aNKGocY0l3VF1
	 Z7WTHQFp+hrpDglKdSFyusVrB5NPWXeoaxQ/3zb8O9HwaArRMPLhwmoMnZtLp+KSUN
	 0evA/ofCjd7NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F54CC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790559357.25803.16588971284042234518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e1eeda179bc7a6dae9a8c6a8be533f7ca3ef245b02bf3d0f467836e9353c17
Date: Thu, 22 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747905593
