Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3581B4138
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788687034; cv=none; b=o8Ov5BtCGwy0rfwnHKT+Rr/J9qdclfdrPVXTXfmkqdqc+g8YBCeaoU9ia12lbBwW1JeDnm0ov8ijwpEsw9QNGxp3mshSiLxGoa10OXWM9tAFqTCGIDpcR/H0nqNOsR1JX1fJIL77BEnY3EXwnkf+Y6YHgIzaYA/I4XUe9uFdfrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788687034; c=relaxed/simple;
	bh=RiCBuvCw12tsHn2i6xqrXfYp1oUMPeI8CcR1T0NOf/U=;
	h=To:Subject:From:Message-Id:Date; b=HAJCzXvX2mqyh+ROhqTm1C2oUZXGiqzG895sMGt624UNkFyDaAAyDUX0VCexvTEH/NZgLU6WIGXzH19BiHXMSjVzjI2zb+Qpu6Nsv+uEK12C3sgos5oGRedzhA4539TfXMAOYsb4uBtR89pZ7Y3RXwEYV+O/UtIlTD028n6a19M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7sC0PaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7sC0PaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4610C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788687033;
	bh=RiCBuvCw12tsHn2i6xqrXfYp1oUMPeI8CcR1T0NOf/U=;
	h=To:Subject:From:Date:From;
	b=N7sC0PaLGG4nQAqSQA//AtyTHau1GnISdN6FecMU7UXfl/xvbfTb+yGkl/R720X3N
	 RPkfrLMG+0XhBJ+BiV5FSKaHdWajzKUP0Wp+Y07CbHW9Z0tfKz9wFsXIuRyqMIY+rX
	 8SJWGWooAVyvOMC6JLl5sA3cqqgoWlfjRiN46h6F5+UOicmqfw/upCyvZBCFoK0nu2
	 rzMogv8/DpIQC0SAiOURO9fub7y3TffGt46f+3hCaDsbNAsVxGrbbu9krZowL/6zEC
	 MmM7mcRvcXVzCZLNtNbKBrEH5W5A+G/TAVsZIp6W2nkfctGrPOzDmlUWn9LSWTpxsx
	 L7NeCJJRDbnwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE4BC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868703369.30994.9176235022815328954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cc5cac0500fdd0504c66fbc4e9f360e5aad08c34b1a008ca61946807889ac9
Date: Sun, 06 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788687033
