Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A879E571
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753393194; cv=none; b=GJJq/EYLvvpvCGPgUWK2GJeixTmLpnKOSpScJb8B9H2ZgGdY3GUQbJAdEs2XX4w4qcG4kMEHwJLaRDYioHw/bjhiKAr/64oKjSLzL83Mq0P9BHBRGfQBKBJIJd58rBY5dx4HT+Ddbng/uTEF+25P7vw1RNRJWIH5V9xRsykfQE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753393194; c=relaxed/simple;
	bh=Z6gz0Qd096thdDv++fMPbtCn4HukkbRqg3jYNQBJjEU=;
	h=To:Subject:From:Message-Id:Date; b=fbTbc8viKR1NpBDujmO+s/B/fieW4cscxTkPN99wDxYzahQbntUPdYJgEcpFPNYYNTCwxKg74dC7YrYNkl5ihEZdxVYVE/KYFgnBch2Lz2W8Jc1AvYhGnz7BdNG84aavPE8lbw0dH7XBh5uifPajcuKfA4Y97gPiZ/3QUq0YeEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZwU97t6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZwU97t6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99FBC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753393193;
	bh=Z6gz0Qd096thdDv++fMPbtCn4HukkbRqg3jYNQBJjEU=;
	h=To:Subject:From:Date:From;
	b=TZwU97t622tlvGVbpR0D1jplU+lF8x5s6apzQCJbBAm+gJ8i8N67YaskHD0r7tHLu
	 X2uUiQsH3R6iLmJKHBZ1seKS35Zl5vB1MAn6/IxB46Sirn+DPbdFqC7VN24Rpe1w6e
	 CwPAo8C0kUGvE7J37BBA7p7DSjbAbnGEiVNqmzyzITCzZ5cSJmg85Izv/5oZJieT13
	 8Wd4Umox+EEkgIUcETuXIZ50gKU3MXKIT9TrDKy3W2wuxpkQKTfdzdtlQIrW35F9Rp
	 nkBValtdtHGG1jVN2d6zUCCIGA00sH0SU2zYFv52pugCmdILry1uNSF/YFE3/RnCU9
	 oV2lt6nyW598w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9630FC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339319358.22841.7307567948569543405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1dec35ca92b0808e6f41757234f9625e437a32b64f5c853f92dd1944b8c15a
Date: Thu, 24 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753393193
