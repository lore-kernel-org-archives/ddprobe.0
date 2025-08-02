Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1B9128395
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754178594; cv=none; b=huWHXgoU6s8SIOZZLDuNm75eHBB2Oc+DTivRHTr8eNmA2kjZDaC6FOGn/TrcreRNdqhe+aPRwopM2cZesH/C6ghGIWzf3dVs1UKFXF+I19MqcE7H/1gI+z3AWCiO1trnfpT5IQGa2e2uNX6cT/BpTgK8waFUdjIg14dT4XZ6T1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754178594; c=relaxed/simple;
	bh=GNEu7lJhjlWaFJziPyVoRdpHDmph2hucJ4SOXNugd7s=;
	h=To:Subject:From:Message-Id:Date; b=iO6UGGmtEnrcqXonmc2gHVW2g+Z6o61KL1ZDTJ5CCveiR1bafWsp1PeI1SonFaAt0ceZW2Ikyyo5isENbWb58QjjREsTcGmdLgGd6O8qd2uOhXcViN/R6haJU4gKh48+oFvJABfCxG/1q+/pA0BWmNOlL/cG/yoH4axUikw2LkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WazGTif3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WazGTif3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EDC4CEF4
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754178593;
	bh=GNEu7lJhjlWaFJziPyVoRdpHDmph2hucJ4SOXNugd7s=;
	h=To:Subject:From:Date:From;
	b=WazGTif3H/Bm8CBvhb0VxjAUycsMALBUSEwMFoL5SqiTLYW2TNsObHunXMFqRH2/o
	 kJcLMxl9WMffKRtN9dtRloEzeA5k7EA082dK3FCNaUWPpD+xJcqFRGAdDbGcRGj+Jz
	 tR815sooWhTGK0NEQZAmK7B3lmDaLvF2IPewSuY7H3j348JSWzYoX8Gd0zKxXjy/Vp
	 T6BDOVKrIEbsnZAYO9RlvVpIiuUXEt5bqgyEZSXk4UOV0PDYw6CFB+vBBO1QsvBwV7
	 ZvzBc3tA5VDspSITlkRX9X3lvsXhwxyT5iWRAIrAwj7kCuuEaIZssXE2jpSw1/HP6G
	 rb/eTN3/3BLaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9070EC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417859358.5190.9646744306795443471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797ec72a91a778ef3179bf8a9a67311e70f92be2223528fa0426faa5b2b8154a
Date: Sat, 02 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754178593
