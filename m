Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0471C17
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 03:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716522803; cv=none; b=Q9rE3w7x9jJV+epwRlaMSGIku1yfubUHlQQIdfCa3lV/cfRCLR5gVaEv+T/oz3B0/CpIh8iUDGmLbk1h9LOg0dJ6nnM0fl2CNUwy/8/6HA5aZgdX6/tU6MA8dlikk7iK5DJqcS1SOpyTDYilGP1giMRnshwaPGSO6eebzFzkTEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716522803; c=relaxed/simple;
	bh=dCyBois+Tf9Jqs57VbMmpAzvz/oo50nwcMhE6DNSekc=;
	h=To:Subject:From:Message-Id:Date; b=Mm9v670mfebyN+yVys+X4/VjjI/BJaEM+GSGgCuqr/2ykthL67rqP8R4Efv3P5ff6Vgg/9PUrsTG7PhQdfyqxQxbu+BUShVY0uOHPZbLQ7OjBL4nw3uSvyjXwiMCJ7qeQDjdCdoR+rClQzq3W/ZYkR5NrQveaVv4BSi0lZVWJJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIf+E6Yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIf+E6Yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB98CC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 03:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716522802;
	bh=dCyBois+Tf9Jqs57VbMmpAzvz/oo50nwcMhE6DNSekc=;
	h=To:Subject:From:Date:From;
	b=lIf+E6YbmjVg44rVQeJb5HY3nH8i+2FC6+R+LyeE6+7Bk/kreyWkdqNw5D0Sy83AJ
	 CAqYd28dIGbvn8Ms1LBEDf6J6JpAwn2tqgvS8oNShIwyjr6NtcnK7f9FOPT84PZK30
	 AqyIpDo8PMNPINzf7/lgnKjULfYTKzSRKIvqymowfXLRCp6eJzIjDYzc8gm+UboEOu
	 g4jhbrn5OHUXov3WY3u59916BcOIyLP9tg//W+ATB36aOz1rtCfWaX4a+DCtZN9uin
	 LCt6A2yGyIa0YO3slJ5QyjLRcV6ZENowYDBLgm9LDmNmVzX5+6hvn67SHzPMTW2mn8
	 3mtWp3E6q8j6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4908C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 03:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171652280275.11170.17999378662319251812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23ec652a4c512376d3cbb34fa119a9ebe36292575256bb1ff355ad8e2194fb9
Date: Fri, 24 May 2024 03:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716522802
