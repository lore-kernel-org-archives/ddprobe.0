Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77302E9EB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768018435; cv=none; b=LqWsSKu0tgXRneqztmmfaH6aSEZv1Se4wi9027wZo8JaIrKGMnhOVMpkcFPO5tELD9v0Sh8hVVEqZJ32sFPTeXNagQGr3pKzYBB8f9R5dcQSLO2Qwqp//ui5A+FwME2vbGcIQS7APlCz1/oV3H/mGsMDVMKhWZN8u2qu4V89gYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768018435; c=relaxed/simple;
	bh=uuWH1K/61GnTuLhZqWfGwjeHyz1xT4UHP/g+F0ahmCs=;
	h=To:Subject:From:Message-Id:Date; b=iyzscCPrQjPcduKSa0IYHf1/jAG6ZHc7kgmDODTblsLE3LvQJXnlxY1EquDBZiFSm6J7faVCwhFp9GAhM5vIAFd1gc1Vamg6/GZa64achwgCZINvObjh98Gbnnelm3zB9pjMP3HInTrMUjhekaYfNll3AaGKhs+R+pZc8P6+TW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAkyQmOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAkyQmOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F1BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768018433;
	bh=uuWH1K/61GnTuLhZqWfGwjeHyz1xT4UHP/g+F0ahmCs=;
	h=To:Subject:From:Date:From;
	b=pAkyQmOs2euo/E3KUqeieqdkOcPFWAkgKi4xywYjQb/hNEW8hfoXHZ3X4ZdgWe47F
	 2+wB6gSSLucn4B7SijmFF7o+qMNYFZsYvmDie9u3/prhlfRH3flMV1LfoyyMR/R78m
	 MB76zgB9eznbwCQREd40qhZETOFMa+8WL0y3aap3GWwRtCWzyn3kEgw/TphNGZ4tPv
	 xcpPGcnt5szcU+ursId6Aphr+T6hcviFmhxUIOUtCGS8y6JBGPOkHmlwaYFUU2wLih
	 mNBS6Wu4sVNO0KGmzxxItBG6UgpSCUkWVIAet1xDmS5/Cee8n3bPe12PPyZfZs3lXX
	 RYUiqKGHnlQPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B58D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801843357.614.10008049357698687054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0f997b51fb720507ed93d417b2fad4af61324002aa2ba32e5b39544c98a11b
Date: Sat, 10 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768018433
