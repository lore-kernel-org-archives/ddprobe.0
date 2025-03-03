Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6C41F12ED
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 22:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741039734; cv=none; b=OOelfycKZWRxUESB9agRxBT41xLOACEY4E0tay+qSUTzeoy345eqI/kPB0K+d8XlXfiXKFT6E5YH9yTx5KNyF2A0f00iITDRIdQbPX4gHzGPovTESruxbqb+sEbYQnCGHrPZ5IsTKGUaBhxmZlp5crYPJA4pQvfHY8I9of2Dza8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741039734; c=relaxed/simple;
	bh=TeURMi2SJ0V1LK26+79+Eyol+DV9rsAQkcMgwdVrh90=;
	h=To:Subject:From:Message-Id:Date; b=dES75ZoUYoW/jryfWrCW80LJL0wUnxeSD/bdFdbEMi+HjIDeuA7BLnFI38pg2vJ9b1EYpt04u7iku0F2SkgU1IYpkYb2li/QHPBpILEkj+SAqF/6vcaW2KyiIaAVpTIXlYij80xhoHUOIb8Ze9LgULy9FThX5LkDIyZkhCdt+5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSJT9p8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSJT9p8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A836CC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 22:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741039733;
	bh=TeURMi2SJ0V1LK26+79+Eyol+DV9rsAQkcMgwdVrh90=;
	h=To:Subject:From:Date:From;
	b=kSJT9p8dIV3S/ncqf6GIqpi1XxfzUqCLApm5AtpIJbD5lJRtmGuZR5b7ACzmSwW/0
	 Po3HtJxbYNNHb0JHJUdx/uPP998NQyse4mANrxMU9i8ZV531cHwx9gRWIZzK3LFOFb
	 f/pwRKta5+f4zLcKOJb/8RenGeC63Kp03muN1pFAZTi4m90k5s1McpD4Z/txA64WG4
	 8B4uyvd6YWpnyK8aNUvzfvelnYaWX4xXD2SMP9oQWFJJsHzq5CaRqEV/7aozKBqDf7
	 k0ACdOQxzbvlgXkIGRNX1nsZCsTYz5zdm6VJYeafoCfew5CYBAVSti8/D/toKb6sER
	 46NJw+c5gSeDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948FFC282C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 22:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174103973359.6588.10684752723919005503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72b5dd99c54d47cbb6d2797739e533a1393a549b51cbf22d9aa49dce87f1a18
Date: Mon, 03 Mar 2025 22:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741039733
