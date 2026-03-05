Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7A41C8604
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772741094; cv=none; b=OSEtWzRIaRJzTKa6xrRfQMPoB9Y1Qb7Ztmdrm9RMiEXljkMdJsi0Sh2pp4wecUEa+nYBkvprc4acNmzvr1u5m7GBQwq055tt9VK146iZ5rIwEC5WhioVOQyQZKM6+cZCUQ68q8s7utY+i0KBAT4Sb0ovw27JOnOmOgvldBhjFH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772741094; c=relaxed/simple;
	bh=UBsk05SVOd0beGrDbFnPZOIilJue1I12a28PDEK93zE=;
	h=To:Subject:From:Message-Id:Date; b=BGq/2+H09UmMs7qdr0S+BiF4z7cOkCYMIQIJNF3lgbeXal0CCEypxajfBpIVLbHnTMn8s4xxfgiT8xIiGgYfbAqmcx9dNEnXdmPuAQBbLbw6e01wQiBeWA2RY+rNc1erv7FZ+twcEyysb1NyUbYYYOWmR2MYhpYfvLh64b4aHoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+bYp05G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+bYp05G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5648C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772741093;
	bh=UBsk05SVOd0beGrDbFnPZOIilJue1I12a28PDEK93zE=;
	h=To:Subject:From:Date:From;
	b=j+bYp05G9SyaeM021sRdwigDDSbrHTkPLTA2j6AHpIID3cGVYhN0lNVyKBBVmGKNs
	 nsM3Atoa6UjVxZKXRzA48flVDew7aaehFSWN29/ho/PSjdsfX8B8ro149uJgVT5zC2
	 dx3TatOvuGpmytgwGV/aAG9qNPHi/Vy7j2CRCCehhgvCPI86g0CbGjkQp0D4lN/AUK
	 L+5ArIIT/H41EcOJx6676z7HWrvQLabyFBNDCh7Kj/QBy40xKUM5RSQSg5gm4FJFUL
	 yznZukEyzGxIiK9HtG6vm0vnTP1Z8Khfs0SxIrqVqCdEm2Lfd+Q22VL2ujWBdwTNtV
	 5zwYMDFM74sQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90943F47CC4
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274109358.6373.18221097801763648875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21bc14cb8c523923f071933c2f24421a14a9b1ac82c09202532f08550b062e0
Date: Thu, 05 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772741093
