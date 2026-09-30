Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDB252122D
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790805034; cv=none; b=YsnSn9vD/vLfIChjLPHw2Y8lasssLutggUyGd0Sh+rO+n5y7dDjByJ7INDjPoPEK7BQqrrR7G9snYbJ3JbF0td7czFgk9BkouZtu8W7/b0F4jga94TdvtZuF3St9dHhwFWQPs/kaJgM1MQU4cjsgr60A9PvDuT8L00hmOR6HCQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790805034; c=relaxed/simple;
	bh=WUv4AGGEs3fwbu8Ezg7kcb4yMntG2z+yslrSxSlLgVs=;
	h=To:Subject:From:Message-Id:Date; b=vA52wtR8OILMGszNWpW87yjw2MvcZXHl0vJffpx6pJTOlRoPrmKyyh0vglaO0hpTGjJBjSh68JMY5tOI600A3KyUJ+CHvmgBuVZDA9VzUbmjobW+tEpO/aHy2Syijv0kYIQK6Fw4lctskry3Ditwch33tMCS4DELFP68RRQkR3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTjNTrr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTjNTrr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAD9C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790805033;
	bh=WUv4AGGEs3fwbu8Ezg7kcb4yMntG2z+yslrSxSlLgVs=;
	h=To:Subject:From:Date:From;
	b=TTjNTrr7RvSDO6rofjSHvnpsO5bvJY/5+wMf2FxXZ9YDa4z3upVs/A9XcuCRVQ0Y1
	 45nePF0CwVOlg13foMZ75Bo03fbJZRe8XWsHRzoZvhJYYbaoQi1RrqixvXZj/QFC2h
	 71hbPIVSjkUeCpHICcSyeLkUwfnlnVK27tHuIDrUVv73M/3uwLHUz+8xiOsRXvkYTd
	 Y83TzDKC7cJvV3Voy3TOAoMS6eXw5bAnugILRL4TTnz1y4bLiUjFae3p5gZSihry/4
	 Dcg5cQGcChITxLPfTm1BPRK23JRTqhMShMjOSZP6o90x9RuQOh6wWYHyMfEY/gH10U
	 OV6SvUnDXj1WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1F8CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080503369.2601.13721455184067965259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c90568eb534cc149fa6b59f915a97b911c1594e4d4603c0837af02f0801058
Date: Wed, 30 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790805033
