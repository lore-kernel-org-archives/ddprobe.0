Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2276834CF5
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745649595; cv=none; b=qsAWVhMpSyAvSfloxmS8S4CPqEonValZKSKUpytwCiN5Fmm00vDBYEm2KBd/jAEhMItbYpQLVqauLT/nD9/2s6B78pkOmFeEKPoZMocTWYRnP7ADwBbSfgEYkMKVhCQreRfPDhjmg0MRXwJVaXNohEpxcfAGUrOPJDX3qSDYnho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745649595; c=relaxed/simple;
	bh=lH5TGOqFZ3vundDsSBIgE/xdwQnkhaorOd7AdpWDkZM=;
	h=To:Subject:From:Message-Id:Date; b=rvr9zx8CIfq7a7K2ZchRMeTViAeJWABxOOfwIalhVbeyCGS2HwA/Csq2AeeM1HRA/lKwm8z2p83piiif12Uu24HMDfFVxI0Z+HSEksZsixteGWM9ZX/QSIr9e0l+JYtyzInuuxtic0BJcOeyQlinroQ7ITPj0VFFpIFDDhBlEmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vcg0EuEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vcg0EuEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C69AC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745649593;
	bh=lH5TGOqFZ3vundDsSBIgE/xdwQnkhaorOd7AdpWDkZM=;
	h=To:Subject:From:Date:From;
	b=Vcg0EuEpmD9vXo5DUdv3jU0HoaoMn4WxPgAZ9XCyb/1t29AGZFmm9HvXPgtbeyUIk
	 hZBcjCwnrPER8ZF6xpbbKJtcFt4xxelgBMd96jlsyuvyezBP53498mam1A9vTzGh99
	 HlB+Z/B3Gv4z7zJuq5f0oq8FgU7T6YhesgwWnwEbvjtQugtJ/PBNVIIhZgQL41wA92
	 iBjSNplYncHppvQCvFwa8LHnvPZrApicK59OT4t4sA8fZxFHnSXTHosY5D+bcjs+D/
	 8k1rk5giXQU2gb00nnrsCwKLpdpkX351505pJgfzvnGTStIjlPKy0EmadoJ/Df47aB
	 QPxK8pLT5/iaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F383C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564959357.15374.7733794058708076224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5de4207d542664f3a9d85ab71fcccc44c75a13e8f2a7605e0a2e8eaf07f21c
Date: Sat, 26 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745649593
