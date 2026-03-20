Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD86391E46
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774049094; cv=none; b=IbOsWzLuQMADOVc15eXFaAuTvHUGdEBfagAruUBL/FYNhJVhZUaLeQVMqEc9g01nrJAAFbvFOvpK4b+dx+1roky5oynvAcHOx6T7PLsGnI9iq6KJBnTr31tyVFkqKg1Nn/YGzH4NvL7ZBByA3j8zCs23eOBt4GuazMvCTCMrjIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774049094; c=relaxed/simple;
	bh=kzQOVLLsRa6GfdKUllno7+a/4zGTi/Xz51AURK8bpBk=;
	h=To:Subject:From:Message-Id:Date; b=p37QLpv7s5L70p4HwfJosdY1EyBwdrutrZnNSG6NaqiMdGzJdindWb+CSW+iQTStmY6Oqrt9Y0egQ3EagfHT1yd5PGGanqW+61Gz+dQZWboeLX0VHm5/emheOb5FAvhnPIsAQ5xXKqbpQl2GcPv0/HqqGDxrMOqISKTQkkzQxx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNMASP+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNMASP+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E8DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774049093;
	bh=kzQOVLLsRa6GfdKUllno7+a/4zGTi/Xz51AURK8bpBk=;
	h=To:Subject:From:Date:From;
	b=LNMASP+Yie3oLcoN2NOd9563mwJwneRG9KMvTn3pai3TH0bp7mJ2jtPMmTQkq2HlZ
	 BFEyRvYakcV2oXd/KcJqwuQlEn4FXUbaRYOVVxvN0X+JNz5RCp/yms8etniv/kJRwF
	 mvJf3YA2lVPchs/JVZODm70r5IBbWClcdOKI97r5vzuN4des4A0EaljdXp7AMHvRfI
	 THm6l9byHufIE0NyzReHIW2YeBruBcNs91dvqki6I54l6/6PltNhfHMNDouy5cqIRK
	 KMJ/MF6AjE8EzphgUTsy1wCx1aTpzTqiAkGWdCcehbLU58bCTXMCQ6Ornrl/xDaE/5
	 Rp/qKq/lp28bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916AC1099B52
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404909357.13780.16146656911713974706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6a1057f4c44582a647d1cca0079e1be51a5eb4259e0fd2865ee09e05de0eaa
Date: Fri, 20 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774049093
