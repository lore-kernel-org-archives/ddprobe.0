Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC3439479F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784317714; cv=none; b=idIJQuTG3xsdf+11CN2XCCMoBACwPa4riE2wucD34T9TrMlYlbNbjLViON3JF5HAHbSWm32bvUSIhyRZJIPkUQGipy2XxY6rVjFcMjs35EoXEIiI+QK1JRyEMpW4vZ+j6ZlsVVhrPuF4TFIXsZEaTd4e3V46koazqTN1iOAUNxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784317714; c=relaxed/simple;
	bh=8ef6ykRyd8for3KXz8T08w3kngNfEfXj+REGN793Dxw=;
	h=To:Subject:From:Message-Id:Date; b=YCCseycd83SsdumTwmFPWZ3lnKcdtWASmLWh4vGjieFcL24tlTc3FfXFp7rzI8ML1fDlUzm5XjHJESQ1+k+yLUN/4yP+Pr7HVcFXFEkjrdB/FPNi+KbFHk6qdjmFFDQ5foGZETzf9Fw87lAazLFFNb4qeyf7VQfuFmcPcObheJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzoSHFX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzoSHFX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BDDC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784317713;
	bh=8ef6ykRyd8for3KXz8T08w3kngNfEfXj+REGN793Dxw=;
	h=To:Subject:From:Date:From;
	b=KzoSHFX66uJa3iTVVfQJYSc3tjkCyLWF0iVutL8Jtok7OiiCXCoA8LrGpYEjqRc6J
	 Mt71wHxE6fvc4dLHEqX75wBk3j7WG3jRLAXLSE/Z+LrDgL+mfv4JCOU+rSGWtdOKqA
	 zi5OUVCXJkhG9xoMLXSqfMvwYo7fAhDhEIugpmKksqwPPuPVElk81bC18L6+ALEw2G
	 Os04gVsc8OlvZePTVUf9ofgpUxITqQBlF3LzAY9nCpRdalOk9N56cQCr6m/ZCwDN8n
	 rcL2xhRNTCjr5DzFBk/9on7ZSXRUIUm2gDMEkt+Ld/PVkA4mEzyBM/Zk+dwhgfTX7K
	 d7NKfAtqZR5hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB842C44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431771374.3111.11078412936157186239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f345b61a987adc3913007a9440caa99d548389fbc3cedbe070ecb0a974b31374
Date: Fri, 17 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784317713
