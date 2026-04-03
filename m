Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD7F5477E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775180134; cv=none; b=JTvpRjPvapDU1qfjz9BhMXypk3tZwkUmFprhia2qadRtOCPr+vQVhotuiBa05gOZRv6Y5WgFgLpQvp8DNHxj0P640jeRkHyq+EJz0TTG8dnHMyJNBdr7p8IKVzMKrrYr5Wc0lf+zaBNMcbH+U4PjpSWxGLpMfTNL49ITUIkLvaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775180134; c=relaxed/simple;
	bh=McV+2BYuUNaUStCjuxV6xtDHG6AwEfJDhZF4OwqM8EM=;
	h=To:Subject:From:Message-Id:Date; b=HZ27YztjgVzsCRgpz2RxNk5dofxwf2cX5Ic7uOroGiLVErI7pFBYEZfzt75LlnXkip6/whb+HFqWwmCOmBOyibZdMl7CmK8nnzaOAl3Hw2kTRHXxi7LrWY6dDrIbMN6lE4+13giTUvjsTcDtAiwLVGJkVWBiRzaFy0G19TJI1zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUvohu3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUvohu3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4018C116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775180133;
	bh=McV+2BYuUNaUStCjuxV6xtDHG6AwEfJDhZF4OwqM8EM=;
	h=To:Subject:From:Date:From;
	b=cUvohu3XSbSFr2/uSn6wUj8hyoGtIZtwNdnRdJgnk8OokKykmIXWWtvcjxVPjZhBm
	 nffXg/kxPfCKTxElcc0cFfFTtaYvJTQhZxkwzXBIPWDSI0/C/lKOLz1rIxOAzKGJ29
	 F95Dw5YT5e3PaMgi7a4Smpf+8exRXGjRFcztriWmCdxU8VQMfh6WISWj6WWMo9G6uR
	 pOM9Lu87OdD4yghUQipq+eUAMsG+0rZU5HJHM4Nrm1nglw1Led8NJZlJTHlODZIuqE
	 YqfeylwuSx8BeIB+yIB8RL9DFoSkKJc8ZqCEkzXBDSuue9SHyXoZmTV/14OUbkT4cf
	 IYRwgVoDnqpJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC946CC6B3F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518013373.26077.17810701053716054470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c719fc7d5664f531619d653827f947a2e1a7de0a71cded6d1a23ed0c471e10
Date: Fri, 03 Apr 2026 01:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775180133
