Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7D37F
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716253943; cv=none; b=cS39f3+8D75DgxUr9RSNCHbds27BRi2MGfpGH+P4bmpB6GC5McHCHHTMJ60cxYTNhs+GRcSqL/fHeJN03plnLLXp1iuZQGeAXJkAgN5aH/pLRxxtsi6Tn8xDTnyHadU14FkSmh0vdcydXdnpNzN09EUGmZnXTE59U9j/DOWzxCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716253943; c=relaxed/simple;
	bh=rJbrtb5kB785/IFyOw+2hlIx4adhwM6IEqqvcohfSJg=;
	h=To:Subject:From:Message-Id:Date; b=fLdijvSSzb4Qtwjk34ddJpp6D5X3J8yP5Sf1swKRZGwnl0J0UJga5nAfLQWejNwCzVJ2nS8jq31kUZcaFV1XFRb8pkV+yAyQ6LVlJhi3sPKZF20ru3BT2qT2kdXLJpJUO0Ckwr4wwNfvPUIqCcA44NCNKzi5gTSJTd9gs6AOeE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7wElCk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7wElCk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACFAC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716253942;
	bh=rJbrtb5kB785/IFyOw+2hlIx4adhwM6IEqqvcohfSJg=;
	h=To:Subject:From:Date:From;
	b=h7wElCk5zrN4xfUoAYypsMcJPbLSQGQBVpGwpfw/Ze7BxpBmJkeYCVWpb9G8q26N5
	 mKbzAk2c0iMPWhl2N7iXCWRxd0Sy+6NI+kN91YDALNX0KHmZwLDwnKhGYN5sKmiOi2
	 HE5YLdqvHLCN6tOpJZ27j7JdbMnyL8ud/VQEZ3uUh0kW2b10HR5o9Xxn8QBjSeuvl7
	 cok0Xx0JxiIPRcEsHnWsWsqGtHCTAkpquKVMBWORAmZy+XrBOhI8jBoyFcO1UuFWmT
	 bbIGI7/iTb+rIBIpx88eiJyqZOM6Zt0Mlpd3SddhXIPRHUM61fbD1yCwBL6aFWiCUf
	 03A41EZ673FVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FADC25B77
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171625394278.5087.4376332115658019515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e7ff930e4015a1b28b605f3f5562a070ff1048114b065e365e189ec0368fb7
Date: Tue, 21 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716253942
