Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F8B1F19A
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755997194; cv=none; b=VL4kjZ4QjjK+JTWTPXZtIh2THYLTQ14+DCbkR4ViWVSaGLJqT7A4boBZaY2fdvkG/X1GoDml/fG9cvC/Qtuv5YnvravNEzHw4lhUdvEi5yS6WaKWvfyhrzo8yKYjNQ6jGfVnT8iFaEBxwXCIXncyF/zNukfWbeT9mkKUgJLZp6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755997194; c=relaxed/simple;
	bh=kNBZwkXfwjp173L32+2eRvlNVdVtIAyhf35qm46vYmo=;
	h=To:Subject:From:Message-Id:Date; b=CRIgIKbGgYHLXUcWCNgTizBC2IK/oN1FZCty3+8WQb1hwUOdtqpcjIoP19xgUcoP74apPmIQJ7BtcCrVStsMJ2iSxE2nLPP1pwewI+2XCr1SJ77JroyOTGe+N4NzuZD/xhGBpUvZCMqgtytSZsZKZmTwXtAuHDuzVIZeUznjzJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZW7aTg/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZW7aTg/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A444FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755997193;
	bh=kNBZwkXfwjp173L32+2eRvlNVdVtIAyhf35qm46vYmo=;
	h=To:Subject:From:Date:From;
	b=ZW7aTg/5E/Vua3bx/yUl5nTxb044cbUJr4sHPRVLxFaZ3CIH3irf5Bhg1Q5Z17JHS
	 xUeUFlosIdd2OiZl9eJnUu0ao/ygUb3S1GX+Wn5qzFof/5CdT8eNCGaSsGApyW2ouL
	 2yWMjAMwsJn3GPCpGpB0Rd6QZV+ij9kbhR1d/E+dVcVexo8159orenvFS/Y39wfLC5
	 QT4Xi7KcVt1x2rq631ytfWN0qJFOEpLm/fN2az7QItULMd1wcxtq+ofHwX2gpg3IvO
	 EFdASdauWwQt2I0cRRrgkbQwTC/DrVkR6TrnmuZGO1uKeM1CUmfJPmRovGXeavvJaX
	 Kw8XUQtkx/J4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927B4CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599719357.16662.6305437445569501684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470d1e91f13f175f6c7bfdcb6d42b03f52e2054be40d6a351859d1aae838c0bd
Date: Sun, 24 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755997193
