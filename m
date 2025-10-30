Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF402DF3D1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761844194; cv=none; b=IG591yEJf7g/gsSYlyrnLBg9ux5B47rGP7TdAh0IkbSO5g+S1OvMvT1eCczHiaEvUTn1HvuPph8GOKhRSjr8Qk4sFxRstkU/nhjpGmEtLFkZaZUk1RBofcVimVLW/dsuOZ8JgTUwK/gb9ZuqiSGlh1HN6cVfOpTGGSa6J314eeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761844194; c=relaxed/simple;
	bh=GycQt6TgsqKGL7ZLysgtnIjwMUW0fwG1As7irsCjZpw=;
	h=To:Subject:From:Message-Id:Date; b=NQewsuvoVsKxwZWhwE3xPojcw+KzWB1Wj5yz85Y0F/NkgPA5MFA0KZcnHA2Gj02gmqvqx+trbucDYqanc6FV1kTEi4leiSbzg1A21zQ3ngTuq6OvoSsdeVt9jZCVgmEab2cCGD8lAn0PfSq4FvbcIp0Pinq/C26voducF+dLzVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+rDTvcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+rDTvcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC92C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761844193;
	bh=GycQt6TgsqKGL7ZLysgtnIjwMUW0fwG1As7irsCjZpw=;
	h=To:Subject:From:Date:From;
	b=D+rDTvcSjsdonRiej6qU3GZ9hAzNnT+BRDL1ILIUwDcwInm5kFCbxhmmc73oS5vLK
	 JV3EA/OHcqJH8PAb817jvgUuoDxXgP6INqe8A2pHVS1pQ3XUDJZDPV1YsF8ilKATOh
	 POKe/A+5JzkdziaDzaUIq+ibQrABOCjG5SFXbw1+PHDhKiYsays4+X6YzIHpnM6iQ0
	 JWA2IXk2zqH9nACKCqnBT+UoV5+VZVWhoznEukbPAugI7unWcwHu7wlzUXNMmrqSFS
	 M2ZST2XsUdAXVzdEDlENen8VbsCAuD1QzsaV5mjC0QgZfcDbbqnkW+Hu3VXkydtXXn
	 yS5yRErP8vXqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C1CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184419358.31755.5705224192585964724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712716702e4456530b6bb67b0410f73d26dd945611d610d7f9b8b4b0aa515bae
Date: Thu, 30 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761844193
