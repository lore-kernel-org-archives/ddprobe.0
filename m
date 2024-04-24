Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581C584DF9
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 08:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713946823; cv=none; b=uueZOFMakfbN2H0w8GC0QoArIjWH3uEr6rRCdjcFo1bit61zQ67BXne+Jwy3qANTCv1Ngca3c2DmCAumzFcCnDXqSL5vwptH9mHnH4/Yn4kSwHsNOv119e31qPxAU6Z/9VsRpB++ravpt6nBQN2DLG/lKsMcy57XokaxZxROxkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713946823; c=relaxed/simple;
	bh=t2vTfRicVRSR0phEwwvaf8nHr8dPNOIing9yv6HP7Z4=;
	h=To:Subject:From:Message-Id:Date; b=qWMfI0pJKFPlBYtyYJyBUiKN608dNbW+nEFzIaKz2I9rP5D0tZ9dhYeD6HBGhOEWE2GNtjEIJ6s5kdqmgoci6AKVBDfMXN7RUv5VzTwICkWenZcXgaj66GC0yVJ45WMrcN695br4oBj+LElwOo+u3ABt/x/9jPh1Zm5yx+RMcl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QM63E9qW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QM63E9qW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC43C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713946822;
	bh=t2vTfRicVRSR0phEwwvaf8nHr8dPNOIing9yv6HP7Z4=;
	h=To:Subject:From:Date:From;
	b=QM63E9qWDmFDtZqvT5bNQSFuydw/qofXgk10nNEmC2YwM1RI9QTBZ6jyoYcY82z1D
	 /1LFzlGyXjmBkuuW2hwt0UdoA71Ot+MHfD7fD+rl5EZe1+SJZwVHe9v/k4MTOv3wWv
	 jP0iB+46f80yxohoybmUtwDqp/dSFoP5bjugmB3cNgqdG+0JEmE77XGpdYlzOHo7hf
	 6DncXeqme7WjHS+bUQXEl7X0TXeWFZYl0Hvyh5/Sy8wyqm231PHJhOBsrcx50w/q3f
	 xT4g7hMN9N6qFZDdtaoswdpftdwgcvcsGWKkzn3J/Xo0C8iVebccYzkmILGqlB6Dwp
	 7rcwNYAlHT7pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5074C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 08:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171394682279.23747.18036375582593081603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdcf91647fa0abcbf2dbc0b79a070b7a581bd0e6b3b4a754cdeffb0c8fc869e6
Date: Wed, 24 Apr 2024 08:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713946822
