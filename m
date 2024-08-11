Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB35913DDDB
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723381553; cv=none; b=c1hDfk8OvC1IaCd0hGM7cwuZNqcltJpV48ztVvWybvI+59YjMGjr8cO94TkkkseYEWqYAGibeTjd4VvjR9Hq2lqJGNGu820wyEDtxzmaQeh/AFvLLlTgaUmvCrf1dWZyWggRq+6yKamgkNj7x+DFhe5D0zv8kPx0QZUc4tBP1TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723381553; c=relaxed/simple;
	bh=B+9p2BOSMmX+Vtha1JKrjg9IcRMSPJ42YmEWwIfaBWk=;
	h=To:Subject:From:Message-Id:Date; b=uvO2U10InMsBaiRtWptfFl8vPNI46AzeyadS+qmAotAZJRu6zcuZPX2xbNtPetf2xagFWvj1hXJjQAH3AGeeLOfI0b1X5X8SyaKKb1Hl2sVQlrHI0RNaYuOa4jDca1qwKwIuXptC499gRcClX1+gEUY17t1aZlDbRS16SAymC5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plqB9bQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plqB9bQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A220FC4AF0D
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723381553;
	bh=B+9p2BOSMmX+Vtha1JKrjg9IcRMSPJ42YmEWwIfaBWk=;
	h=To:Subject:From:Date:From;
	b=plqB9bQrefs6z7i6ryC/uAXi0lD68SB0VdS627ricmx1zKDrIUipYicznPR66S+ts
	 m/UgjCJI9UUirTYVqtTDpqGAwF6TdV7vZ6/f/zI59OfToq1qPjCI+cVrIxaPIo5rTq
	 2yutnUwBHngqNAQAmjB39mRmmpXtwB/m9Rm0w/r78/gVDJMBhgdLKy/UERYkFkLqnG
	 b8S2JXXgXcLR5mmJsyu87jR/9cE3mKpfdEDjA72/KwRVaG3PvuJL8cloM4XcgHtMz7
	 N34eYSp7eN4SNtYqT94hjXLLHnFPXEL/uDJ3d90lTNlNELmxZ7T8hcQrprpAGQ1mYW
	 Wh5qoX2bpSXvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F78C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172338155359.2268.13878867542352509764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561b384c3cd7bd6d47cb3319586c7d356273f0782c65277915665ad9815599d6
Date: Sun, 11 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723381553
