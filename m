Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E241131BDD
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719991523; cv=none; b=blYwr+z79YWtyyfo3FBUjIMb4DVUgLHlHiDGkMne5RCruQLmNUTmsj2D14vAKo84rdbVpnWa2tkzrjnkjKzhxVAqAxhhOvUEPF+1+2YcaxhoUfTzfFC1AIiUeI73Zlr4R684FhEdgwkJZ4qQtQLJ4fHdxjQMAIOxqHA+InBa9cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719991523; c=relaxed/simple;
	bh=poaOM8Y1n4iCza0ePgvpr2OGzYmOk23fRHSJgZwuILE=;
	h=To:Subject:From:Message-Id:Date; b=uFNNJuqO4q7lQ225qUULvVQV9O0K3HbnhKSfnNxfY2saOO80jb5SEa9wGjidaLaKYv6A17HorocWpn8wStatSK8Hj9NmgXmLqnW7wqkNIy2eef5eSzOZfahrFvILBb2OAEigE5WsK5PbuI/QQKqi02cwwc0SVdgLcPxgCaCMd14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4ZVgKs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4ZVgKs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD235C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719991522;
	bh=poaOM8Y1n4iCza0ePgvpr2OGzYmOk23fRHSJgZwuILE=;
	h=To:Subject:From:Date:From;
	b=u4ZVgKs0UYCeiiMS8bl1N3uCHXGZ0rUNVneGgiwzJB3unD3LtlnsQEEgpJIoPfCPN
	 vyC8IDenLQiIH5x9rekVgx9emcpL8R7xYFFbrVaeUI9psRQgJM2X8cb5WWUq+EOCJ2
	 BnDskPr+7y0nIL3SHybkHgCeFr1tFHmwNhq+KiuqPmSUNLZ4PeUeeF5vl9nLAoRnQd
	 CW5lNmhHJitjMjRd3z3dSwllIm+zEF/xKxLjXaaCVM85hIaHlUb5jj5OQJN26BjhHt
	 ot4divpFtmy4TZn6LmIUa7LLK71qJjep4BfIpU5B/NDhjUhQa8VnHczGQiFZmavOCI
	 FHFYKjDmfXSZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B6EC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999152280.30501.7637030693795804285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d153f6067c0b92e97631bf06015cd90b61f409cf894d12cc6c0b3ff0ff39d73
Date: Wed, 03 Jul 2024 07:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719991522
