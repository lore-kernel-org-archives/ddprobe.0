Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFEB4582CB
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785525034; cv=none; b=cp3+r2V04ggkmbpgNKiRkcCBARtISvkGz01CWyGajsCRiuAobMdby4aVEj3BpMAYvbi8n8UYzk2oKmvQBHwK64K3xWR1wGprVSh52jNY4IgQPCiM8Ud3qeY0xmu/ViSSaqjsZPiyqnSEp2Oa7u3cXx68xra3m2qdWtngYoMqIuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785525034; c=relaxed/simple;
	bh=6266bbh6ScvdgOBOTFKTH1dtbKAJ0+yFnKBQGe3aozA=;
	h=To:Subject:From:Message-Id:Date; b=E+vuSjup4fdpRS4nsonpWRtteXXhLG9U/vLP21k+kg6I0qmlvRuYULNIZUY7GsgF/TpefrOMZ/MJDHGo8PrjQw+yGjDex9XZ4unB7eJPoKslbd7fbQQ37uJvCaOAafW5xBFHUCRl6GoZ/SIRyh89HA+vAyk4SHyIjuGJ3G1M7+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNP1nwuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNP1nwuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF13C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785525033;
	bh=6266bbh6ScvdgOBOTFKTH1dtbKAJ0+yFnKBQGe3aozA=;
	h=To:Subject:From:Date:From;
	b=pNP1nwuhyV9GXU5zPQXNfvnshSCimKwUUe0p1MwNrw+qeHXQ+ZUT5FAtzWNCVDyXZ
	 rZF1aO39uiyrHFYJKRDnSA3DtOCnkhQC3tumLsZ8rzUxMrWjKM9QGsPyM9PTduiVpz
	 Q8CsGKluOkL/BrI8uaIMDd9ZxKLKhFEGJxpAmM+86onEE/hY1ymzLPX8hajwR+wzRZ
	 wVQGSjsp5zMBoGuJU5gsQYyrrEnEVng8ROJcYMTnyN0GBLmcsvLxf7B7qVgV8lbl4Y
	 FjzxEjbDnJxf5I+W1ODAdtSwiMXBtdzteHVETaaPWjMSwIgLxkc/egB/ZPtFtjHRVA
	 GunB9FhPhPxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD46C55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552503369.31334.490963886231416246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb01db42d082aa66b381fc2db5ffe543fb7c729792586887b6719e73e2888543
Date: Fri, 31 Jul 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785525033
