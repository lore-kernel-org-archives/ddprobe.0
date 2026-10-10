Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6512923BD06
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791616234; cv=none; b=kELWoqe7WRn20S2BzDdMiehDj7uI1SxRGDoWBxwNiNibwEAylWObLFP2kRcD+mhTzZKjn1Fga8kpbJM09vsVrKo87pGz7j2yMQmDrZyAVJlpMPNENMowOUZRLK6ugY0+ol8KVl2Rv7uURRpmYe0kJJtkmjkWu+TS8kSguQ/t/3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791616234; c=relaxed/simple;
	bh=IKo3jedxPsoem8AP+La0kirvd1WB1Wy+KhoAk6w+OCg=;
	h=To:Subject:From:Message-Id:Date; b=f4gzoKDL9uxhOg9K5Nu/XdcvuIh09ExZgNudixeAiWUbpuYKMVtk7RIKGX663+88ALB4CHyRMm9QUSf+SleWzhPVZv6rGTFfeTYjeO8rxAefQE6s1NFXM0+nGQH1OUSOaGF8Hbo4K4zbFUE2D0N0ohZzL0UuEApvZqh/xi6bb1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snCbdyaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snCbdyaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E12E1C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791616233;
	bh=IKo3jedxPsoem8AP+La0kirvd1WB1Wy+KhoAk6w+OCg=;
	h=To:Subject:From:Date:From;
	b=snCbdyaTL29OcEExMfI2dTdBfaoz49ew9D+neoSIjePEplDNmDAllbTrNLNXx04Db
	 crk1ozTUk/U39ohtqEbeDEKPKI5CScIYN3JFa/43OnysuhJwy9QjnAOp1YJw1Uy6sR
	 +3FzyOtLxwuu/YblYhKo4mc6N28ao4p6JOkemcU8ESomULsinTb12ZT8Yel25aSGeZ
	 cdm4PE8nZTuasCDyPlDo/jbzyezj0lzGgqYG84Faqv8wnaSaDmfbfPLDf/Kzvwqy1R
	 JfT8gAvuod305ZZYlfgrv9x6ASrEoM/lwLImUbyEVv0Gpq6KaXxQglTBejFx11kOTs
	 lpKYp53dM7/6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE3ACA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161623368.16298.15451178991441880821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a29c76ea15b1f5784d8ca7341ac0a94df6914d0a5939e6032b244635016a094
Date: Sat, 10 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791616233
