Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A7678C6D
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732633554; cv=none; b=olvi8uSTj9x83k6Q7ab52vHNq24EUQqs2JqWQZKLXB3iT7HK9RX/dJS/eBKcy7AQp7IsYch8JH6hMxFrPl30s4+WiRKZgBnamY0LzDNst6+LFEw2aFIox+8fzvN3zqg5u8CaN9e/u5X+3HvnOqio9dKvBT5NgULY1e7RSFeir8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732633554; c=relaxed/simple;
	bh=HHu0vYMgTQD43eIIVwR9m651qwwI13x5wfrvmBwoL2M=;
	h=To:Subject:From:Message-Id:Date; b=oBl2FX2HYblcjo1ilk72QP/Fxu+Uh1Ll+sQPq4t3XwREcQ3Pf5Sq9wb6IMrERPNfZGcYCkIBZYbtBqfjQ7Vco30leAf53sYWI22aQsokDlQ5M2kSIzyeMEDqa24icpKepTuv6ys1PdxGv4AipSkvnM1b4sQFiEQ7cED50HcUnbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RflCCnmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RflCCnmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5354C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732633553;
	bh=HHu0vYMgTQD43eIIVwR9m651qwwI13x5wfrvmBwoL2M=;
	h=To:Subject:From:Date:From;
	b=RflCCnmVeaC+pfkmQtUVWiHZOIxGMxE1gubxRGUrnqtwtFE3haKY/poinjPU+xsd6
	 mM/IYcSFntUTOR2iB3/maRL2QtuUy9PJoIfbYcdJepOp/JYNaDV1W420qygybM2zXt
	 YQhOhcB10L9G4haaM8njLnlR5//cPm+LnX0U191lXBb1D8pme2e9eJRx6JSfEiip7C
	 37Jsr060ODYuoddt51dxg3JDq+DjTAb65C7VNer2FvUzpACED+PE+t9XePLf0IED/A
	 bCn4t4tDgrRlt9ZJZi+0AK6G1ROVdwF56McW3UcR4PiSA9XOm4veaMlVmRlBuS5ySP
	 XCZTn8GXNijew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FABBD3B99F
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173263355362.1744.8879806859154198554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8adf2c0eb5752b3aacb56aa29dbe77a09e22c8ca7b9ccd5d08b570e481575558
Date: Tue, 26 Nov 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732633553
