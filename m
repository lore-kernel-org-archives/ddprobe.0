Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC9B4206B
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727565354; cv=none; b=MYcZJbyqzZ/gP7wNwBRS/Mz25PpAlmbSWQioEQB75d0ReR3JgAl86Tr6SU/rsLG+XL39Z0Nl6k+aLBgpdDuLBoEabqpOwzyuOA5Q2WcKCtyMHiFlqlry7ubI/FtgOTvniU6BEfLaLOaQf0aH1Mujr0WeuMiP2kLqL9pyii9peKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727565354; c=relaxed/simple;
	bh=ILVsKHus4SB28O9rLd0dqryyv6KLsJY9HQ2mhpB0ThA=;
	h=To:Subject:From:Message-Id:Date; b=R+rQXKwL9RDSLH4NFfwP4C3Mxa9m1c+qX8eaM0Pi5ve0dhQluduU/7jLx1yRKDeH7gDR8vdYi8amtM2GzrAvYDmU7RCulJiC+XNXkIfyliRTd+IrqhII6yhGjdE2n5mU5YboQXx9kTxifJscYoPjWUV/N+nbPkrTgaQH/FeC3wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZy8Qtha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZy8Qtha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF441C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727565353;
	bh=ILVsKHus4SB28O9rLd0dqryyv6KLsJY9HQ2mhpB0ThA=;
	h=To:Subject:From:Date:From;
	b=PZy8QthavLzr3EYp1vxEBQnzTEQe2kjXZs1irm08qAJzRW28OzGQgdX6kExPhQHEA
	 8N0KuYTodtgd7WwhDG4jmmgDoty9wrXBed9iNCFyuyclpaXyojdBoHLTEm9vNIPSxV
	 +O3TOXVRAS9PwlECUDz8arG8CsTy4IEXFZnkPSiiWlQA5KUZ2A2oHX33WtAseas27b
	 6mqFCt3M+DT3mAkB1QIuPorEbfF+COpMELJdcdfIWeuFIjCWY0VdHlzvmZrNjtuy/2
	 5K1y0mAUIgPuk0FUny+I7PfuVCcom0tWQCrDTDe6Vjgk9h+LWa6WOUjeQgeuZaje4p
	 7KLNP+uTxITRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995C6CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756535360.32456.9363132372210594971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc76bc47180350ced5aae0dd5caebc4a50310a870120da0b64e3a67aa5c4111
Date: Sat, 28 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727565353
