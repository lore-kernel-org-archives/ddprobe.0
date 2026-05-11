Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2270233EF
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778458234; cv=none; b=JFrdB27dmR8ho2EXH2QkfBsHUZTdqc8Cko2pJA/DvtE3oeAYxiwc1z6PB5s5cldiGi2S6t5FH4HnN7hxAtQbuze06HCral4ehGQ+pZmJYQFuLFI/QQwDGiibhsv/w5IvGgdWU59rx48p9ZyHHHsLen5q1hIlcnzPQpVZwKBq0Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778458234; c=relaxed/simple;
	bh=guZ1GMjcQA5cNbd8N95a0qjr/kLN5CV99o3WPjx/A48=;
	h=To:Subject:From:Message-Id:Date; b=Xv1OnMi21Hmxyg+59JaaVc+A/5jB84IS3zE40FpNAtW/tB3D44JQLbnKDLzW1WxFKbLkNlAbPZVlVCBFExn3y6gvJR2Az/bDqeyn6VVrKiAMhEkkSyMrnzv3mTgmGb7hgE9iTDMuAGz/LfY0FsaxIDl2fa9zHB3/hCZHEjmM90Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSQPBZHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSQPBZHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8C1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778458233;
	bh=guZ1GMjcQA5cNbd8N95a0qjr/kLN5CV99o3WPjx/A48=;
	h=To:Subject:From:Date:From;
	b=LSQPBZHD7IQUixCf5edVNtd8QiSDGagI26+3QW6nmJZhshPN7U5HWuSoz9KQ+kTNh
	 aOtHNYY7HRJArHZ1Ym9EIVlx/+3TS8/pdXIrVlhMdyHOvKLh6UteRj9Ur32amBOejg
	 FASySqMYx1p5+uL8DcDLwPjLOcrOgqlseRXE789HhoAEs0DoBZzcf/ZP8LQ91Q/7ni
	 t13CgId6g34XXiUed17zHpg985Sy3VaaSuSiQHvSej3VSyZ8YFeJaej/99eUC2yrcY
	 mSJKNJZbYskWfKXx+YGar3tViAhD5N2173Oyh9MW8jEVHprBmXHoCw4GuNWYK2h902
	 96pZO0Rf+PcfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC9DCD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845823368.10059.3350246913201846563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a735f349cf466ec9666bc200826755231245a6ccd6d80c209da05ae7d05a8f6
Date: Mon, 11 May 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778458233
