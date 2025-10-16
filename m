Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92CA8834
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760655593; cv=none; b=TS88E4doqaGb6bQSuQmf09iBDIhtmD4NAwnSEe+8YEyW+Vv2qLBLMJO+W1xVpUtMJPu3aHsshBnrZocU0lotql+U8u21d51iKRyGBDmtwtaz8fPhddJ+Y/bCiv0aMEoiohLm6ELIfG7lz6w+uYw398tMGoe9l0uEGgCeSMTGE/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760655593; c=relaxed/simple;
	bh=VIxSmCYxrLhG0Fdw+3vWJMxNnSwZwyzIIohC0mDoLEw=;
	h=To:Subject:From:Message-Id:Date; b=PEV/ewwyX7IMCm24U29zHPMSNGUmk2PDBJvVDxm+woCfgDB26pK5eqNkF5yztjorj8VV0m23ROrKiRqjIBkjs/3liEU3q6+5u6VNL8e8EUdGR7z43ZuWHwHJGv4iWFyB3cFPZ8OYLxlHxJs5acTnZbdB598kkc+bLF+T2+4oo+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boz8CiqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boz8CiqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D889C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760655593;
	bh=VIxSmCYxrLhG0Fdw+3vWJMxNnSwZwyzIIohC0mDoLEw=;
	h=To:Subject:From:Date:From;
	b=boz8CiqWCB6JKFmFw6K3+sNRNCgGivSIvUC/hNgkT5y73nljfz4GtzpasgqALL1ZA
	 OzT/6WA6Oim42Jx7wMekKkx7p7HWdMcXJtwgE2wAxCY9O3vQGSfkEyUnG9DZokRMyy
	 ioj5Pc5PLZFSsQtZWpvxgdyatF55ciRmqeCfJaKu10uHJ3fwatPjQw3NjFrmnolkDC
	 YCl9yy2sHrRoG2kC6GrR8UkR3CavzTD4NCslxyWKoiFTCawV/h2kH0it2hvykIkAxW
	 ecqo7bDNNSgnJzBiT3r8Zlik1scyfGTVuZ2WluQopdSKbAnh3uU9AcXogWNM1IjznJ
	 WHm+EFh1hsbxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9006ECCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065559358.5178.17694593643361162012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db8fa935c3688a188fabab6cfa00ad64a75c18a7a217a2dc0c6854b3af8298c
Date: Thu, 16 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760655593
