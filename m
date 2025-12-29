Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FE932E734
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767018834; cv=none; b=ZYDRI5FWP9zIl8VGgoVYr+MVe+toVpioDb4554TSD6mm0DD7IhNynlOrlQsgwpBRC27YyOsp4BqMLHPl0UDQok47qN6NMGeMy/KvanwQ9giaBsC5P9hzQ7byvdsT0VX+aJaCvCdiHHQVkd32Vs08fmuzQee2UK9yIwkYkD5ihKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767018834; c=relaxed/simple;
	bh=ryCkgOmbxDXDwdBslZVBPaB/bAiMFwHU3+3wgaIROgg=;
	h=To:Subject:From:Message-Id:Date; b=cYZ2gMcFYnaAQ8+/JU/Rb7HnvxfoiV1LKzfQ5T7l7coyagt5vPxjUd2Z/rjHJU0pbO1q0vCV6G3gr+Pz2ckMkgQy1Ruvwoq+AEfz/V5rkPHWYiXkylonKVKgBuP71StGneDYzdUi0o5cPae1Wm/Cb3qr094Az4bfkrdhjjUBQbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkszvNaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkszvNaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC4DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767018833;
	bh=ryCkgOmbxDXDwdBslZVBPaB/bAiMFwHU3+3wgaIROgg=;
	h=To:Subject:From:Date:From;
	b=FkszvNaLuBkx0KKa2fHCEiZ6Y7rHwVFHXfQLty1OY2Dm4t/bmpHm670KCJ5PEtvqD
	 QwxYEkShA0enrtMPFi7qwP/1R0br9xAKogtOJ+rL5EqsIdVD25ImzbT0p3oLHsMbh+
	 B6spL2cJI+7zqDPc4bVDItIwFUBT0OnB1JAabUP2NGNYCHWZJ2MqdEcRMbQ0Ej4kaX
	 F4k3kg39f97ymg+3QTrQY6cnx6ngG68L5bNEqI1mZUd5tvqeuePkFmNk5gz+q0eNRY
	 bU68DtBJOAdwH55V34oYCFIPa3wqWxhxzXSLf4vhVReqxm14aXODKF50gkUIMu0+Kk
	 nQNlvW2gTO9Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B775E8FDBE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701883361.13917.3161033397540570474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a0b87a5907bd7752ba9fe2413513c43701292968d8c752af30182a721d7b1d
Date: Mon, 29 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767018833
