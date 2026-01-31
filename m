Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302B81DF74F
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769849634; cv=none; b=cQMaakAEHn2Vwc6XSikQiCB2opXrLRZIv1GdjmAW4kUsEVCqHvgy7GW/GJtbHUcNINtzTMap1m/qDe963BVjEXrsFzUV4N2Un5az/S+wcBNHsCI3sPYXL1w6q+XEz1cwUMMOnBSYjwHUZBm+lWa5MgJqgeGVubLpTwOT/PF1+UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769849634; c=relaxed/simple;
	bh=lufHdklf5g94JLjCq2ZWOHaed1hLBG4NBeARkooi6Yo=;
	h=To:Subject:From:Message-Id:Date; b=HbMylmUnPLwg6SPvw3Gx1cAVMFIg7s/XDhFrGAMVXegvQDmA6nTrBb4RcvesN01DQdIi9/Dlv0kQhTZwqHzGWkJZaNzd8L30XX4WPUmG/Wmv8ETJ2k1oikqhO6L8gWEg8SuWrgy055oY7+dsWtsj01vLnL2xez2Vx1ihpbgrUQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMdpTfsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMdpTfsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF207C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769849633;
	bh=lufHdklf5g94JLjCq2ZWOHaed1hLBG4NBeARkooi6Yo=;
	h=To:Subject:From:Date:From;
	b=kMdpTfsWGZRh1BADMeamFYEeQn9oeAhOheR3MLKynNzVWnj8sj9++2WwtNAo3mV2T
	 lGxHf8EgH8IHsUk8YWvrxqkbAMc3p8WAmM1gPX696TxXWVxB+wemyEQcXe5K6SRIHU
	 3l3V7mc4gHuTG19B6cg6RogUHTLMQrKrpFEirWkQ+fWXG5PYCnN+lnbwpTdCVndDxK
	 T+sMShI6ZKvyD4qau/6Vndo7upwWzkGUsheEP834QrQY0qlCipwm32qTPAGbpETmou
	 XY1VthRjQB2eWyW9Jud7ldjCPNWb35k95CfyP5TuWz+CI2Tj1/axuKu4WVgBemj9gy
	 ADKhrsL9eToqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4A7D79759
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984963360.11863.2022385294615229411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db8efef046b67f84ab4200d34a57072031d7d40368708417b3d27796b520465
Date: Sat, 31 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769849633
