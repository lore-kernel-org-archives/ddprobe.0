Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF041F30A4
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768164833; cv=none; b=kl6m6psD9FIeAe+ZR6IJFt5EeDlbtT1rlTAAxpkahtdtuDqqQ0peVs3MUAZsjBBdmXmHKbwLcE5VbD6Dk4V5cLPt1BxztnUxe09cCMEravzraedM1t/+ITpZbzXhg3Gvb+Qs1aH016ePWAWfJb6bMKFjnqkL0k3TAIbUds6TI/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768164833; c=relaxed/simple;
	bh=R8YUYWPgNXzakSREnLMjLyj3Pb0XZWdLaS1Przq5Hzk=;
	h=To:Subject:From:Message-Id:Date; b=BTcwW5i0bsY0wNiS6QP4/AS6XQJRjb2jcCrim98nAu9078iZWqp8WcQqfErDCA3O4SE77UMzdfmEq20SwNS4R9rAEFS+8NkPt59yx/34zuZElwA1OUX82K3giyA0M79vzd74I70yJdcNScTZBR/PsouIZ8tWyxRDBu7xLB/JKy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzZIVmVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzZIVmVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77ABC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768164833;
	bh=R8YUYWPgNXzakSREnLMjLyj3Pb0XZWdLaS1Przq5Hzk=;
	h=To:Subject:From:Date:From;
	b=nzZIVmViFGyQ/AiifSUSjv0N2cfGjZEQ36YXqAFlztsqd0o5V1tSJH2u7bd4HgKDG
	 geXJlcIMdScewN3MGPVxxmlDZuF/NViY3rNe8L3S7k1UQ/MRPjIgNabyXdAOh3c+iD
	 LnUCiyVWZPEyIkc2GadPZLHX9veOTxtK9OZxvzar30c5HicAoWEYpUtXOofDMi6Y95
	 SFtvLfAd9rbsC99sCsOaNC/Wm5+WBM6J41natcZK0ST/WKNZTOy3uZusGwMnfrFN5W
	 r0Cu2rBoyvMTl1bj/kQP8PZH/vEzlCBqv8h5tqFbEc42iB1StzejWlPV+uQRvUBir9
	 5pCB4XGiDwNFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953FFD2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816483357.12601.7452258441245344570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453d214f2037382e0298b7c14039dd75f1501e4eec7745e9ad70447e1a3f89a2
Date: Sun, 11 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768164833
