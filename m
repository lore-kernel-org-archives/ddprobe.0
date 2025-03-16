Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B02440C
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742164794; cv=none; b=PC1/6W4t176stsankAfQg3G8di1tTTP9m9HR0Pk8edYhBV042VmP/fhhYYKjEpdZ6VZVquwlHhIJnZWgKPN7JZFnJSZK8JN73iv2u9ljQQ8mY5w800k2KNt6i16+/F3CJU2O2cCPcH0Gu7M+7tzCO1WYGCYJmWXC8i8rRgLdHlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742164794; c=relaxed/simple;
	bh=gGFOwgFAcros+c7cV7VkfiyaG7ur76vhu4GhTQ4SlWA=;
	h=To:Subject:From:Message-Id:Date; b=M+46E7QEOZgyZarojoQ3MVSOcIqUzyFQtXquje/zqzI7s0WUMj1Nm3Wy6ufcKhtKSIDaZqxuExC3mkT7Qwo1pAwtclO1EIZzoxNkwYUww5N0H8qxG0dE5irakl6UzW32k2/tnh5l662UltYFibtJRaKL2XGZ9lJg36Z/2hg9CTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tw8hHJ6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw8hHJ6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2602C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742164793;
	bh=gGFOwgFAcros+c7cV7VkfiyaG7ur76vhu4GhTQ4SlWA=;
	h=To:Subject:From:Date:From;
	b=Tw8hHJ6cHgkSxNiv/gAevblMK8F9+5v3MmaKmmvRth1GSlzbxrWXOug7OIGb6dbLX
	 qAX8Ywxi5v6YtU7NiphsgB/3TOM3MXDnzBa0fnMBgkrWmzuoVmmD+BDZGZIYL1TpQA
	 URbRyEBZaLQn+mZmF65akLf7yqLwZs3HbIEmqR7klPkmjhKGmFmMNM2MNSXuPoj5OC
	 dQt2GdYu6p1ZpFGGZrf1TYJdl0AhrpIse/F/2B3cg3h+xaRlFbEtbBFUsCeB/1B5aE
	 jXUqJVlw1/t4701kpOJCeO2797W7mhCkSBF4FTRbRoKwApoOFGOPIQBBHLNviEoDUW
	 utZiVKl/icd7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9704FC35FF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174216479360.21476.7537400700121877649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d544734812d4395c4dcfa866d421acea02ed25ba9c0720891e101654e2907f21
Date: Sun, 16 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742164793
