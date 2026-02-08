Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCE2225408
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770519834; cv=none; b=SfVAHNDHnDrtBrdr406eS7r8S8+0WLkJhPD70E75O2elcK1S1rPSKbpG1GfQpEVpMHydXgO20LfPkS1kSMGz80WdEGKsnaAbgkVabeQ81LmE8w5VlxPUSBNggcpu3W0PrLN4FFLjivJu4jHpUZbXCcKo0AJFvuMFYNyQaRcZ1to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770519834; c=relaxed/simple;
	bh=nN6Uvub5smpriR3aTPw0NkckDDDGGqDdIDfHE/9Yeog=;
	h=To:Subject:From:Message-Id:Date; b=Cznr0YBAw5DOaHqlkcpxDgL6r9IkA3IpCJvD+7jFDD+0DWtlck4mpR5EAh6QXONJE2UKi9RVMHUwabvhktSiGYQ4wdDPYkovsmlcOReoXASiAgfnlE4jOiyZAFv/ifPrBLen8h5zXDha0dtJZ7+WM4Ho4/AZptWmXF/I5gsxhbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crmy6XvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crmy6XvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBF7C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770519833;
	bh=nN6Uvub5smpriR3aTPw0NkckDDDGGqDdIDfHE/9Yeog=;
	h=To:Subject:From:Date:From;
	b=crmy6XvTLgEH7GOoy9PsCeDqckjjnUW664JmMhqkSQ8EMSBJ8rjorVeLa/Z2Ifo99
	 VNWfO/M1oDVAlWFBTOn3+BDKOwUOJb1p6f9ITQbxFMyTRmupgCanU86YI2loLXZMRB
	 t8PA3CtN/9/bL1zZ6gCoaQ8BDPqEm7ugCsYaU20TtYs6bjwn9fDl/0Nthe/LXyof0t
	 w5pzQkE687rbxPlEGOeVL6A6TVKxqTL3qXMcDd7n0OCk2/CI/vn9OtIEuM0Qrh7xKU
	 PatQsQ9tBVmqqO3WQ0q1+SiFu50WgW1EF5uy5k2+sZwnSL00TYTDxe0mzF+uaQQv2U
	 RSctfdo2gbYPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4020EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051983362.15973.966589355488422798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944979fc924d4aa968fa17c88cdc3f1192e417f338212393b97fd284f4da0d52
Date: Sun, 08 Feb 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770519833
