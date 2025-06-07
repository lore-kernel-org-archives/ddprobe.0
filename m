Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF9D2139B1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749289793; cv=none; b=TXjB86kT5doRQlf++RhKqsPwTbpncdVjCcsvLV5x17n7pV5+wsOQ8wctgj3uWkje6Vp2oK2G0fWekuXbHY0KAZ+qE22rx79IOT4fOCYkeveaNgOlnPRDYt1+O8KzvzHDt00xOlmKkj809bnW1V+W/szTMaV1OcIGXc53JX2yHNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749289793; c=relaxed/simple;
	bh=9h6ohCXByeNLsdxeBDXlFJIhJa7fm2GASdwyxK+FLkY=;
	h=To:Subject:From:Message-Id:Date; b=dU5Nxe+FfPfeE36Md8EaEy1TJJT4fj9Qy7sTEccEmywnsfcDgoB5vLjHtrCFbJTYuUG1y0wDR9GaViPEkwlyUkmGBMqVkSnh5bEYxaUBiUhOUYJHKxneDOJge9BTYkRH25v6rbcaZsph7w6znPuAQyulkyr90atZpVCSyDAh94A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcVNvvod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcVNvvod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2FBC4CEED
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749289793;
	bh=9h6ohCXByeNLsdxeBDXlFJIhJa7fm2GASdwyxK+FLkY=;
	h=To:Subject:From:Date:From;
	b=gcVNvvod1mlFJTGh420xyewP4OR1sBuJEGUlrXHJ/6E19NsRgby/W6xd2wGw/c28d
	 krTsiRPTHtCFoZYEs6TudY8/AzmoBB+I6bYaazHjmfRt0SayD8DuSjQ4v5owXyfL2A
	 gzWaPTqj35wREeIsK/Dd4L49OVMP2AtituqnpKJs0uaaRPhlV91XX6dqvc3FsMLkmW
	 5o98CZgcCZ/RZjNUPt+BNAnUIlRBxXayEder0gpDwR4jcsjsBMfnoKhykdLewoP2NJ
	 YLEXY8JOVxvIhVvzTc1p9upDeEm3lG5hQO4MvN/Kda+KbGfONGxvXoS1cOCoyyI054
	 arpnA02VEGUuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F499C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928979357.15966.185851963216328864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c42cc51b174ede5846e5ae214b03fa9324c73dd32a5b63a91e37c9dbb0a0d7
Date: Sat, 07 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749289793
