Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBCB414A3A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783429714; cv=none; b=t0lpElTb7yFYeAaM8o5MVzJ83O+Fi4ht93oRZFngqXEbqkyvw4Wxnnq60Tj47R7P+0H+Ram9GBptVlByYHOwCq0ZJOJ00+XVDZWwwtX2HbcvcXiuIjBsO0jDXuTq7qCDbi1Lt8O1NFD0ZPBHwdszj9EL7sVTAfg8DdrAmRg5V1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783429714; c=relaxed/simple;
	bh=4+S6NQSvtEyHMKmqheK5Ril5z1fmiDCh/6UtSk7JgBw=;
	h=To:Subject:From:Message-Id:Date; b=nTAcI4R5RlYWQ7yRWYUaXPY65PMkWbPFgZtRk/aOWkdApI6ouR/1ZvenUi0tyM+es35hklDpkAZFXQqd9pvMcefgtXkEYEnvfIrnAy+p19bPeepSnUJ+2HnVVDeYEXppsMrpi1sAmPgC1hmKf1u+qnb4dTJc8MIX7JnyKN3Po7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GB91FKaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GB91FKaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBF6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783429713;
	bh=4+S6NQSvtEyHMKmqheK5Ril5z1fmiDCh/6UtSk7JgBw=;
	h=To:Subject:From:Date:From;
	b=GB91FKaLPUt2cuOcQxdwKe3UsoAEo6ce13wtnJs4l5xRWI7jlv9BHCvtvkJ2Q8Idn
	 b6jPATYOgfjNNgw82V5nDpe1DXSvvnUay/ExCkGvyp5+282qtaDtO2tjPkHt9S9j/y
	 MTSS1l9ytvDM9sP+WNxkpDflKrDuEy5OQhdkXy1nHcGfDgiQrCf3AcghcikCbOW1qG
	 ZTgOoHp3PS55iF2px6YgK3QPZyQ0wCICxq47Fr9F3OxHNmb6Ls9UoPRx47F+lDpoZt
	 z7VGTK6Im1St1iY65HSH6PFYvoMj09O+S0PNI9SmUjxRIG0RsjWy6cLD+RitymJL2V
	 W6gl+CsJ3GZgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90D0C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342971368.23233.13891022769489935929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a144a225f0c007ae4c2d9e809f4b67462ed0c9b896250abfd9a8bda54b9bc829
Date: Tue, 07 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783429713
