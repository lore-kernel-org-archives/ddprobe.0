Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB4413FFC
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737342354; cv=none; b=gqBCOYNWF9GX0AikYLEn3JmU+tcaLbNWf90lqxmn57Om2wEWuc5M5Yn9vlCuDcp+s4YagryvH6j+ISKyTspoEGNrj7E6v0z1sdwc00tg3JbFh2Kme4HBP0qJ7HQLJODcMk8zNiV4Nc77a+VrcoxxHbvI2gIyfNnZdbuUj9NNkbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737342354; c=relaxed/simple;
	bh=txeHZjpBXsATw002PzoCSt3SzzeBEM2iD2Ya5pMUhrU=;
	h=To:Subject:From:Message-Id:Date; b=fdmbQS4qDzxYlpvp01gJiNHdSUMTWZbh9JQ4YTq+wFl4NwNcCaivHnBfgABrHH/9o6BL+/FvYIqZ3TwnIAMgYhtqSx7r5D+NWlD0/d4zQX6KclDbRH71NcYGcxReVgiOjDxzKd4u3MekUWnTvpbW5RoY5UECMR/PzuY8gBbmZgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mH0NbvBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mH0NbvBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB192C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737342353;
	bh=txeHZjpBXsATw002PzoCSt3SzzeBEM2iD2Ya5pMUhrU=;
	h=To:Subject:From:Date:From;
	b=mH0NbvBYnKu6sKETK9M629KO31BmnSupx/qO9ycmFSCWTvJg23s03wGeEe9nrRx1G
	 Om8DpGTadwYEGeetrzbHjY5fXJIIAUs/mf1EtShLP+6sWtSef6iPnHRF0Ei6ABNcr0
	 fzgimEdxr3dLFLoOmeBjfcFHKpNhPWMKi4NttHLRINXTaTtRltfuuk75uSZ2F6tbmr
	 hZYHwxZDQevGISgMy6RhetivAQdqOrxOfBYuHd+sfPRWcriIMOSYs3j7kvF2EKRids
	 wNxPYdaOOyucJPam6H1ucJtgv2yma7kmDtU8bFU8XuLEKvfSANX8bQYncONo9gO36P
	 RyDpjbIQBsXaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B10C02188
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173734235361.8619.1581264450539912770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa762c0bb46e27d3637b7655f0bc3c3b54fdfeb4c3607ce1f19babbb6e6e58a2
Date: Mon, 20 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737342353
