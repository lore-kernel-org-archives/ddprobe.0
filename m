Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3CC1369B4
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732964754; cv=none; b=XGhNXJRKWVEJU/u+MZGr1aSDosd9781+ukKehrzLBssDZ/9GUS5CkoQ0HQwxYc6IJVYlKPXh+vqBmwP9BiF3egZY3W4WkF4sIAnaRoUHPeEleRFjsgew4NC/F0d+wdJNsBBhQqG3klJN7HoAHetHLr13t/ouu/hw5vGL7PwVsoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732964754; c=relaxed/simple;
	bh=Gd1eIJ6DDib5xGkfBSVo1wqEbKt9s373+UFT5LmF/m0=;
	h=To:Subject:From:Message-Id:Date; b=Cw/tjrXI9EOfL8GhHzFzkeYjh2atErViMht7MlmSKXbzZWKGReHoFzCkkZHPS/P12W9bYeg01vTrGHyPPdKjNkp3ye0nvvI1Ls/Es9hOA6+PpEXp1p2ysb2h1r/lC73KMtryJyuesxSNv1gsRVorqZh9nAiGQAsq05FzL0NOhXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eddsBlP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eddsBlP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB356C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732964753;
	bh=Gd1eIJ6DDib5xGkfBSVo1wqEbKt9s373+UFT5LmF/m0=;
	h=To:Subject:From:Date:From;
	b=eddsBlP/HSvAh/CuLYdEKfT1Ng4waJHeOz1u0l3u0J+FQCjeZAcx0yUqIrJGFYY+e
	 yjEUGMB8CaMG/CjEJ3CQCTxShNTl0uL7PCPPAGVcLNoRY9oqvRm0hlPDCxhwZEQ/qg
	 9BUjtSf+vtucNccOHZur54mkrqs5U/5rVbuStGZn8TQ2PDkKjovvaA9UHpOKyz+wVN
	 uNvK6UR7a8m/QPee3+mxGFguk8ku1sT9+3/BPLnFRvDOIZ3ibT0rpUmWBRZwldPaNm
	 UAd1P9QsXJLQKWn4+xr5U3BkpHDsLS3+PQ3AaTsz0WIJmC3nIzth30KJo4izgCrtOD
	 uzygdmm7q3T1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D4D735FF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296475358.12112.15417533770593347634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01c54797c5a53ca88fc76be089fdc97fc7a890a4a243affc4d251e100c2e953d
Date: Sat, 30 Nov 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732964753
