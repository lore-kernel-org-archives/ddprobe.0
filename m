Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF442AEF5
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773569694; cv=none; b=uxp89rzlpFyDekt1bsrNZdylYWWwUEmfUsKS/Hr/c8Yrat1OYkeh0r6uN8DBxkBuSJ0qqUPTl40JpXvrVG0WpGYlnxbozbDRUWk+NpRAIzuYu183XF1U8YkZUqyKgrIk0DtBie2WaM/U2lFflTBFjXXNsj9yhUDKJJK6mYi/AxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773569694; c=relaxed/simple;
	bh=zbE+GXCTj6uwn34kQ7xWXYVhdBXhSpDRViA6SThs8pg=;
	h=To:Subject:From:Message-Id:Date; b=WAd+shuw5ZxMHNCzxVFxHBq86JjZ/PZWknJ9rnFniYQMGGjFBDMK//EPzDfpionbRoheCSGvJDp2Lw8SWnViLWOmyy6PcauAjQFLw7EiWHTklsEVXA59un4eDcnC7VaayXh4BenuofvsjQ9bskqqGAEa7WNDge4nvDmNN8QSwME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQXRAFhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQXRAFhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9756C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773569693;
	bh=zbE+GXCTj6uwn34kQ7xWXYVhdBXhSpDRViA6SThs8pg=;
	h=To:Subject:From:Date:From;
	b=TQXRAFhFj/pd5c70XVTKcwmJE/CJp/8YLrIZgyyPGB/2c5T1g5p1XOWLvs7olSImy
	 mpn221uIsFGj2DxEU0PqQ8g0uslus1l9Pq3c7xikKBM0akuDmwiyy1uFX/sW4gHwnt
	 2XtnTWkaoy34bLwbDxi4wB0AnskoOzZogyucmJharkjDUi9uSPrQ0zq0axXoUkCF/I
	 PimlyL8Q9E1eg8jduU2gpYpd/co/rdRulN8v33pI014qVhm/1mTjrN6pRHPEIrfqX2
	 85rkDJCUcqfQlHJ+Dh1WRgAm8I6F+Z1TUTsc3Olo42uD8fKM9ph5sEE1DHAHLDY8ZK
	 JBLHEPbrsgE/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9187DD58B0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356969357.6652.3846806629523303657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08f1d9de0061353d170130426871dcb179143e48a9db8e8a8c32b534e018bdd
Date: Sun, 15 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773569693
