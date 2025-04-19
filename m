Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6411DA3D
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745029794; cv=none; b=imZjG1KTxwtR0Fzn0VOsT/vIF6K+ahwAPhqptlHwSJZIF1eCs4+E+ZZs6D95N3UVcx3HQUHv3t8neOzw2oDeSCwHUIDukcZyzKTi/nmoYMdlPb83DnT72uWzZ5axYNU92YRJulHc+HXbxd6nalx8qevSsbANr9K8TQB+/k+tFZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745029794; c=relaxed/simple;
	bh=jhJTADcbpYrLA7g5wZ6KEiQ6Y5PEQNvpr0bdKeR0ZSs=;
	h=To:Subject:From:Message-Id:Date; b=XMZOVRuH+hHGwSynEE8zLeQ2yLir1Zir8zZughghfPItiB9ocnW+6FOATDzBB6im7aRj2zxbCJ7mTOJYHGqFXYsx2mBgyylCXYU0Hb4yQyvxK9xBnY+r1DK8Ps4Z7U2ii3D31EFB1hCknxnf49wJRWRcCEtGl/ToFblfpB64vw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMBFT8l1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMBFT8l1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE450C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745029793;
	bh=jhJTADcbpYrLA7g5wZ6KEiQ6Y5PEQNvpr0bdKeR0ZSs=;
	h=To:Subject:From:Date:From;
	b=iMBFT8l1COv0sMp6WzQpR+JZ1S/YCYJLUnbVB+tf4oUM51TWUQiG+DXAo0vEOp0Gs
	 JKQksORI66/Wh4vzIYE1vA6ZGnaHCF7dBLqn+mJKsPCJFyode+W9ONmPmMOGOOGBwd
	 MeaczaRRbVys4KQhozRcQ05GBrCzNeRp77tptoHznx9fOqeUxIEvCA8I2DV+oxNCuS
	 VH8rYG3s+xRHdt1XZKoS16cA85ZcsfNrKCLktYCarrVmVAjJlDVJJYRp5BkOPFjqh9
	 kdz+MgLL7nID3gdR5vQLDZazwgECEwBzlIO116UBXiIg8jeB1q4tFZQVks4voZ3cCB
	 xcqrWZpKpuYXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A885C369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502979359.9293.10260278981814958418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ab14052472e444574becf4e4f077c64a3fe74af31b915f9871ef6c8f1f3a07
Date: Sat, 19 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745029793
