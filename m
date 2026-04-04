Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB83299A8F
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775301934; cv=none; b=szERRZqSNyFGSaFkE4K4JxmGplPyNIzgl3uadT/0r0M3mKPj4nn8kMKeM811xwITT7K6a7Qa84hbD4eTS351OyxT6zsQeHyrTeNbSyzDx7mb8dm02wv/7PxXqZPnpTOPoj08pq4tAFIRt2XfWS7YYvqAaakU/sSmz90iVjARHuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775301934; c=relaxed/simple;
	bh=5WRMDJW3f/brcSGyhy/4lL050YQjBg1Ctb6ELK0tJSk=;
	h=To:Subject:From:Message-Id:Date; b=UEpqCFBiGFroL01Q5DK+9kyMlmcFnvHW/cZ/AbEimnlOCZiN3OqpdGnlxLDtXzjNScoje7/w1t90f573NfkmOutCzwD0TxjseWs/iBUOqPhb1vNhxZzkAnnNwRUaJi4RiPCkh9uou9FM0sdR6q06UfhScklt8ZTIAo9d2OfEpYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0zGGwhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0zGGwhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40F7C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775301933;
	bh=5WRMDJW3f/brcSGyhy/4lL050YQjBg1Ctb6ELK0tJSk=;
	h=To:Subject:From:Date:From;
	b=Z0zGGwhgvBc5ArzI2yK2iyxtdMlDOc5LzXuRZ2M0lrWhCXAyHxE7YxxQffl59c/o3
	 6nSIQ2JnPjAQYHhKrZhJP4p83KX4MANsFDVOX552VMxRSwbaaaQQvmITQMIBHoJrJK
	 2GsPSNjRW+50Fx3475GLufa4hT4MB7M8pEyjo6uSvfOYgOYHr6vixL34HzoZrNR8eD
	 Hc6MQDPwoGbLFa4i1n5cNRqVGc61lGqRCTADjdxzjp1VjT9XEAyAKoUZdeJFt+Ah7W
	 xFxjl3w+jbwhuYx6X1ktCQt2rvhkDipo5MUFctooQpbCobcyMMxJneIbUNhy1Tfdll
	 fW+tHfnuhS40A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02EBE88D8B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530193368.11657.2773008052691956685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0073fcf5cd5a92263cedcd6006e455dbe5e264683b833cb62c68418ad599bacb
Date: Sat, 04 Apr 2026 11:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775301933
