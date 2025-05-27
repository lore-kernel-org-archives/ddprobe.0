Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F3126F449
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748366394; cv=none; b=BogWh37OjX8hPYisVWi4gu7rjcHZPeaX+mGQY6NQJnC+zApZGpSuGkmmBj6ziBAq1THuic1ugdFKtwCS2Nc98c6u0WgP3srTeov0+qWCG592luAXjXE9y2SHGdPGQhyGQ0CExkrjCL24MqCTDS3EJ1CZ1Ep3K3PmJA2o00Kx3XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748366394; c=relaxed/simple;
	bh=w1S9tCQNl3FU9kJSCUx6lHbm7srLNAmKyEXMUPBEVjA=;
	h=To:Subject:From:Message-Id:Date; b=VhpJ8FS3n2BZ1T8nvFeBKRZqNMe/8JUrLAF7Kl50NPmvaD4lIMe4G2xanAEgd0f0utU7jx+Z9Pn3s7If8JZNkquOJMyo3rUKuJH0sGGuabhDa/9qIb5Y0p12+rjzmNO5FvyaOjNH3WVc6pVGY02lfjc9OpwliC49H/dJKk5Al1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ju1lKLfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ju1lKLfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17ADC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748366393;
	bh=w1S9tCQNl3FU9kJSCUx6lHbm7srLNAmKyEXMUPBEVjA=;
	h=To:Subject:From:Date:From;
	b=ju1lKLfUKb8YDzAlQUgjhuZtVlwTOeMBlwTTk9ua4zR8MMjGqRKM3CnJf3GY710QL
	 V/SlKbYFAfuD4Dlmuvty5AE5mBDWLLT47EnuMsdH6yeKf558q/ctedzOILX+lYEY2r
	 1u+I6yb600E3nBYSzEShysfeJqbrjt0wrqsp25WTxfsCO0PEsWqAUnKdMjw8a6tWgh
	 AqcIXMPpeRhp2YIC6ew68ou2T2NGbFhBJ9+QLxyQ6OcHztzd4+CFPSIPE/TasqzlVR
	 0rjckhNtVrk+7jeUpN4noCHKI2iHmK+oSC7c0OnSkM6/yPghNRolGu28eOXWaAnILO
	 r1Z/L8dUKBeiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91207C5B543
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836639358.18301.3116351272256253666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375c988d2f6fc1d881d81356dcf53f5d2f2a4b857a0a7ec3e8f3d2cfd0d374fa
Date: Tue, 27 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748366393
