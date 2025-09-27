Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1882016A956
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759013994; cv=none; b=MiqicmYYqRQ/NfpNNN/PoMMN2A5hO9zXSRPgEV1nSwbqiYKOvI/702jU+ZqbLT/39ivdnIKDUlaCTm2qlx8UovsJXtfs001rLOsWLNv1T2qxkftaANbpldedsXRUQjbPKSyNTt7cvKi+yk8g4pw/DZZ42dUcxIGdUtm9JeRmbv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759013994; c=relaxed/simple;
	bh=tP+p1EiLAUWb63E0NzhzSOhwKBJtJrjpfTk4osqcwDs=;
	h=To:Subject:From:Message-Id:Date; b=MOkOjR3iyknlrNLoOVNFbZ6Jh19EC7z15mZJwkqp2QuHrHj/ptJLGKtQRlzK7Nu7fPfPJsQRECPhRZg7k1dZPllIjpsvwwwg/cjoy/NmQcYQaT+O9IsXM96TH29roJ/JddITNhWfy+ORDnFsLaxaB/VAIBLrvQ7Qql+n/ZAKskw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4zwl3Pz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4zwl3Pz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F47C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759013993;
	bh=tP+p1EiLAUWb63E0NzhzSOhwKBJtJrjpfTk4osqcwDs=;
	h=To:Subject:From:Date:From;
	b=W4zwl3PzNaenBeLEW0W9kIEjSQdbka2tvLKygyXcinrqpBeWDPKVX8hotbWxmbgbE
	 JUcFOV+xXFUZ5XXM03a1voyq+DGkxJT8Bh/s6TC8TvjeBYASzV2kaQATHqdvi9VpCQ
	 HbshtpCyKXmBx1QyZ/sxzDPIxTI2XJZiGnHHm9Fo3BUNALwRVuqU9+LTxfyETBBDW6
	 es70979+zp4jSiy2ef/qyk/V7g9xsLecMfk1d4ncyD26PjwphrReWAkx7DRexTST+V
	 fWxfOJey2sBMDyzfZnwvfUsMzdJgyFYCFQbezxTwM6cAWr3d92givAXffB3DxJuO5E
	 s9QoQ/FmoC2lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC6CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901399357.2385.1947741175660876907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a99fae83a161918cb96907450ba1219cfa56f127750b369de4d303c2ceda32d
Date: Sat, 27 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759013993
