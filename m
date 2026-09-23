Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAD435AC24
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790143234; cv=none; b=H0KXi2N7PTBg1VbbCu8O2e56yU3gdp5d+4LmgaoYn1yls0z1Cyi/q2xTA6G8P9+MS7s3lLFc1Q7nZxrkLC3btHE8xLbFEvBm77yQSzG4mJWe0F7LG/tt4NEqgPSJO+cfNlxuCg02DF2//hWVEin8IfaQ+/m36a9AmcdjHr4wIcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790143234; c=relaxed/simple;
	bh=STsq7F4bJga0HdcXI/P/IJ8MhT+PTR5X82Jk9h6EyCA=;
	h=To:Subject:From:Message-Id:Date; b=cH5bCipbgJs11nUh9JQpZJx0EnnkMb00AMNviQpeCpZJTmrq/PAI2UR2vHQ/euEhW1fuk+rDxGuCrJ31PjsjPLbOQV9cmXt0awFPIpWmofVSQ4lfGrlm2OP7JdMmkoqsEzVNvsA9RFqImKweVxHT5iIFgLQtcsTgib1yLAprYjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mV/wJxPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mV/wJxPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B93C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790143233;
	bh=STsq7F4bJga0HdcXI/P/IJ8MhT+PTR5X82Jk9h6EyCA=;
	h=To:Subject:From:Date:From;
	b=mV/wJxPwJYKvNDB7K/htuwXlF61sViEiXfK4LQnySgf7u+D0xet4dHHZhvaBOjP+6
	 csXrK13omSXhSOrVcNjjuVhlWjAW9f/waCv3jdQ7J5/58klcBUe3T8YIeY+Gk2/QyJ
	 cAhWqriCav+imRYKTMJtPaIw8OQX2PkjM2vAFE9PAel6meT8fFLw++j2hLsl5xr1ha
	 5wah3IHyU19oubGutHw0fXiabF+Aj91kr0tUUgU3hdGzZwoV3Q2rXR/azpKueeyXOz
	 DKa08sJPUcnDYUrZhcyLhssegkY0oIYmC85ouy8GkTj1GI14lf4RuPX4lv9t4ZeVXI
	 6tFZwrVEfQgZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1760C98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014323370.8641.3837875640080524353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f5832b98ea34e1d4c9e770cba0ce8af7cfe2c282f1c1ee15c6d743a7f0a7bf
Date: Wed, 23 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790143233
