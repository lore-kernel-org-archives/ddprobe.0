Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3884D313E07
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781637994; cv=none; b=UZBEmOF3YmL2Jv/ixbJPUsj7IgkyrDReryWCyUjMNXvLQJvTWL1mDzvIbzeA81V26+f0g2DgOVXDbMNTSpEPjf5629vbrtMvhR4r2Yt7xqpTzdZeVZOdeC/YOt86yU6iwJ0lpcHhcxrV6SeRL78zOVkENW8eIWdrFX7qgBI3bg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781637994; c=relaxed/simple;
	bh=Cgkt4PNuefi9rNn847Wya/Y/qfVjElVPlM5fbqn/CTY=;
	h=To:Subject:From:Message-Id:Date; b=k+yLFrkZWl3jXCg3Y0/TuxlPEUzjvSWieSZPDjIxhq4OTA+Lb1wAOdzqaCu9TYULnjKDcmnevY6AMyxTX+8eBhgoI8QPsAC6ja+vIg7/P5BeRfrVk31qTVpTGku4TYJ/g11uJE/cHWHjVVE9iopXg/6o2LPR0u0Vo9eWDbXOv6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+zRTI46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+zRTI46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA47BC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781637993;
	bh=Cgkt4PNuefi9rNn847Wya/Y/qfVjElVPlM5fbqn/CTY=;
	h=To:Subject:From:Date:From;
	b=p+zRTI46xkfqhF+WqskWCgaocTH0/kPU9ra4PPNjQB+c7bjM6P6lTFewlZI43KTDe
	 PAsWXe19QnCUR7Tiw0wn7mTw+LnRcnnfBrCEZd1rKsWJ4wj5X4Razz8HyaAJy/+AU2
	 5Y6UwE5PlpxG+1O4Cr14lo5X1P/pO78vao+RXDDYjzSnpnId/V05uvIQYcHbSStxeX
	 BiUfVtqZZVLNw6Z3ElpsadnfXlCMolRnFXPZKl25G/PZovbNL1UabN5zmaIpntu33Z
	 0jjxTiX7EBgWJe6q18zg4sDBciXXZd1cdJiiH1NYhH70EFAqzYCctcITQf63P9Tnqx
	 Gk0HU8fq+E0SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDC2CD98EE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163799369.4507.15925797746232727503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26b3fb2266f2377c75db9aaa0d0fb2504518681037e2f1114f0d6eb08c59cd8
Date: Tue, 16 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781637993
