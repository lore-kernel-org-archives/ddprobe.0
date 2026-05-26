Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D8D19539F
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779757354; cv=none; b=Vi7QiEEpSpRGsQll6tHoRgIitFv1oAv/o5BeG0QyUP/GvivC1LPKMoGye1YE0K0sEvmOLxHO9UmLzfX3BF8nCjpoI5wonR5SCqfw1mAFAvT/CLR1bK1EJwQ6+qjMp//xsuYH/BDvJbnatt6TnHjcYqfbTruE2sypYuVtYoeH5UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779757354; c=relaxed/simple;
	bh=Y/l6Q9nbRBD7o4d7Lia5lBkYsVq4NUAFMm932Yavgu0=;
	h=To:Subject:From:Message-Id:Date; b=UUj9IUA6nJP3wO8a18FyN9U60fTAqp0JSNiZV8jw49I+XmfdE8bLkWfNSrs4Mw8d/WH60HOOYxALxUgRuwwhoRNyP/zhAbSYacAvzd0N6Lpik4Mkg4+v7T6oU05rPEw16JkRWyTU7tdPGJaJUYxEUDN5k1RzyKobdXwhopkCRUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOzoCDIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOzoCDIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE02CC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779757353;
	bh=Y/l6Q9nbRBD7o4d7Lia5lBkYsVq4NUAFMm932Yavgu0=;
	h=To:Subject:From:Date:From;
	b=GOzoCDIM+9fBHJ5oLWXCh4WonFj84OoftH4kJdiMToIIES56nRhmPyw74CFinlTD2
	 h0+3qhpc176i5FfT5dqYFdWs1alhHaasjvjSz30S450Wk0dQoEspFZM7rQcNE5TSbq
	 cKTtJj3ROux6Pg+zxglPz4ZYDOQp8B1sXx8XmQD/I4BHbH8LxncoQwrkKxrcBkBTe2
	 XuVmt3XtkGop1gVXTJYquN1oi/Y4m8aXdllkBuWQrQU0JtjUayzXT1t+Pw1vGn0Agv
	 DwZKDDEBZAKuSGaovWBvYMQTMcYDbqA6+hMCPvNkzos6MwS/d4n/Fog0SOOwF95zFA
	 cWFBwXp0mPuuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28DFCD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975735371.30105.10023326473344893215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f475ef68c03afec13af037862d37fa373a08363731c3052ee210f9d3fae5ded
Date: Tue, 26 May 2026 01:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779757353
