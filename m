Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50618F48
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753727993; cv=none; b=KYVu5f19fdjwS4XjvjHossMWAvUPTspyKanGSHPPWaWsZBQAEi+JbIOnh2A1qK7vnSZqB+5fKqOufvH5V2FofaeHnzu4XXGajFt/6ZTo6A/VG9dhVOtrevgCyrqngeN6K6aoKOXjK4mhLS1SnuIrbCt51KbqWT7v7zmPB7BEsKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753727993; c=relaxed/simple;
	bh=i6vmRRDRo/BoscmtISYE/8loczPy8A9SKjLq7knjfRU=;
	h=To:Subject:From:Message-Id:Date; b=XXCt5eAxMB2BxJTvQdVXfJFGuqZwmvJFXKpb/M0jEJRZbZSOfp7NO5ZM9fp6Ld0mj/5+xQgO3vAOVmGMa+Wda1TKhVgki5RSkIAtHWm65eNYQGD6Xk/zl20DxizXi6ZD6B+QiPsOBGojGbPSpjpXRYSYklLjMj81N5J0wkyNGHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3yVdKk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3yVdKk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16A2C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753727993;
	bh=i6vmRRDRo/BoscmtISYE/8loczPy8A9SKjLq7knjfRU=;
	h=To:Subject:From:Date:From;
	b=t3yVdKk86U6nsR38JxMt1g+GfG0kCkovX/lgdSBqZLNnpZMWAcA0ThcJH7BmJlU5W
	 QIIiviCwNKC+4kE5nb6QaaCEynm8PdpP8aVxIuuwyS4/JscTiTg39T9MTaHymSj8qf
	 uO9uDRU3hTd7gMiqYW88QSr/tCNsj9y1a9moporTx4eWHwguB0tHg6fa7XERkxxNtT
	 QZ4Wmfr7VSMJnEsX5uPT49uDn/4D9qxKywL8xevYPwt4th/7V8qxNmB0LsppRFwPKq
	 1alAuwCo0OnZS5hWZHgTeQtqTUSPeKgyzY5vlNPD//ZunXcgNDZ7iQH8fH3/X/FOk/
	 PC8qoBts2Ajew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F09C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372799358.32402.5757901116377906408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ccae3b5dd51b700fe1af6826c2094bbfd13ca94a708bb20aaa5f495b4e269d0
Date: Mon, 28 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753727993
