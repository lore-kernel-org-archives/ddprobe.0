Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CA31F2B88
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751372394; cv=none; b=omVrT6l/S8YE5dGQTYI70kIPDC6YCqNPd9yUGc7YT7JOuoGjG+OtWmWcNLIak84Jng5Rfhoe0FmLgQ2B/fvP8fbifKr7UX1IZHB2bNVQGLBSHVR/S59kvIkM3jiDei4oFjL2+p9dKarrnEamexI7VDXVYcu39Si9DFOLsn2x7BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751372394; c=relaxed/simple;
	bh=Paljt3rRW4phtMQkxR+fKiSx7fM+OEPzMzOyHFUCzWI=;
	h=To:Subject:From:Message-Id:Date; b=kGL++QMQ8yhBesA7OMnAvX24czfaePhgXqKL2SjMbtJSGqiR7OK/wk1jLv1+rovX+5MRiNwPzChxcFg3C3etvHxPVnz2D45P+acgd/c37RgGTAbsukzFDp2P91z7y39jhoKgb8X8Mz53I5QDuFyqNSam5ggqdqQ/delpafCpLWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5rO6tW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5rO6tW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41F2C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751372393;
	bh=Paljt3rRW4phtMQkxR+fKiSx7fM+OEPzMzOyHFUCzWI=;
	h=To:Subject:From:Date:From;
	b=O5rO6tW2KUX8E51dpuE3PPto2hx1Nx/LEaaUvX2nO5G35V0ND0K59nFvDq0N0huEz
	 4sv2D3tzRl3iofcYuyHXfU9SaO5VVs67MWTMAFVmu0jr+k5qQtTRX3Hh6Ut9V1Eh2B
	 42f1hxocdyFR38QgDDpE33dh7gifQeI1hc0dhOTfiNwPCkNea4V/FuJTgh7tDMv4fy
	 don1Y2Jryn4UFp7B6ZPicJbnxub+PQ7jBlYHTHQ+AfbJlTAiyySqJfCmvsND7SavS/
	 yXM+V8a0HqFIBd1Mk/KYpDM/SeQ6EuUyy8Zj61ivQ/JgM7AqnPmN1TmOWChBcELszK
	 twutbN6WpZe6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ECCC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137239358.15997.4839145200542542191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b329dac20d08c260dabbb4273780906128bfe06d6acfac4c50b8b46b5428f1c0
Date: Tue, 01 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751372393
