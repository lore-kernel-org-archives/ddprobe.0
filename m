Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C764316902
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774463094; cv=none; b=bTpWS3Xj0XBVPGGcpqzoofsgjyf5qeiRTDAWgEpBtTdqPdTG+jPj6oanXQ01kKw2tATczknhaV5JmpeBeYSXoY44aGCc7S0z/LaaGZxYVXA+aD5RVHPRCU285DbQLoZh35KSQ7eHcjyIKLAtYsveuHBBquPlqAivPh6aLl6Plo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774463094; c=relaxed/simple;
	bh=nKusVFvqLtGAaEDjvYZ1Wfv4Zjyh2NhPFwuMkrH93+s=;
	h=To:Subject:From:Message-Id:Date; b=KUFy3i0YIaBiaDV4RTJ4w4Uso4wiXQkk2ZFRGwIYgEXzR5xAjEXHL+63dXZxWTRYHuiKIwbAq5k4DSUenborIyMxUL8fF08o6aM6AG1Yo6gzXyfa5s8c2g7Lri9Z3AQq1wXQzDSn1y6thrqJ6ibj8PPcGznrGWn9u+Akh18U8fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeM53hhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeM53hhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB671C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774463093;
	bh=nKusVFvqLtGAaEDjvYZ1Wfv4Zjyh2NhPFwuMkrH93+s=;
	h=To:Subject:From:Date:From;
	b=UeM53hhbA02+I8qbiu6WnyDB0B2yBnTCx/wV+smEBYrGyUU3BQaW0CB2PwJKjVOQk
	 ABgQRViNQDymyEdH9XFqk6miQUh23V37G8mH87orYSZDhjdRQ/Eo5/p47h5X0zdDks
	 zAuePpPFniEhL5Z5JW7xr8pHfGSf41p5ZQcat3g+rk2BWvBHXbcUn5rHexMLxylkEr
	 FINm4rMB2PUOu0otq0BoYtL5A2MQ0JXBaBaSne+k+lYh4OhInM0fU18Me2l5zZF4Zx
	 8eiqL0M5QJqcPNUenVnEk4dIRkAGbzAtSw7ks96KworI/LbevIFn26+QAs5hNzgNAY
	 IgLnXFJOPcSZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B7B109C056
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446309358.32567.8562461674832245245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6565633fd9902d5c281243c0a08f3aef8f8922446ea69c04187f6daa0edd829
Date: Wed, 25 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774463093
