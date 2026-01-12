Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E987C3126A0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768201434; cv=none; b=lOkFzPk21l+lCanu49pW400ixK6O/0b1RxglRxsmV+NidmTR/Rff8vhOUXUgWBdXW9zJMyI+18R6LELdLIT1ckRuhEnXeuSOd/Duk8fuwLloJOriNXL+7ihMQhAV460kNjvuXtsHVlKQsgKbO/nblgKMtMnzlUFqEHetlrgJzow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768201434; c=relaxed/simple;
	bh=B3Jry5NX8bqDboIgIQ2EkftXubQtq0ebxZu7u3MwbvI=;
	h=To:Subject:From:Message-Id:Date; b=EUqANJJ2u2cvIgmVLC+ilKZs8BkGyKsy4lcELUx7OuO62Q5vPJXc2waLF3TLJIAozFXH/gQFwR8L7mCwCnopZSabNocwfPAlgQvFYR2X7vyrHIcecQWMy8HV8jM9LyXnUaSDS3z3Ikq8285XDE1DxtanN/ccr8H12QzmF4FcRUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZCq9xZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZCq9xZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD4CC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768201433;
	bh=B3Jry5NX8bqDboIgIQ2EkftXubQtq0ebxZu7u3MwbvI=;
	h=To:Subject:From:Date:From;
	b=uZCq9xZiBwo+PLX6OAtxacRNcpywQ+DAHx4gRcVC8+xIREnCVqxs2X6iMITkJUp96
	 2H/yEoooSF928eBYaCucPc4qw46r9lSbFVQtl9DuM4O5zx8ynRWi1a8RqyULL0Fi8X
	 umnOFQZmFLWFy9zRMguTnMu+nqBqfAqvNveL98DQrjuyLVMX7iGk4dVpuxyPrucGI1
	 bIzmin+IxsSq5dj9+JUGiy5QQB370HULGO1tVczEDPsk0axkgAJhSfpVMv/X/7HcA/
	 MrFNM8b/6xLq1oLx/ydwa6P/n+oesUHRZfyUAZDlYMjei+CgRLkrtD9/p0Jp+K+Odr
	 2ONlBAPdWiA0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9016ED2503C
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820143358.32069.2053659124777119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1de0500fd43aa13428db612ec54bb338a0975fc86cb09ca086b32f5257f4e7
Date: Mon, 12 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768201433
