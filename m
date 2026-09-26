Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57398369D61
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790446834; cv=none; b=hw6iJXv5Sr/0zPWpzmbA+UScMcwXvJRYwOOsN0oFK49B4p4TsdDXlMBLpdKaEFzhI8BN2cmb1u1OvWvQUpx83qxWZQdJs21BuHPlbRDuPDMeHsJFUb7id6XOE2gj5dKTTOush7FjQ+41XLg7Go+J5Vrqa0SfRMrVzuPl8koY0oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790446834; c=relaxed/simple;
	bh=2O23CPKsuRRCCQWyQ1cdQekQ7FYONR43bBC6MlXx9W4=;
	h=To:Subject:From:Message-Id:Date; b=lpRNuJbxL+/O/4lwhBCpxrStOynp01p/SkR6wcatYa5y5agTcjaOFj9/i5ZTA4HZs8SUaKuEgmW3aM2AK2V8sPfmyfiPSGbm1GvvFQHWaOcBlmrKBzE8ntEwQseHV6e0fi9Pb5w3KmR3FDaJlILVDHAZi7VdeGgePodBNuOpxkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZMAUT5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZMAUT5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CE6C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790446833;
	bh=2O23CPKsuRRCCQWyQ1cdQekQ7FYONR43bBC6MlXx9W4=;
	h=To:Subject:From:Date:From;
	b=CZMAUT5ZkNq+T+4dRP+U0AJlXJsPfr+W5bJkn9DHjEVMe3heEjDVjFKUm+SgfTJf9
	 l+g7XU6UBKI+i2fhYMV/VlOHoubzyYiqaKJX3MMJTQltYHhCfZyt9jEt6a3TLxJof3
	 WYLvbayd0H0aejjDpNdjeDRSAnInoqDtTeRnRDc05aawLkLWpjpSt4QWm3f8aor30u
	 WQX21LsXepzHsR1MBohXlTPisduuc5p/EuPEMNX0zR40Qje/P7K8bsGkYMay3lyQz5
	 IqgRiHFcRi/QdDAkC9ivs6dbIYe4tSTogYLHpddg0NRjfB5TPq1UmYcc7wN8Bk5A37
	 EkZQdO7nEIqDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BAEC9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044683369.5787.2593678526963796525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586b051c492620e775f0d10be1938bb99b80cfb3170de4d8bab1362423bda4fa
Date: Sat, 26 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790446833
