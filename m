Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05C6153518
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712168297; cv=none; b=tEdvJQci7GggHJxSyjbDIq9D4JixxO/b7sCmzAOqTMGk2brf2yUrRFftcbHYWvVrG4BSH7VkDLlC1TMBA3AgM7BFl7xLIeWcPpvhY05A7R6uWTlXQeEPxZFSq7kq8rUzlh6rGxHrnMCTGCruqeV6OWlSEwIKcpIMzI1+sq9INz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712168297; c=relaxed/simple;
	bh=mARhf06YnKzMP5srOJh7FI0HRh+o0n/mTtU/8RFus/E=;
	h=To:Subject:From:Message-Id:Date; b=LhQSTW7sHePXBxtu2Lw94ZXaji60JHOgJvwVY+NXtJz/Kh2HuPU6niQpoOTKYSqYhD8CZmB5kf8eUngevpX2Vxyv168ccN+RwjZVPwPMsoXGdyvyt8TozLoXBUxJGsHsAwxMEKLXX4SmVoFjgEMHBwTr03stxkMs2f39mafiXVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2Ep7FS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2Ep7FS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79094C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712168296;
	bh=mARhf06YnKzMP5srOJh7FI0HRh+o0n/mTtU/8RFus/E=;
	h=To:Subject:From:Date:From;
	b=W2Ep7FS/A0CWUZ2XuRfg1h0bhBYZbMICczEQvCm9vAZ+w4D+KeHVcwD9RjwLdNW5c
	 wE9Ml5d+hTzmB7ANhYhID1F0gaaFJ79PcQrNKcLs1UteGl/lN5MXbycpFd6ZaKr20P
	 pgsHcMi16K8fmlDRJlpPepuw7e8jdKfPx9deHb9ioWd238AjkTEk401UomuP6urLpj
	 XQ2ai0fm6EspNB914ix+s5vjp3NBibxE9h8zO6e1IYhCA44TuXVFxeY9e99qmwMRhg
	 p2hM9RQqkpVaXW6EC1VvkO4+u0nNS0QPxN8DoWiDrabIhK625QRHPkzkk513r05aQw
	 YfkEZpb6l4Vww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61574CD128A
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171216829638.2674.12356050154541564409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318052bc1f4ba37ecf36205c68abe4448901d074866e37b4658531cdf2ef7112
Date: Wed, 03 Apr 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712168296
