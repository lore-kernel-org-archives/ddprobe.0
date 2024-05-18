Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E7E4644E
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 18:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716056543; cv=none; b=rnYUe/dqW6dG7aaX+087FqsPfeeiQ2iSmb9sCUt+7oxZja4EYESe9gEEpNCeaIe2/7Pm6uZUJ8O4306JMsR2Jn3rserCDcrBT2zyZQqwZtdjUDOiUBuiHMoWisdfRIVWCqG17/pmMhxAwiZ4/sP7gURrS0OVdFNUDGNfWRSsfZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716056543; c=relaxed/simple;
	bh=zlqxdxPz6MZfhhhkc9NNf/wI75GcxWbUlevno0onyjI=;
	h=To:Subject:From:Message-Id:Date; b=irwqf1OXunFYzMIXo0zbWVh1QZJrd6wyQL9HjW4M6zF7k7+3CW7WRfUSZ4x6YeFj0RxDBvzKbmjSEhtLzBMo/UhrHE3U5NXb2+TABaIbcH+lzYqu98NdvkQHd7RuqY8VWRNkj7ICgAbBBLGmt0C8UXlW6wdPpxXlBVdsE0KWYk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5ya+ah7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5ya+ah7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA75C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716056542;
	bh=zlqxdxPz6MZfhhhkc9NNf/wI75GcxWbUlevno0onyjI=;
	h=To:Subject:From:Date:From;
	b=a5ya+ah7EJcyWNaI+3kV5nTkTutw3R8CKTmWSc2vn9s51sEO2R21ipyt3Pilit9Z0
	 V+xnVO5NQaI5xhbBuTWkIL6r6+4K+If1WLOcLSTIlbNgwzk7ghM7+s9Mt9F+UhH34F
	 6R6OCoSqtAqMmby4GQAbQVAxpo3MhRfYMbHtx/VsdvvNNc9dCFwYkBjnEGqo5+OeCU
	 pA0XCby74bDiELf7jn3DqAFf3E2DJQYyzylCfXDtdfCkaJs8sJlke01NmeUNEuC0fF
	 9Bly7P4lsg8BmKos5ETe/Q6aduP6HcuJEsR8FtobTBY0uP0BEWMh3E0bNr7/LUW77N
	 ugpVsxwHnebCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA32C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171605654276.9015.14572769439640796113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f0171a1cd24434bd1a631816abc0576c7d3e84eb24e18daf34e36443ef3d08
Date: Sat, 18 May 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716056542
