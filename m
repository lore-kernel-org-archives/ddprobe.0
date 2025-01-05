Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B33146A7A
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736073954; cv=none; b=T0GR3wu0Qvnbrl6qXmGLzghMz+dzHCQWv+SLZBtzjiNhO9RA+1qQvbsUKVZ+ZYpC5B5ZzGuKhOlHlA+3uX9Dmcvv8yNNFrO4i/4524c7RxN8JauccHXNBeSQX7JaGI1pylfZCZR6htkqRNlIWnqsV38CggDOuEGOGv7Afrbwhwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736073954; c=relaxed/simple;
	bh=LryDPdsdpj5YHwEXOXTJJfatQHj5Z2lZIrde9X10wcg=;
	h=To:Subject:From:Message-Id:Date; b=J2uxdU2h4peB4RBQMqGmxirAc7ckllbd4IzilT8meEg3i6W69NgezsL7fPIbVArzPgVApi+GsX8OPUTsv7muwEfhHfgs5EXBDOg17pjPVebm0gUh2X8GOwEq087tl7GQ/eqwT8wNruBWNlVaW7tmwwTPj5rhvMoaQbZV0GSApfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/1fb38w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/1fb38w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0587C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736073953;
	bh=LryDPdsdpj5YHwEXOXTJJfatQHj5Z2lZIrde9X10wcg=;
	h=To:Subject:From:Date:From;
	b=H/1fb38wx9JpS8Bsm9Io0Hy3i8LwhC1WP/401V0coQ6YEUGOxr6pZYAEVZRAmaLY8
	 3I/L/lqGFglhu6mr3kHZbUEgJQwwCguC222pbGAxr71Divkt8hGMFgzFIo2d0Rmrva
	 2/yDbnV6+MZkmyP7SrKvmqOPIEdyQwoD0SmbweVMgCcszjRbuhs503vxLe9V5fYHta
	 3odWE+N5BWgkUIcQ+VFZ0wiqg3QzJXgMwuUwM76ny/cB144zzTz25qzjt2/0o6V5nO
	 KH9old2EPBYGBAQX4wOmu21xjx1cv3eV7MjUoUuyF7IEySSibPfmsTmigegTxkBVBH
	 gKZmTXkRpPehw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E50E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607395361.21256.11175744922836029079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254ccc9226003a3b8d1d62fd9761a0c04ab6451c794b813b555360a184f47fc1
Date: Sun, 05 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736073953
