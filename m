Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4748635D
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774764894; cv=none; b=bKBm56JiVQJ5IDPWdhz4mslzx4FRAy5JAEldt3n3AGoS6+2SirC3RktxsjO9jaDEGt1bCp4Iq8r78h/z32yGeUEA1nPSf8VDuMtRhZ6kCoyLQiGc4AZdgrgKI1R1Cm8cN+ttWi/tulbXDuPUUeknYrk385PsUvYo7f9vUzpQT8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774764894; c=relaxed/simple;
	bh=hPim5M0nHEfsyc/NN3ThnGLyPdyrLV5OSbncorOrkB0=;
	h=To:Subject:From:Message-Id:Date; b=FQSqKxXeeNJ8hFxYZeHCzVTgscaIaWla4VvTB/hZhiNxWS0irttWA9urkwQ3bX+UGjWWbmTclTTasf1/QcE3hdnOk15f1YrzgID/9uaUK8dUW/OnrF/+Cdv+1RPbHnmSD8ouKs62/7kLoOUwfEVcRcgE3eNH65H4rca9Ldc280c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7+2VQR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7+2VQR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A686CC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774764893;
	bh=hPim5M0nHEfsyc/NN3ThnGLyPdyrLV5OSbncorOrkB0=;
	h=To:Subject:From:Date:From;
	b=r7+2VQR+W4UaSgMGnwT60Y0BgZsVsXikg5f6vP7G0zi6wNbW40m9O1Y/3R5+bj3gD
	 +h7GdDrHTQ2tJznNGDSak22KWP+pvAyx7/qms6OlPa3OoTwZU/P3OWPydOE6xNabWV
	 0OGafxL2Ipn9LVRmrC2VQ8/tOgPw5QYGiqehqJqkkDJ+J2PZGm6zQPljCHZW/+rO8/
	 c32RT6ETffyLEzlHu69q/Y7FqtRpS/i8WsCRLDuMJYbaadhTltXKGyCzhymWgKrufP
	 MV4PcUMl5o5ah0f8i8S3q/IB7tNhnxSiPfJd96Ie+uTnyqnFkYYzztK9zXReisrmCI
	 iBmRepJPmTP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C31F3D5EB
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476489358.12576.10860206386392165828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b96ce61e19af42390503b9ee346185c4dcb1648d2c4df19c0c2675ff8616c4a
Date: Sun, 29 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774764893
