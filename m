Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E491494C2
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759549194; cv=none; b=LP6ouZtS+HnXwdz9O9p1ESzr0vlJTU/pV+EiYhMTVG6rNO5rk+6PAXix2mH5oRLxwcovyrgd6tYnljHkX+L69LyQ3d0ahPis7a5zomRlXF3WVcyaU8QjjKTjoBcSnxNr2092ppHf/VX91a4sECXqCxz11PsuAsjzPLnPK8m/5pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759549194; c=relaxed/simple;
	bh=YDNciGymu+AOXhqkedLo2Y3K+zIu8tcrnt2ZKbUZULc=;
	h=To:Subject:From:Message-Id:Date; b=H8zY8NYYTDJ7mw7dCnDRST1QANz4Cmy+0rN5T7M4SmHWSXAPU8yX3YOw/kZLGoWeQ+CTLWw+hP+/DMzQjwlJcHWzpIdDecM+mEOgkwVcQH6scVpCbTn83EMObDp9LrXa83vxZ5Q3q3GElND++VhR0WlfA3bxbmpCynm/mpsUsZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqW3XH6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqW3XH6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB70C4CEF9
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759549193;
	bh=YDNciGymu+AOXhqkedLo2Y3K+zIu8tcrnt2ZKbUZULc=;
	h=To:Subject:From:Date:From;
	b=PqW3XH6DDKMHKXzPg7fZxY+WuPKJgcRR0Ou6Fg/MKQPkBDJgOQdWWSgaUqPo5fwVn
	 cf2Qf8vABOaMJUOfg2PzKoaxHHQny7Vmthaf1T0Xn/KneEjhNKFG7X6/MbilbzMTPj
	 C718Lv9jChYQ84RJhlnF+ZJ64/1hwaVqPsi+PfBgwY1v7xazVgkDSLURcFwdAQ2a/1
	 K8lio+whuhLqKapDpNXwLl4uwTqLsnvIhQ4os2YkEh4TXEU/IebYtcoZ9fVl1Lem00
	 rDqG2GDrcBEHmulXEQqUIjHr/xEdliaBfrUIqsMNbTDsXJm1q5bhh98KVKPNVytnCf
	 enh55OZO3ZCMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B8CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954919357.1787.13352513805306674071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d133038f9e0e487c8f6d539ac3747bb243765739081d7f9147bd84e2db566ad
Date: Sat, 04 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759549193
