Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0FC2C15A0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779370234; cv=none; b=eptzZnj3TkevBgvdUjclOqDyAZw5lIUl5vKGJy7sRZGE5V4lABDw78GnkHGJlgM17nZz/tTtPAOXFc1Xhib8X73+Er4LEKpscgV8UpHUKzYHKIitzBqzxhW3YMQFh2pIhsEWbzh1dWolMEOg0Z46kMc6wA8/LsM6H2FgBZ05v8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779370234; c=relaxed/simple;
	bh=Hl3zUMjfsRfykYHpqUmRYnpInmFeBc58bS12vjRkeIs=;
	h=To:Subject:From:Message-Id:Date; b=ArSoUyvK39pbRSnGxCATaF8avBHI8YGyHwDcsK5rAcHWDj+EAJBUCTc62kNnhc7v+6P8F6Prpnnm12NrYEeo2x0+HuTpZALurGMKCRJ88Uij39EXjr6GGIqIIs0gX76sUR2oPpJtks8zjUE/4RGzoX1xT42Dx4Wr42T4rHpVCc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMA0g1yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMA0g1yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B68C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779370233;
	bh=Hl3zUMjfsRfykYHpqUmRYnpInmFeBc58bS12vjRkeIs=;
	h=To:Subject:From:Date:From;
	b=OMA0g1yzahbVNE/CrGJIjpJjDcLUbkdTSy7Pi9KLcvyWgYCVXRSYNht1sl8fRcjme
	 xhJzY92XjVCkjlSpukoc+RmUc/f6cTw/qEF84KpMXAQeyQpt+FSyo947Le6+fjlTcO
	 05yj/RKZ7qKyA8LpiDMlyhJ7WR8PMvkS6ZqxPqYMdGyPOo5XUNKqQQwSotcHdw/YMD
	 eJ1fTue/niqZc7WTbsyt4y8Y2s5+MGr5m3TT1k/crjxpLHXKGtfnJaY2tef64q+XFP
	 NR8yY1YXAcTpr1WxpouzomJ0TKowl2p1yCPQWO61N0f+DRjoD3Jfp4k3FJ2XVYuii3
	 tHzIfxMbRVEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1CDCD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937023370.21445.689075889641367372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c460db5321dadec2d3b2f5e2aab107bb88ab303b9ac5343f02277ec62382e7
Date: Thu, 21 May 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779370233
