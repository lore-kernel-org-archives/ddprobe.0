Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC9C2AE86
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740122334; cv=none; b=mIi9H8Xz2hL1hdaSCuvb/oDrAaQd8j2uLx5CxXOKGQytmQoGnA/OssV2rxVa2S/N4efqOiz9UnVzHp0I8eHNJQikvJdQw5KDeL9vE/l49WWx4x7tFfQYRY3D0Q3neGT+XsxYMgykdDPbyaI5NMLhzUQkszHtgQpxRDelprmJqK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740122334; c=relaxed/simple;
	bh=2plrwZ1tWQBxQ1jq/jD5EZ7l9b0gpHAjUo27Lwvq0MY=;
	h=To:Subject:From:Message-Id:Date; b=YbQazAvnGt6oCK2xloEOeY2wib8U8T9OyMGDfrn2LPBe2LoKTCPU+wdt/USYAwnL2FUQyIyFtlNZ34fBaoZhAsFcRg4CxdYGtbm+qZdFIobxV5ymupCsojB1+vGO00CigqHDCSqgmCWB24ilzSxkzAV9VymQrv1+uITwxz4FEGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKm2NvKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKm2NvKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7ADC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740122333;
	bh=2plrwZ1tWQBxQ1jq/jD5EZ7l9b0gpHAjUo27Lwvq0MY=;
	h=To:Subject:From:Date:From;
	b=rKm2NvKX1jWbP7gAw62laEx50vFCUorHgnR28c2xTVJF7JEVElpCLfeyx7dhQ1njo
	 yHgny+so4yrWrarjMdJVKJkyoXCM4RRLhTaxoxBY1VBmcenOREhQo3CsIqtEyd4SaB
	 p5GDPzNswqRo5GTVeTSsHlDnt4utE09uaqhh5nPoAfub4zAI1HY5Ksxxr3fncMUtI5
	 3Z9z78k3wbkrlzCHG9S+ZBkYgsxba9x1JQxJq+Wxc60Vu9CeOeN2uQa7NgpV6nRm5i
	 yByQjor+u6mIGQyuwB2M5KYIkjazL094ZX4CZ4axKzj69CxS5sFESqTr2fR7yD3kPj
	 OiB/ebY0wGX5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969DFC021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174012233360.6049.9684577688953053884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ebe4e8a82f28c0e26dd0ac2ded5b765730b818969e03693559d5b123b82cd1
Date: Fri, 21 Feb 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740122333
