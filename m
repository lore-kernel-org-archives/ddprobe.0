Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C077C30DD01
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769485433; cv=none; b=SyV2uHC6hQ2E1j6TBQ+DU71DrITgrlHih24/tin/UgbUSysF7xLlrHjlROAnvK8BCh27Q8psgUtURUF3X4kSAmApLXq41PK0oOF8LesWqxXePBYdfj627wEN0qbPVJ9WHuyGivT2QpaLqTVqXhOrquBsVqCnvMKUxFhbdTgRrmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769485433; c=relaxed/simple;
	bh=ANgX9ECGogVcMeEqLoAD0biqD6WWhA4nWROqKLTvYUY=;
	h=To:Subject:From:Message-Id:Date; b=bQZcpKWWcBeH7S8ZzPCuZNFkrpykI9ycgwJu/TYus4u3n1VZUm5+Bpjyrmb3Tz50oLOD6bcOgV+8HWkncbOzIPfgW0+pA6Xcv8yEjuhu5zafPbh79UkWiEEM/SwnU3xB0dgthLm15EUVugwBi2+Y5zhrCfanc7W4EBwN5AhQ6qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ER1YsxPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ER1YsxPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55B9C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769485433;
	bh=ANgX9ECGogVcMeEqLoAD0biqD6WWhA4nWROqKLTvYUY=;
	h=To:Subject:From:Date:From;
	b=ER1YsxPIZ7wYsqIqi860OtB9qgMR3X96r02xjXwgoEjc9heLt8gXfI6j+7m/0PrNy
	 dOP23pcDPukugNAEUgVkdvF2zkS34BrQgpvdY1DFV6snh8EuvKd770/9n5rXlRgHcl
	 HtobmEIA4TdRH/EkNg+XeSwrqCK4eQLBoJgWGXJlz+nXJd6OOQYYI/JSHG9/oKSmGD
	 W95Tjf7rKsEFWQ8wKdcT/iCXENWsu5VsuAvqo3U1KojbHOsoX6jlg0VlRO1+wS7f7b
	 hTCNEnommwqI1s2Q4w8VfGQlAfO63FX8u+uNJlTMXFPA2XkYc62/yyncYqstMB3jb9
	 /kyhwef8AK7yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F41D25930
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948543358.17084.13474564286021848697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd622faaaa390ce625dc245e7f3f2dba064a1b45750a88bd20c6c523df4cc863
Date: Tue, 27 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769485433
