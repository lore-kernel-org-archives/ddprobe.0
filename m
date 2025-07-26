Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2BB143C61
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753562394; cv=none; b=tn8CnL4hlprl8Z6/0egSOz1W28l4OmFw8/wImzynDc83oEAMKsWaH/m2MMzyGQyuvkXF96Zviw2RTqGxE9Mi/5pQY/w/Lm22PJmPDQR28smiYpwjUf2AjH8lkVnQUKhI5CapzmKBCScAwF4qZPwglhASoPaHo+vblCSnjvg7+OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753562394; c=relaxed/simple;
	bh=AK4gv13G77tUwtcLOOR5gP8iCHmSsqMfqFghPAfm7gI=;
	h=To:Subject:From:Message-Id:Date; b=EdpxF5DTTRq3ixlEHnFBEKdfvHW0XWogV/pt33KlYXctVwB4R+OfGE1urE6Efznar3y/6SXLFZRPQHI3hZh85hBsQqqkCr5Gh8Q11PmMRBCqjLuP6lrUnFA75cUwznbnf/6zGRiHBq99GRvr/VHeYCIiE8sqcNk52Md0YmCTMTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIy9Ij4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIy9Ij4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DD3C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753562393;
	bh=AK4gv13G77tUwtcLOOR5gP8iCHmSsqMfqFghPAfm7gI=;
	h=To:Subject:From:Date:From;
	b=dIy9Ij4sKv8eQDnb0u52evKsv9QZTKlyruBlVI6yaIlBQZcb06JQpU3CrXihrJvjL
	 ek4+aY+/lrvAwEPa1ztfqUhPmcjDs+LoiSittVv/8Xnog1yyrxdpO2golIZiPabYmu
	 gZqapGW/fVvDlmmizZG5hdT9f5Z7VMt1ebdu2O3L5OwenEQu2YqFf86/v73cUrdOgN
	 0xNuZsbXbpPjwxNaJt5hxFTzKVr/fFGSMFWankq4JwKajtObMIIxZv9mLfZ4ZyUT/S
	 3sZRxmqdL4mBiQa40Mj+QaRmy+aW8sJC/GDZdxGh8sPHcowzm2DfQdIeymQN/jgMXt
	 6z5k6GPLQjoRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93510C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356239358.24788.12133933120088379402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291c92d57d96f3c09897699af27a8ae9134a00b98f0622e262a47207124f37b4
Date: Sat, 26 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753562393
