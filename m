Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C19E2C11D6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776013054; cv=none; b=t4RVMRQF60x1vGQAd9gG5rDrbtLn8Jc+Hk4/FwWU+hGGNBDf+n0Hqq+vMMYSACtOsiHe7bKfC33k4edVRnLH2qb8G/UJq6Li13nzXkfA4WRhWMsnmLT1P1DcdrQb8Br2qxIGAEcMWxJKBrjVpKKN9L2hZZzMRwdHAK/MaO41yWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776013054; c=relaxed/simple;
	bh=fIKLbQ2lbUaUH6uoyHELn5YCJcBtJFvSwBPDGPUddDA=;
	h=To:Subject:From:Message-Id:Date; b=nYdREtjomy1RksS5RCL+UtpewiKs7O1f2cCSFp1fUSSzmW62ktwVNgSXQdU9ak5vuVVi/hlL+N0Q9JGupnQMCVSo8k5R0i5rGN0B2kpXXW8Q1FJM8wqCI/rsUJQ2UgyOU73nUg5bfieT56VWWriqygfR3eOUObmsgzyiDQcO86w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elf7ABKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elf7ABKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA31C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776013053;
	bh=fIKLbQ2lbUaUH6uoyHELn5YCJcBtJFvSwBPDGPUddDA=;
	h=To:Subject:From:Date:From;
	b=elf7ABKeDXPPMia+webIkOz7UYHGwOxDGcMT4XhU0SrIH9wicw2YuYOxOnqNSZvZF
	 lN/KCtTf7st8VNf0lYx9h+Z7o07bGlAC6f2kyZNINOsYo5+J1qBMaEz9f0wajpa6oj
	 BWb9KhbIfk6U9UvNROytfAAPqSCGxYNWF3llDqK3n2I/sEq+sLDg4FdE7Keu3X2zSZ
	 RA5i/fuYxez/Fvwv43ec9pJmMgpag+R92xsLFk6HdypI+SFlRNgso0nDELniBEufa4
	 rPFJm/Og4ziJrKyPF/ByrV0N60nGk/8xly9YDUOPae6tOzDsSDDPEL9Iywb2gw4eME
	 QR+j96ip0YXIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8E7E937EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601305368.27329.12228306927874969415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2fc306a0012038735d22a2d56d18f4df6d0463d7168c1c7d95a5c34a99ae3a
Date: Sun, 12 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776013053
