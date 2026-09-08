Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C0C1F4631
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788829234; cv=none; b=UrM9XPDaT5gM9XLs/Ct6s+zsUtrZwJwVWLhzFiGBAEMsbsZmjJoxCLDEM9FGrhh7uTzRm/k9asiDllbtpPg8XcrAWGg3pYa5XYuwquGnoZdczU2upkcQUpsbbM7Fc7lm8VIPN7JCN80kBDiKljlnXsxuFY3YtWkCfNo+IizaUgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788829234; c=relaxed/simple;
	bh=n8oBQ1M+Yfh/oNfMT48HI91Bmbjr6JZRoIBPlLb2LTE=;
	h=To:Subject:From:Message-Id:Date; b=DcGMv+bQ2PWwjK9SdjrBHJAKtSiF8wJKHCvR7YiqcqWY480DfRyxteS9cxrh88930Bw1sg5fcCIZuQcljF6fGwlkWpYsCIew9cUYxgrdPAWCpRowdbgdJCn9u5OFGLIb4x2eINmUV0kGpo8rVov68u+s0Cu2I2NUk6uKb2xwKaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/HxEaoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/HxEaoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80FAC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788829233;
	bh=n8oBQ1M+Yfh/oNfMT48HI91Bmbjr6JZRoIBPlLb2LTE=;
	h=To:Subject:From:Date:From;
	b=n/HxEaoByAifbjgVEMD98vIYTle78Epu+3V41t75gkFiCbv0RBAIPW68K37eQm+cK
	 goGtd3JoxCHnhl2cyArF/92sqOp/u4+MNa8iLv69ChlfoLW/VTQtYVIbRVkZqKq79Y
	 4K99YfqU49cIYFrz48Zg+HUEsLFfCQm26kaNyJV+JXUayOh7Uvq9JlMpWftD0PGVdR
	 U2AKcYn9/KwduaDSwcFpGYB7CML40P1wyCQmedT3Bm2Z608yhoMxRf5Xg+u3EwVrJj
	 Gi0J+BtR1pHGPymBnuOrZzYPLc6UCoZgJHN5+d/voaXTDgC/xAzWYM0nP1TMlvy3/x
	 61A12RbCvZ+Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35AFC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882923372.1082.14388366080057515838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b1d71ed9ba8706064aa81875fc3f84b79ed5db12d8af8d2c6da35692d5b49a5
Date: Tue, 08 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788829233
