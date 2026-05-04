Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C764282F10
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777915654; cv=none; b=NjWCJOUIOZYGExuVZDNQUuaBcHpgBx7kFKIvgTLeXzlmA4bw2ihuEOTPJIWlt8HseFGQM1iAHr24THdtlo4kF3VDZ3F5CqGjmyUAV2BjuvMhPF/pLJwcr2bnfEEZIRrZuZ/RNHCJY6Jzc7nEfym8jZc8mbZYsIEeP4qF4ebbCrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777915654; c=relaxed/simple;
	bh=/vDGR4q0tAVU12Q8vRM/ntvMjWmWaHs6jJYARZOidVQ=;
	h=To:Subject:From:Message-Id:Date; b=G4t9NWvxMCnVpcsDE1JRpZkcWmfxu9vBx/jYid2N8aeP4ryUjbIvwEnJPoephfRxxU30k8Vn7zy05AOZheRAjT8kZZUpES9RPAaR5dAI18ybTORQgu1UGffPVmuw3EWSPjIsnGUol4UliVCCSUJw9kRIiXKL1Ps0DQaGB5xLL8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJzo/1dr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJzo/1dr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B9EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777915653;
	bh=/vDGR4q0tAVU12Q8vRM/ntvMjWmWaHs6jJYARZOidVQ=;
	h=To:Subject:From:Date:From;
	b=EJzo/1drodK4eqCRll5j0/w0I4yb5oqgcMkUX1hU+ZifWEdKsWp95ks9cDRBjolxT
	 fyKjo2j+YA11/WDS4sWHaUmyA8tYyJj4y+bnsRyg4MP6lR3f+Dvkump68vFWBsnNMY
	 /8hiDXwr2DP+OefrbGDL3EFhYlGeRMQJJ9j8IQgRw2/+oixRWjH75jKDHhl9fzEQRc
	 WbOeI4fKYXFJY+eLC7xSTFgC/IlUHLulA3IstgfJ1vxEfrz92GNOoduUUv5RHVGbkA
	 w5iCIuVGiRVM+I1Q5J56NsVG3TtTlbzOPFOs0pDmaBS4ke63ZT2U18S25QZZsVfcPD
	 VoYcyh8gbyrsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE1CFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791565368.5324.12322915083404537596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81de127cd4776fdb77977d1f57818fa620643833feb64ecdb96d996990d238be
Date: Mon, 04 May 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777915653
