Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F87C51121C
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788859234; cv=none; b=UnXEAY/U9NN9RKgC7CcHGbit+zUunSCSb6IAvlI3qGLFOWpgzvI2X8068ow3exdY+tBSu6u+8aSi8Ga34x6d7C7EKmrDI8NJl/4D114oXpvXz8G3wZfWnlqDEjnVCE2Vdx/qKDS1cHU56VQF74ddeFM5XjOA954nYVsKMra7NTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788859234; c=relaxed/simple;
	bh=CgJ8Fhlm2r0Ro+QdwaAe4wg7rZUihUXC+l2c5iPYJVo=;
	h=To:Subject:From:Message-Id:Date; b=O2vt2PtAyCKBFKmEZMj+dbyEHbq1Q6t2sqVdVZ5X4xmMPSuQcYRPZg1Az1yqrXL/B+qZ4iajE+JSnzylACxQvC6q9syU6y8JK2O2oorA4C7PtLIoRPMdZZXlDKoxIrkcMHdkGrED5dt0kIxuUfPRrG2AX7+/Z3bO9Z6rjxE3YM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdVZLUkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdVZLUkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08C7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788859233;
	bh=CgJ8Fhlm2r0Ro+QdwaAe4wg7rZUihUXC+l2c5iPYJVo=;
	h=To:Subject:From:Date:From;
	b=UdVZLUkmVT3u1RMLRRW3tgR4GNpRtRIACgg/EvSDyoVDfSHBZ/TmpRgPElcVFqOxv
	 vbY1W7wXJoJLsP+b31iG1ycSNIERxe7mv3MB5Ml+yjJTmDDhFvwSCJp019NwURgBlu
	 WgSq2rmPaQfxJY4u+0nC68rw5ECV4SLct1IZr8q9XinBp5iGjinFvOwJpiyszG0hGP
	 S9N6i9uTFBUt3e+PirFasdudpL/hZNx1K9GLKAgl8f7vMisFz950cg/nrhDtKKQidl
	 zz5EFFyJl9CJQcpagkCvOsBFxflmHCGLQDOADauwGAEGuVVLdsNypkkYS4mjJ3uSlY
	 LWiiLE5zac05w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB81EC79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885923375.13058.15169834193346169925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74676eef17d6e93cab7643795c199ee956b9ee0038b8ee73d7f8f291e67f682a
Date: Tue, 08 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788859233
