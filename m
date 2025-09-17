Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19534370584
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758109795; cv=none; b=od5q1jhJafJyCmWnHBAAI9Tug3NY9tyiFuQm372gTKwOjoHBGeDrYHO6UTPmpJAkqxJ/HMB6+kc9O7JhFr05EUVYx+dUAYd8L6zCWcB6eWcNhuKSKWnRXHSEUoPeFccGPdscvtaEghVBZULoEIRFe3OL1xiyqpcrjOx26PyyFbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758109795; c=relaxed/simple;
	bh=Enh3+JyICIWYFS2tZYV2hdoHlt/qn5b5J0WqBoe+DRs=;
	h=To:Subject:From:Message-Id:Date; b=OuasPqQmDkFA8tdSUEVI71H+dpHpEKvy3IZxGZgxFUGS559XUfZD5ZnE3iEN7VyN3jBLnJS5wy6q3QPnjCbsqBDOwV4NbNk435gULzpawGFGiMHj9AeDTBHyLqg1plh4jrQp6WCeKSmylx81XmmDpRzKt6JQhe3hZZXJNKF2iRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTiw+s14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTiw+s14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 994DBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758109793;
	bh=Enh3+JyICIWYFS2tZYV2hdoHlt/qn5b5J0WqBoe+DRs=;
	h=To:Subject:From:Date:From;
	b=tTiw+s14OlFadAMG977D7DTcJLsM+69/wAU61SqobVtwNVnhC9KSOSKgXmxK3UZzm
	 HCBR/ZfAheakL+nu5mZ4sElG0S0NL21EmhdT1Lb6LeLFsBGaPIP3ttau3XmaMPiLUF
	 QC1/Kgr2zAqeb31Q9CJKlD6VBjAFtaDll31VV94zVITGDm+kbD3bmf27zUk2yzDwd+
	 10MxUnZYF+9aLxpjEXw5che4E0N1hJnSPnn6WTayB0LfwQ++2fMXuuobKIeqWmEk5+
	 p66U+89Q7CF/nz2CuUcM+maVpkxJ/keVA4eg3OE3zIrSW6KQfG56YM56rlYdk+Nwkv
	 AyobI7+PGaiyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE67CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810979358.28000.4994927623749914237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43fbdf7824f957bab81ee9a9cc00ccf123e3beb963e1fe075ffb42abc4a5e2a6
Date: Wed, 17 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758109793
