Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E9B10A1E
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752484793; cv=none; b=ovuvJc9W+/FP0tFARubQD/XmNzFnUH1vNgoFXI3iszoVDIe6DsqfUZrbuErPOcOZv5uM6oJuZTYx1cpsVuqwPlhE6Jhw6DH5GXmtxqXt5PeeKGzn7sdeRCULyNPwho2Gs/N3MvNboMfFL/iLMFiIi8dFxtojeCKh+sUEUM47F6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752484793; c=relaxed/simple;
	bh=Za2qo4lXVlbIkRp4cy+jrhRU105PhJFk7+Zx+9Aswv8=;
	h=To:Subject:From:Message-Id:Date; b=uUr5v92kztIEg88YHLq3XFnLB7ofNnExU2EAcwcJ//WjAEQ/DhpUqJsBVgX9njC6OmdRZYQRhhJItNNG7KhHMBxtwMIxPuz5X903wvOhOyfUWUM0FNOz8lRo1MN0WQQCcnEeGIcIuaPYoZRX78vNSNqeTK7H1QTlYwFVK9BQCmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D63dPxgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D63dPxgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19F7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752484793;
	bh=Za2qo4lXVlbIkRp4cy+jrhRU105PhJFk7+Zx+9Aswv8=;
	h=To:Subject:From:Date:From;
	b=D63dPxgknQNA4vjdcbynttzxEiejVzZJtjUWDXarNCyoDRP5tkqfczxWkSOuluaxe
	 w0zyIASZ4EkJtWp7eJxggQsuSyJr013ik7qpKaN++viMJdeBKu+nVZib0a26yIMXa+
	 Ws/Fi+wEIrAdbc52ETzxOm3eMwyCD7ivV7XKTgPHqg+Ux6xcfy7yIvX81UoBEOnPQh
	 N/O6XdYTZFYElKyRHFITmEYNDoh3l2NcAwr3TNDlttsoBIvPwWgVnVTwn8EDI3X9FH
	 gz3BjQ/b94oGvwGAKkaEjJuGQzB0lWQWEqHNeuPIN+CFLIj4s32kY8u3OdDXJa86Yj
	 AH3w0Ab/YNrQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0EAC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248479357.32259.9483823058014450962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c504d7a45a664bd0fab4f842bfc141b6f2ee66512c372a2a0f326dd553b08cc1
Date: Mon, 14 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752484793
