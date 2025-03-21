Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDD422172E
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742554795; cv=none; b=Yq5zrpqfhnmsfibTiP6/VAG1BnUdPd9F5AClZgmFJIDbb+jMC7mNF7gQfmRNylGaOvQ3bmEZPtmb5OliC93YOhU5IsTWW8kxlfX2XoEmNQbbApOW3797TxNlDS4MVJ/gwByfWLR6CN0JHr3pPiBnoB9fP+yVAoD1Mh4UyiV7dOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742554795; c=relaxed/simple;
	bh=vaIJyBHU6XhjMIs+SnhRLmr+U7+5Lx7jd1A8KP6HT58=;
	h=To:Subject:From:Message-Id:Date; b=i+XbLkN49BLqNdUUXTs1tz/yzutluVB6yTD6vhK0vMTlvnkF4Bb/HVBj0gYSz6Sv7UzYktLTzjWtW3I7Pw+2p4IZ1ayLrVJl3j6Ye4yJF3404l7SxyYCtsJ8ohQ77tU3uvcvH4nHzwTzpVpefaaFuIh+Ej/ZDRXWtvh/nqnpXFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWUKk+Zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWUKk+Zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41F8C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742554793;
	bh=vaIJyBHU6XhjMIs+SnhRLmr+U7+5Lx7jd1A8KP6HT58=;
	h=To:Subject:From:Date:From;
	b=IWUKk+ZqSiO/QfeK2tgWJ7+xJ5y9iXi9Ct5PNfKMtuH3TcFw8UJ9c/E2Rff/h8kg8
	 bANEbzny0kCv/EcDvzHMZua2d9C5yNfiKUU4X7XsGS/BvZUQMNpxKnTxKbCn9X+6kU
	 bHSb5teYoP+d4VjCQFKp556JXbz7YEe+fRwDw/l8xAfcCWtqy4TpnO+xWwARquiTo0
	 +Rp7ZpfS9C/sSnmSHr0WwTxZu2KzGgi4UaN1HUWBNAX7dW1K1/r7mokTz0S35Gw1UR
	 1asLW65ysFHzTzWIojYHik31dPn20OTr/dJg217aDsupSBtkp7fpWSTV/4AxxJzA9C
	 VnhOqkogQIhbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E15DC35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174255479363.27349.11415211902823465353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87279317bb4c500634e4e4dd2b9d9d91918c401b038c2f8e8af689d951368621
Date: Fri, 21 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742554793
