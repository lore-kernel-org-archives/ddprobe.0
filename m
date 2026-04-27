Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D4333064A
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777310854; cv=none; b=NcNBLoDReaAZJUcYeKX8qDWnie1+q/3D2PZG/HUzFFIk+If51IPoRSgb44QpASRXQmnegyy4bQGQ6G/u73r61QWvMb42XzyF+BAU+VKWByaUHAs1OqzKTQLdI1H3jc7xG1+jcifXyNvRZUpu6Qww+WX/iUsdHobVsSpFCeWVhZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777310854; c=relaxed/simple;
	bh=cLuvn5UdqUCL4YWWi/wQThPy5VEekyEJg0nnJQfMxaY=;
	h=To:Subject:From:Message-Id:Date; b=saK1nHOEbXrbzzJ7kx+7ETALKtI2gOGMNM8Y5cgXoY3XgUT6kP64LSHTyF/iU2PpBv41LF7zPZB/8gxgBxkjFEK2SKktEd7wusD1ANJ3xjsWYWWSWbXak6W/fw3LdoNTeHdzqx/flneICKoD5skugMr1ard+pTkdNv5I6ZUWjgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jo+U0k5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jo+U0k5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA03FC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777310853;
	bh=cLuvn5UdqUCL4YWWi/wQThPy5VEekyEJg0nnJQfMxaY=;
	h=To:Subject:From:Date:From;
	b=Jo+U0k5bh2cigElwrTrh/sf3WelXEb30ZmAmVT2EPTI6Sk5awJU/GAhcsIv/vSBoM
	 GWeq1FmI4dWx4PkMKH4kiDW3iIq5uD8/nWpFN6PQeQRAcBy4rtenQwwUEzMfznOO/j
	 B61rDGYORd+ySNERLGCO5ydRAiDECTABzaqpF7akLScPFGJrPuqtWyoYov2GID0MVp
	 eiXSxTnP9IMVNZHTCKRcogV732BHMd9+8A+UXBkCvuvOVr5zz6dOl4C5HRsJejtvv2
	 Ky4PYBY2k1g2os6IfpmR2ei6gOceRne7OrUSZt+1WBs0A2E/tuGUQb/3ooAqTxrlto
	 BNv6t6vlneZFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EBAFF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731085368.29488.5109712675339333213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac6f0ce91411fab7ba4674977eef030670d94e192b0732dd3ca4c067fdc94f4
Date: Mon, 27 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777310853
