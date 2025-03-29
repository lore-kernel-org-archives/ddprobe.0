Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F9570821
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743272394; cv=none; b=bG2iz9tHYvid3bytbHIPOAqDy5HSTOriiQA81nhk54JqEHq5Gp44lOdv/0h4m6y18J1FCygnLCn3TvwekTwdG8ilOAx67mcN46rbrHanYRaaSssXBhbNnTpXtGVSt89qvuITlHiScLEzXcL6LEOMpbQBL7zfrMS3FGdo/WNxcxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743272394; c=relaxed/simple;
	bh=g4/6alOncg2uC1hYHbPPO6Klva0jCy5hXaFrJUFD9+s=;
	h=To:Subject:From:Message-Id:Date; b=hT1pfAWTmvAIZjzInCjKrYdR1+YdUpW5R1tgSs7hNgpj26cVH5Yf72dZRTnQh8RZalL+U6R9Ox9mwSfrVoOsChGr5xuxZIe9fQOn6Ua3L4DmyTCnCYvVWIxeKpZzGH9qYcbcs52/WmDVLRgIfKMQI676ddcBFARLT6+fTvmX+KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKR9/kqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKR9/kqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B24C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743272393;
	bh=g4/6alOncg2uC1hYHbPPO6Klva0jCy5hXaFrJUFD9+s=;
	h=To:Subject:From:Date:From;
	b=KKR9/kqIbAUGfgeJL1tH1D7bCSwy2CwmlOUIbnUesruldGc6N5yPRkukAlmEQTFrg
	 Ui/t+svj+2kd+2YB5sqwLfzBv5OdDq9CZ4zWgB42eAeSXPlyQcX5Vs9/tRf3lTrHp6
	 xys/KAhtiQcrcZ/rfL9hHkrThWfb7BmNbrzFzoRQKo3R5+ECqqoBqu/qquf890ol90
	 4a8zeMAfcmNVx73Idod+8WSt3o8OBBTZjzxBQOi13moONEGcrt6XFZFOU31WYzEERx
	 Bz+2KMPKSGNzCD+SHMzNmqsczZRh1WiUMaLgPn+TMDpF2Rzxo+zjZofIAf8NaOpDQE
	 dzqK26tUJ0RuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98016C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327239361.21076.7972039255133549083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c9ed20ad7ad479a9bfdfaec68c94afc15f8c7828ceaeba195c0c222b287c37
Date: Sat, 29 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743272393
