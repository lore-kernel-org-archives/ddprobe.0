Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AE42F2C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715009543; cv=none; b=hPxk21FA61vMoZrC12XFcw2vAcKs49t9jl1hK5oZ5uXHxj1gKhreO/QpeYxptqlvU4BonMQ05uox8vEggJToT/NIIjitOOZji6OBldGArI1EWIoRRDnaOs7zVPsBCHPa5PUIYQMt70zd93180syknA1i9Iz0XRNmbsr2deoXdgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715009543; c=relaxed/simple;
	bh=8mzdYmr2esMaQaINF187rqac+IEWfCarpUi5DCYpHrk=;
	h=To:Subject:From:Message-Id:Date; b=kDQ5NXE5H8BJKeCgt/BzA+e6xniKydobupcCG0hfPO9aSlc5WawBKhtpEszZZjCgESx7qOosQH2e9ZLpEIKgjJSo68deYH3aeWAz/gtOzNkLYH7GTHb5JP1Ac1sDJVBgP5fMnABfzoo6eTK0tHcJ3MJChQcLRQGKlHQTJf/FIwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAlLMKz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAlLMKz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C4AC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715009542;
	bh=8mzdYmr2esMaQaINF187rqac+IEWfCarpUi5DCYpHrk=;
	h=To:Subject:From:Date:From;
	b=lAlLMKz9xvfDCLq+wG2BFxlyLqEi6R4vHpAwLlcj6Q6OBJJ0cp11ayabmAlgRon5t
	 hUw2NjHAjgNTRZiwJr8TkkF9DIFbHaGvP2zPmvLFY5b76LzaNijTaQrl+Nr1hU2zj6
	 scNNSsJ9j3nplNC9GKF2zLq9i9HRXWIvXcnBrNtE6oIXkeLg9esJkS6EYfbyNO8979
	 o1/P5EQfk/tWsSGMK9DDXslqG8qx0qX8IiFVTcGA4m8q7Hu4dX15RdwlrekhNC5LqV
	 wIaTIuxeoFQqlK7f9OyOoChVx99iGqR/9VyjymxvAiKkTJC98evvYXcP9uSVGSJE3z
	 Sc7Fh4gDBPkgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F30C10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171500954277.11460.2873069509248930369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e86121725646609e9a0ea73433c54a9e4bf5e5ee5384b204b7cfe5f844a8e0d
Date: Mon, 06 May 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715009542
