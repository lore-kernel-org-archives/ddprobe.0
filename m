Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FB536683B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776436054; cv=none; b=uoRQq3zctJMa+XCPU7PINHcIoWLRdro03DG8hRiuhGgwz+Qy+bZSD78H6f7H6CupzuC4aVnznx384hAWv31lY1noK4c1IP2/m/orv9wmjRn2bSDIXo7Fz6zo4lbH37qnK3uW4WEA/hdg+uK1FO5ANPyx1zQQ7/W7Y182fRum3Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776436054; c=relaxed/simple;
	bh=+zSGWrAz8Aj9OaKmxN2JY4jkDozrmZuNfQlLVWc6OU8=;
	h=To:Subject:From:Message-Id:Date; b=efbBLnRsWe1/t7AxFjY1YlhimbrD6XZLCvVPCmXUbPmc9WqYdsDdoNh+KniQba5Pgkaojvor8MGUkqPqAzeLiNaT55T2PCqxqZF3bhKiZEHuULPNwrDoStRRcHP6E4BrOqn9lhkHVVqfJkLO0que9SSWU7HnvsmXjzNF4HcTkB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+Z49SyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+Z49SyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0EDC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776436053;
	bh=+zSGWrAz8Aj9OaKmxN2JY4jkDozrmZuNfQlLVWc6OU8=;
	h=To:Subject:From:Date:From;
	b=p+Z49SyL7RzYisbUbAsyimeQzvjPg0ioybKa19xKmMnR0QSj9qherOqHBxCB2PXgt
	 r+tQZ8rJAgL5MFeOehuI4SKJAD06G0ZHnbNflOnoDtplCLJdavUREYzrdSxZK67CYQ
	 xl9MygBpvq6mtOQVH0yrwOvDhSZqpnjWvlmrLWpIAHaUKssIU5eiuF45hTVKK5vtod
	 TfzPPfi7rKQWBe24m1I+c/u9EoBsTsOiBYTiOYNCBmY4e+Vojstium56j3JwJ/933L
	 z4P52OhmClBUXGbA1gvijf0VV7iWAy305yYf/sFVdICW2kSXodMAc3nP5C0WpnNFsa
	 F5bzNjFoE+sgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A933EF436AE
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643605368.23900.17344005571417526916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e104977e56d79280af8b942ca6df665259801580e6bb5e97669e92f4e0dc3b5
Date: Fri, 17 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776436053
