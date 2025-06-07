Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8D31367
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749254994; cv=none; b=H8unOHTjXQV9w5K9i0k+O4wmTHCiptcKRUBZW+YxERHCGe4DFKi7JSHmyYxNkQB6bZ/qHvBb9jM9lDC5V5SpOBJgyQEBkoEg08VscrAML92Ww5ibB0twcjJ2keuZgwYWDJ9Twlh6Z8P5TVIaW8dwX6tUrpsRvcanMfYvAMj9KP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749254994; c=relaxed/simple;
	bh=PTTS5qR8QIS82qn8XEXhpKlBWW9QqpC5URanglZNJO8=;
	h=To:Subject:From:Message-Id:Date; b=EjO7eIpyCpj8On6KBvR92+RzNSxnd5zrAQ90IhPhOd9rX85G6Mvewy7+UfUFW2CmR55/Wb+T3/4UihOPiqDaKLBtw+u4nPvD4fktug30LOBOXFpgAX2JZl0fzPl8Zx+UDR8DPJ1Ikkf+CqVAv+ZoVfqngx5MQ8evxu7+Fxwvsd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nexvMWQ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nexvMWQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A3CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749254993;
	bh=PTTS5qR8QIS82qn8XEXhpKlBWW9QqpC5URanglZNJO8=;
	h=To:Subject:From:Date:From;
	b=nexvMWQ/ZBCRTW7T6KkWQcWtD2W2dGOpsP9isRsEWFOxCd6suLQs1JZe5CuojaFCd
	 3yIktU4irylq2uAziPoa+8LMPCAuRFx4F2xG37ICeEJoOsX2y1zE8HY7JsbNavrpY9
	 095DBqiuDhSYClV+KWbnNJPZC54MsVrBfUG2S8xlD36DPLNNjfxNrTLuICZQxlkP6s
	 /9hZzx2h8DWAWfBX9jfTBydzXIBWrgrlmJVpKKowFypNRlVkOSaGrqk0h4Qxf+6qIW
	 vY8bc+WHr2XvPvxS/h05jKdq2vIj8hAZQH+cwJ0XD2C66IYv7Yk/CxNzU2VXNNf3tq
	 +ASgYBdFOFP6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4ACC61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925499357.22622.6428321075510450454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d693ded8865be912948dd3647a1e3b56b1c2d1c8e16e5c32d8e15dad0ff62aff
Date: Sat, 07 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749254993
