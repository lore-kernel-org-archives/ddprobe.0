Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D43C371D07
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781949394; cv=none; b=qalWyVEDNcuM0FghI1Z/gG3daUsEkkXWb7Tazfue3vHfYLUua2qFUxFCJysy7s1RDP9QMJXNDiXPDpc9O2KbhRKu999QPFzc3+IqiYxEKQDCtwUny0FtllizlC56AReMT8iNCkWJ4Vgu5uSI3ouLZOrvs4TWscEWudXjhEajDGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781949394; c=relaxed/simple;
	bh=Q5mOZOEXI7acm5tPeUZgc3Cm5xP3NsLVQl3dgWdFr/k=;
	h=To:Subject:From:Message-Id:Date; b=k6CX9vPCW9TrSr9iIqbDkIlUzj6Yf3m2WymHGhLXYgebLmUOlCGxgwqkdkgHbJ1840CRW3vPWlODpUliWJbx0+iPK/UDnRsBv1GHI4n6xCBzS48jMx9wvQxJ9AMxeZ18fDWZSIej4NJNZTtTI8/fLpc4eBiAhQC9MxQFGxdEu3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCoOq8r5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCoOq8r5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02F5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781949393;
	bh=Q5mOZOEXI7acm5tPeUZgc3Cm5xP3NsLVQl3dgWdFr/k=;
	h=To:Subject:From:Date:From;
	b=bCoOq8r5OPWX+Y9uZcocTlLSdNcz5hW+wgTv7Uow+5V8jsSTJ+UXyF3HFSBOARi6L
	 qCKlBbXpmIk5fmMMfUT00fxLckBRX9xPJc3j+cDcEld16PpKW4Iqy3c+HKIJAmoxu2
	 E/w+S6Wzyw48u2A7wEVKi+TVD6LsNSDC+fLzuECL9zvDUsj29KYYBlvRdE2DNOYknG
	 UAqAGr6/B9hW1DVfP0G7puH8r+L7KRjUP3W60eEzBPfO+9PgU2Z2snYTUOiyFqUyAN
	 riK4yw8DdOqA4GFBkmVFDbQeNXj+ZpCARnJgoOoNviPWx6D8gIQa1Pss3oJeUIHDNu
	 WezNggbDT/juA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C500DCD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194939375.31321.4956913294687993457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f5fafe297844428a487a2c0f273bbafde2ef8f24d958561bcbfa55997c31e5
Date: Sat, 20 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781949393
