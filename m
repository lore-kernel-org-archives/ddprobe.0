Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0C019CD1B
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752426594; cv=none; b=fyVPaRWtH6+1CXjP63ds6ytAEtr6s2R0eNjss7SW3Ldt3Gq/lqnT4Lf7R5OR6GlNQyZYFneTu8NULZvSZBmtiH2IAoy8gJKMEgzzKFeXVqgk2gExpzurxlQd6agU3NpMdN15M6SACau1bLIqUZZS0o691AeyboYI0POYOF5lIzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752426594; c=relaxed/simple;
	bh=pPESzaVe2aJ6A0PoF5N2rP93aPBouzp3PVO6ExauSPg=;
	h=To:Subject:From:Message-Id:Date; b=kNj83fFSni0vCtMXqqx/ureiT8VO3ZS2a3lIZdxfs55Xl+6tZuwqNCERLF4Z97Djxj464yPWLCJzVQCzvW+RrD9OgpeBSHeI8oAADIatZXtjGYP3IKRhEdh69PsnO7DjMJBwxvcF3wtKH0sUHdqxbhFsMJ+4fioaBeHdgflgnCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFuyj5vE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFuyj5vE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5996C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752426593;
	bh=pPESzaVe2aJ6A0PoF5N2rP93aPBouzp3PVO6ExauSPg=;
	h=To:Subject:From:Date:From;
	b=dFuyj5vEebcBsp/KUv6jq7U6OApqL/MBu+Hfs1Bqlj5fYYxVUbXIele4RyNU5h6Ja
	 5gJcJqisVlpPBMBUzRzXHuL7HpLzdqmDp22Xl6ab4Jd8Gj2da4PruJY5AVrw8y0TeA
	 ttuMJEB0zlT3tHCkvp0bBqmxJY9B2OYHCxyICSyyW4S2yqfRqcOlyQXiyUbwkHSzeC
	 5R1Q2+9/GX8WnVEGrBxztt1PWeP0MrU+Xj+/1m9Ujgh2+3VrcaI8aJ0F9Livtc+KcQ
	 Ns+ZuhYf4h3+VmmfCA+v9HfBHzZs7eGPFnveaDFBruldasaZ3Kw7INcXjkgPwQeqS3
	 lbzGWcdrtUl/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91949C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242659357.1459.12058204240001948253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b25e3d0a7fe044136678d4a126b745f5054a3da7bdbba66f2a6e5ea39399fb90
Date: Sun, 13 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752426593
