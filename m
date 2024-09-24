Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5FD4AEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727201754; cv=none; b=t/WrlXJ899oouZihR2rR/Yf9DbF6l/P3NElLfQA3zdL79dob7KUlmovtt6cItQjIK49jPIWAlJVQjF+OukbK3vrzWJijr/QuQbhdOKpFuEXEVn40jQ6OXYNwKkfCpbcj0wgiyKl+5dO+bfr65khPbqIpYJ03TrRbqD/pnoRFuMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727201754; c=relaxed/simple;
	bh=zDiHUKs+lwSLpmiaAjOowoQJ2Voy9Xdz3otzI6r9RFw=;
	h=To:Subject:From:Message-Id:Date; b=OeRoKXnx+ZRZ/EuIbiv8+s2oOqGH0boGNUlpUJLLZv7y7RghfElgBSop1ZChNTyJWBTHfqoNJ+x17eS45DOxoXcs2zwT5W3N9zlx+kOQgA+x7E6MDAEIlj0j+VYOZSIEK9niycd2ezwGvk0vSzCsW/KOox1R0Ag2+8QqUVjOj8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+W9JzNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+W9JzNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48B8C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727201753;
	bh=zDiHUKs+lwSLpmiaAjOowoQJ2Voy9Xdz3otzI6r9RFw=;
	h=To:Subject:From:Date:From;
	b=s+W9JzNOldOIEJuMT8bjuVNQgm+7nq3ZeRPxA6kO/uttQ7V4yr/gKuKisjeIMvSe6
	 HG7LrcGV5yjIj/YS+MvifbycaqBo42u7ULV0G0cqtr/kSc8gcy2sTLL4+OYIwdMk+f
	 /FWtUtSyP5PUfUvhmNmbTzJSkhT0jk2J2Z00DccfRGQtt8mue6+nXT1X1ncY5y5EjZ
	 FqQx8XhHTD2pIbF7neOQmZkvnkT/gAFr9OqJq6CdV422yEvC55lNXySyROFZ0vIXYA
	 xr82NHVoXBhDtFMXyMmni1vIKQ7gjInW1iBfcuGD1kDiw3mwSEpIeRRgJREeb5MztP
	 SmJZ1EZtBB/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EDCCF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172720175365.31476.3014115095089959694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80abb3029c474f81045bee1f7a9777f1997d60170f379e76db094f3072666aba
Date: Tue, 24 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727201753
