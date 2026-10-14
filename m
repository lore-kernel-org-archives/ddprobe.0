Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0DE47CC9C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791964834; cv=none; b=WPFH6RZu66vNCCpvAvKyL4JD52N/aPfrGO8LrIaKipnWmBqpmQnaLPgVUUiFNTrs5/VM02vuLslfe+V6TPVbFj2YtpMbExP57sAqrC3WErGkUVst6gyOlbKsX1sySF2QoC2LYDbaVlptoXQBi3nZgBlpc/OYCOMHAKlGMNQ4hJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791964834; c=relaxed/simple;
	bh=64nj6+44FW/NLS9+CMrdQbw1qgzTdSIzt453VMVcj6U=;
	h=To:Subject:From:Message-Id:Date; b=l+8Hg2GUCVmVMe+p4MSPbi00xAPv1+SN9vnyyXD9ffmAEJmHYIh1pVJ8pRkaPjToKaDHNRAnUVWm13d+Yb0dgL0SJdNB6IydQlhD39up5YgqUfbqEDaQse+FdM330xI0FPtjQcSqrG5pkYb37WLhvSqcGIKDpuEat2XeWq55YP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdcdOVYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdcdOVYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F00C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791964833;
	bh=64nj6+44FW/NLS9+CMrdQbw1qgzTdSIzt453VMVcj6U=;
	h=To:Subject:From:Date:From;
	b=EdcdOVYt9ziDvH1RP3h9DBnL0zGAfaIkyWcAgEetD5T/ebbWUUEFLDR7NJ0gmhf1G
	 fT0oi0LyrBdU8tw0ZpGyT4FpIHDQyX/ftPe6zyklsM0bAD0SOBBMFZ5A1HNYZBhvVo
	 AMR5n8O4QvPz/lx28husBjDfyhR1C3vxOUY83F/stW83NwZjyrvY5aI9fN3aOtsTMl
	 wWmYEd0SXE6Dg6IdCV2w3y/Ulp9vq0/Shq07K826SR38Uxsd/KiX3EepV9g5fL7yz/
	 r+MINnICONzrYQUdhm+WYUk6poOSawQ692slD6zx/NtlRQP/AgDgZtoCsLwdcyY98u
	 M9lfeCehNRp7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4346CC6B27
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196483372.4142.1470961123523597346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f4ccbfad5a74cfa62803620d9ff787822d0b5623b88bba3e6c9c9f57f92601
Date: Wed, 14 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791964833
