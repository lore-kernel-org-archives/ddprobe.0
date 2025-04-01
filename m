Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4287C187550
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743505194; cv=none; b=JBE0+6njpLKrLX/1z47ZimL6+qgTA3fxiNa60E5C1BPuyRyqGJi3/EGZ3XDnNYksH/4QQYxLFi4afAudp8PDEqCqAxgS0nD5a+FfZaXLraaITCRnYeXSADqyTePqziJ68Htx92uU9Qlai+NXWQeTfiJd54zbOCzzcwhWDKYH9/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743505194; c=relaxed/simple;
	bh=2ony+44yBRjWhcNXUwP48Rz3xZveb9LPMC1F8fJUiRQ=;
	h=To:Subject:From:Message-Id:Date; b=UFyoGVlgjykKU8jaVT2e/1CH8aBI8BgqrZnZ7mIhpxyRYtqr+84j30B7PfsN7sgApxx4HeCAeNwdiQuNpPwi0FVsQZuczoG4HLaso/rAaPn/jIp9aSwTs5YwcdPhcryQ5+8jeuY/dJi+hYW0rogrF8pWWujSKCySj3soTW6SP3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHn5Uezd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHn5Uezd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CF4C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743505193;
	bh=2ony+44yBRjWhcNXUwP48Rz3xZveb9LPMC1F8fJUiRQ=;
	h=To:Subject:From:Date:From;
	b=hHn5Uezde4LhGOtlrkffN6OxZ1O4xVHjna6gaEaVCw+amBi94ov8jRppThBbQyywZ
	 E+vEK5vlHhJaliJ6Ak20mpIgq5icyyF18qo+KIQGTUDWNpQ5OPNCpOVnvgYc9OZ/Vz
	 G4oaEy+ddw86oaRcZyeOCjCNfE7NMwxU0rHZrmnB8Cg1uVkAlxlqCtKUB8urM3ws4q
	 mSNgwmSXMu9M/P+Sson9Glckwlknwho0MSSjEk/D2z7h/SxWvVqRMke2zG3KPYbfX6
	 2og1osXIP4zQCefce/F7gr/bGizbnJ7LbKP26UJ/Ynslvurb2AT6dJqdXGp0UJeIR6
	 RphgY7QafIlsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B689C36018
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350519361.31474.7066179471335486278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b8960d5d732565b39c11d7565c8898ad380447e799f37e25b8cf8b9c442aba
Date: Tue, 01 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743505193
