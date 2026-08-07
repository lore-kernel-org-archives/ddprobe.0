Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92935476691
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786108235; cv=none; b=o1vhBR6MGERKOKiZrkvJxz0sPCXLJo9bUmTIadXWdGuSslOsnHcvW2F6XBe+GITCMl0K9Ki8RxhWIrhLvjA5Xu3WOa27OKhL4uNyJCoXVkPkeEHyAxIPNwWFF0Mlo1Qp14xlwpOqS813qyni4e4N4L1sxJRsfE1JVQY5vSncT4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786108235; c=relaxed/simple;
	bh=LDsbUpoDaC0J+3L/pbC5F+Iju0tnozkLngr0DtBP9ts=;
	h=To:Subject:From:Message-Id:Date; b=TKSlFH2ZnF7W0srkNYCfaN14KewTVDQwbsVnp2e4GswigJ4MT/NGCufUuIFhiKWUzPbyniFlxn9188NtHliFMTwu5VVXn+dbpqLwZulbTvh0ncPUT2Z7Rdny6/K8MKjLWx/R7DBUsq4pR7XHXvZ398vE6cENKl7C8molqxPwNvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITJT6Exq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITJT6Exq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7D1C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786108233;
	bh=LDsbUpoDaC0J+3L/pbC5F+Iju0tnozkLngr0DtBP9ts=;
	h=To:Subject:From:Date:From;
	b=ITJT6Exqhiy6Y+Md/bjTibppMAyvFjH2weZQnGJpvH4plTqnUPL14+IUioBFHqxDg
	 rjPM9FMZ7ys6Dftl/jASKXfc8oMdqIk6oKTVWW1mfjf5zdxOtv0ij4qkRizd4aL/Tm
	 EeCgPTop8SSZik/SW8VE8cq/edjqDr2XA/IKatcBKguV6qSMyQDljUHsJYsigGjGz9
	 ocE+enrMWxLjW1Auz5/cGYYy8vnvYzhNsw4M8lZyiSotia7FrzbgXWtOAul270HdIU
	 FE1usp44J6QCvxqFViLJcKwPnpLdNJI8UnUc8S+nxWPpTsjp46DgS7frfA2QlaiWmy
	 OMDI8WUmNPL0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA53AC2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610823368.7711.15117225912572192131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53127962ea70c376cb10a08d8551a8628dd80af0892f2c00886d364ade0cae2e
Date: Fri, 07 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786108233
