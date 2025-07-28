Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293947483
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753696194; cv=none; b=NRWN28WiMGiFqyxc1eqIyYa8v9auLyVnx6nEYouB+xp4ewIGH7ExySFtsuDzdejCcooi+KuTdJoFOMobjgewSjU5cRGrZ3Dt//tfPNWuGzJnaEGxLmSqQ/vvrMyo6HmWuKV8ECukO4ZqmiNYzETgWDnyUxu9bznvHqRyfHq+6w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753696194; c=relaxed/simple;
	bh=hDdJpoIR4zGW/9g/LsuKUa1E2dUzeeAGb/+e29Pjt1c=;
	h=To:Subject:From:Message-Id:Date; b=lXfVKNCYK9P95wojmym2lYaJtEgG5bFiYt8Bowj9simcj7UXeoMrzvFnYQunMLbDlO+Rj6tYQqDmm1l/wCROeXmS0x8YRQqZGjMdXTcjtEyZIYdFF41+VqXt66pbugaVByiicdFh74N5TzlFXg965vHcKwUdbbGHJutOF/FX6+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xu91b3LS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xu91b3LS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753696193;
	bh=hDdJpoIR4zGW/9g/LsuKUa1E2dUzeeAGb/+e29Pjt1c=;
	h=To:Subject:From:Date:From;
	b=Xu91b3LSq8OVr51BdojsINCayhN5u/Y1cJ0ddD0cXm+6Dq/oH170slidYeG5zXDcu
	 /bOHDVu1fsuj8WFDfKRA8L+2AYfltl2GIaZ/WrbW6TutTEzhVvIXaNAIC1bhYThoYl
	 dlzD6YKHxT+5oursmaZwmvxRPx7UTLnNR0HG9f7e8gCRbNpBpT/2DhH4oz/fvgdC3V
	 LtsDe13n/qho46rG5uh27ayIteEBOGBU+nq5xMwI1pmnf8U+pc9nmCwW6933Shdyjt
	 R8otvYr7A9trBsR62j+cCzAbEKSrbP4bYEtwA0vMalUXkdH1qsbBJ5ir3zd+Nh2uox
	 2khtS9fAfSqgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91303C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369619358.31978.8323586404200850968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a40b1b81e83ed141f7d2765385547b53474e4c2a7574b7d1bec7f54543a4b61b
Date: Mon, 28 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753696193
