Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB53F385
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711172297; cv=none; b=CRxzxSn6mEl10UIg2V45k5rhVB+3y96XFdjark40QufhpDTcugr8SK/FNairMErTr9oFYAPVqsSoypnPGNvRcegztpcwq3WPauDxoTEdOK9ftmIc4I+tXEslRNp22WuiRgRDMv0TgB0eYF8uZmi9QaJGb5+J4VOQryMBVUiq/Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711172297; c=relaxed/simple;
	bh=uFQwFezAOvyYTIZg9whyDZ85cb4PDt/P0B8+9UPKWCU=;
	h=To:Subject:From:Message-Id:Date; b=QYlEGpffs/ysc+zY1Jh/UqLGj6UCtlNc53JSvjNg7p4JA0vTrqG0WmUM/XTYY9xek57e/sx1qPfWM36vgpACckunxIt0B7sQNpxje56nok29JX674xkMHWHnLFr3vNMrzTaDorPQIpni+zyy8ljzGSEHtSVdtmENogfQH0dmqmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2oMJr9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2oMJr9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B6F2C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711172296;
	bh=uFQwFezAOvyYTIZg9whyDZ85cb4PDt/P0B8+9UPKWCU=;
	h=To:Subject:From:Date:From;
	b=K2oMJr9Lmeb7tAhHmrcWNPQkwYayZ0S7Bj6R5NwgaXcusplDKLSasYu4Urm+Xwutd
	 r8J1UDfLsv2wyh6ykqD6wKAFTrLcGhBC9g8P0RES0bHjkK0zn93uFPE6gHJFCTBKqz
	 vURmLD7h/NYOBfPe2LxyK4rgfNi0FaricfM/7ralFcMGCW7jbeSmlIxRvOl4nqjfNL
	 RDP6b00vhX/ViBPbmTME2lb3YY+b7GGusLl3VztIRX2/LoqU1d9YB5704eqSzbR0MF
	 ZPp0IrNICyZUoo+4g4iEjUyxDq6NL6dCtcMg0fbj/qDO6ZN8M+Xfuu5dtir34wo2kv
	 8AIAebGbRxhLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659DAC54E67
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171117229639.8392.9276421592186180255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107b3f17a76fb825973dc748eaad629f5372ceadc4de77d0f9874c35ea9850d3
Date: Sat, 23 Mar 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711172296
