Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D991399D10
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790664634; cv=none; b=eS+VBQ6n2xsXiHVkCZusL8L/dPvW2XJCt9KoAf2xsiUhCYp98e2z9yDrv7GpeqNhf/rUawd6nK7tfc2C1pICSBfeK52oynUa0PMuQ4JOFarGmJkV/5hTJizxMC1NLPaKVeucs75YJBW3W1AongkAGjHrAQ3dUGxMt2Nwqg2dgCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790664634; c=relaxed/simple;
	bh=2r933IE0+HZGzWq+nxNbUZ7uc/c22zfknhIl1JAoU38=;
	h=To:Subject:From:Message-Id:Date; b=TLP1GFzBYaFSwPwQiQdFzfFoY/IylwBZu8ovqbIdIysLW1oDZItMCVbtF4m1UlCdJDA8l6p2o4wqzjYnbgyPYISUKG8xJNEBSZQyTLFRhNUCgiIeEri7Q2GW+ZUIXmM1Frwn20ZaebRMP4ZyoVlDP43C+I1WwcQzfe+j3x243TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hM0jsJn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hM0jsJn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDDBC4AF12
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790664633;
	bh=2r933IE0+HZGzWq+nxNbUZ7uc/c22zfknhIl1JAoU38=;
	h=To:Subject:From:Date:From;
	b=hM0jsJn4QsOFeODNl6IJbFj9iRLDGwAZC8zj56jH2m+seHizLA2uzxulsRfrgajNV
	 sL67uPhJFzbOx/7/886Bfjlt8gJ+M3QOZD5Aln/0XtEl0NU9Oto7WXMAVOAbX63AZn
	 UAGGmbmbXinG4vDM6w1sZ+pjl8cf8SQ6Aq8JaLPQx/cLpKMwOqOrasYO6G0gzkpU4B
	 n5OickCZc3Ygq5cqDc33SKfbu2lFDCLWnc2auEKtEb1eG9WN8Tmm0+Fm/TH1Y/v0/o
	 POWmec3uejy7vItLqiK/gqeWSB8NbClsdvARSmw1yZT7XdZchpq+JCV8TWitT8R7Dh
	 bmRuS+L3HacEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE130C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066463370.5143.6714736559537144669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9196bb2efc5297623e588c000f84641bd3be456b71cd855cea3e602f929ffe48
Date: Tue, 29 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790664633
