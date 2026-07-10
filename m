Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B557394788
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783714714; cv=none; b=C6NFKfnDNiCfFx66owgXy+KAUq+glj90ahFGzPQAeIoKwZtd/veEP/U5Tcr2/kMGdh3JC6cyvpXIiDyI8eMCu98F22TLxZd3KN8mqMGWu18iDWny7INuao3l2RFeaHq5QZcju2AFZKLd9cwnsOg8bcaB9RluGxHg23UBhI6E3TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783714714; c=relaxed/simple;
	bh=iKipFOX6ruL5K0YGD2PegT8wXNtvUQHp2wRBI8eCTec=;
	h=To:Subject:From:Message-Id:Date; b=LcC8JtE3x+jzGvHSax1+8w3OT2RYzJlWU303DbS/6X4RbytUgqCiTVMrlFXedFozUADNyj7FfwXeSy95/aeFYOnGQ/z1NRhM8INdh3AqukDYHAiikXP6kpOAhumA2syiCX0g5LemoVTQKr2/PNT6nRT7GNpNChF+lk4Ni+U5xRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJnzRU4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJnzRU4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDED9C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783714713;
	bh=iKipFOX6ruL5K0YGD2PegT8wXNtvUQHp2wRBI8eCTec=;
	h=To:Subject:From:Date:From;
	b=BJnzRU4kxi0PJvUQ4bWY4/I4wRXkParFrHz0yZo10qFICIcz6pwNTIXb64oOvish9
	 C11QUH6Q2KtDaDTEQYIsXEYo+kzq8RQnwhgUdXVTtVd0fYHM7idVSrg7ZrSnEybCca
	 v9VBEtDrja4pkr/yDFOlXoiZd13+eqtpioKmbG7h4+1taCwrgmVGGB5NEmXC08BaiY
	 hELDI8tk7vfheubx2n1lddH6/HI5F8sMsCAtTJZu/aah/Cj/4jdLKAKsh/WwkTtBV9
	 MMY+bP3mgHaP6jIIUaTxsxSivisL6w/kDy5Or4/mnlX9yi1rLmFl6qyQhJqFh/491T
	 P/TNRjRMiZiwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C15C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371471368.2044.7881397177089511280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f220182d470ac98a42364156d64f49a7cdee45ca52162af3c6629420d6799dc
Date: Fri, 10 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783714713
