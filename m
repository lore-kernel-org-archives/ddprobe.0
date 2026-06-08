Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236F82701DC
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780916074; cv=none; b=JKYtHlr/RQFDoE/BJkuki+wle6WOhVmq4HsXqXE7nNjbT4ocN2CfB8Xc9wv/voKbhLAbcP3k1JMmJzzmmJ4wWU14MB/c5ewjUi1KHlV+7sGtNit8jh4rpMSoFQHzxFORG4+lXPegORVbfrqyMdDGfhJRf3JmzA8VnKDduvn9mks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780916074; c=relaxed/simple;
	bh=8dY+uktKTEySDMNJFgjGdB119SP1HuqXzvUgtE04+j4=;
	h=To:Subject:From:Message-Id:Date; b=uCwcM38dwLT+S1IRSJbG7I8oJh4mTbErIps+vHjeF6fl3MBbmLzY2mOpRSr9sNnVpm3hz0e3438+hL0Phuk2fAF+YlakdcE6yE0FOwaeQRso+Sg182GDX9S8ISyHxy3Y4gDG/ZGEiop5MajSnj7gauYwf0xTU2jocjtvqeCD2AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kq2J0hVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kq2J0hVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B610CC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780916073;
	bh=8dY+uktKTEySDMNJFgjGdB119SP1HuqXzvUgtE04+j4=;
	h=To:Subject:From:Date:From;
	b=kq2J0hVs2IfcDmrfpF4Qz/wCQDxio2lI5TpgMPfpfXeZSW4CkbodOeB/mpS9uuuPc
	 9KI7KA+pKCB+K/USF/CfhhELbEWwYFt7AuauvRUfQ8U3rLegsfBS0CrRa5SS0J561v
	 RIgw5YHv/1mOHsmb5QKdFtb2GbaLLFSWnj+Q4pUylox2Z3+ku9IenT/VEc2ZBjJgWU
	 ALfKm07fbwca2/uGKpQJxa6X8hihC0jHQpnso8wK+ZrRNjtt1fcRYOZwFWyq1clqa7
	 e3sX3jx0fjJxQW9bJ4bEGe8tQ1BctVW+blDZRBmgvg0W4brsyy08gY+FFKrRPFvocL
	 eKTeZgHiEBEFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94A4CD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091607368.20430.16334409051846744422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9680138bcdf49a8d1fc8c45d1dd6a00cb92b38d04daf99b2ec5eb2db046c6516
Date: Mon, 08 Jun 2026 10:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780916073
