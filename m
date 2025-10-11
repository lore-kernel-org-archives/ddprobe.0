Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2577C188580
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760221194; cv=none; b=EAFVbwjSuc3b6sX/1Ra9IuLAyja7QHHRd0dY5FsCZ7v4eo84+rCidA7D1qxeWAjuoI5dkNW1sw6CG/p0gcKbq4iD9xTBDwRjFFCPO16WLzHazKJVPWeADtyXlVaVkrfwKWGWHMjHbazkXWImhtAmyEu4xGiQ0nay224N/gXWSzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760221194; c=relaxed/simple;
	bh=MplyaC6yc8cKPB4pcbUzqKKb4EHVLTY7f5RJ9OvYyEE=;
	h=To:Subject:From:Message-Id:Date; b=pbS/cp5ky8PaP35Iegzr+Hfe1/k6v6WQXELdYuGnpK+oNt8Q7zTGIFJUzayhQXbGv3acSwc5LGf4kxt4WJsgQYj0w8qnu1OstD6zRWnJm6+BTaZQnDxljK9k8lVacz0mAPUah9l5V531hZW8EnlKJfAkiZSleaTqW8GxoUCRDw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvptRSMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvptRSMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A523CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760221193;
	bh=MplyaC6yc8cKPB4pcbUzqKKb4EHVLTY7f5RJ9OvYyEE=;
	h=To:Subject:From:Date:From;
	b=dvptRSMbk3/vVyLhqciBk3x7Fo0fsLxAFwwAr10XdriY+V86Aykgo38q+H+apTdWD
	 zlERhRsVSj8vxNgJXMnkeLEdG9RACIbi1G8KzeHxn7Mu3ed/FBsfmtiZsBpL+6gKzv
	 1RIgGI5+2/f6Udpl5PNjIHfHa5iHuTt88QoQs+ZYiIp2LPFFdX7Em325Az7q/4CJnL
	 zmxGOrjYkBiEWxRWQ1JYg+2X1T7GJsdfncjWKzQ4gs5jBxuLvsfZoqdphk2WdBY9iA
	 1gskKJYu6nXnPaieiHMTb3rBn3c5rqfdTLFL9W/hAe+zWqtnlWPw6/foRMaKehbvhv
	 9jnt03BeEDsUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91604CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022119357.13283.9623927885782044956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e67edbbbb4dbec5f482d00cac1b597de7401a94bea4a4d590234c78e1fd08a
Date: Sat, 11 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760221193
