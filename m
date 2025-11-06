Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16531298CAF
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762414794; cv=none; b=LBg5qGxoU6YSlX0FUn/WSu+z8RgthWVM/8Bz9v+9cJlAaKT/AcbegdalY68DSV0ZRYyCATZoPiI9VIyCUPAYj/uKUTRcSoQsmOzWJMpULbMCvIq+nsmVNT3iaZj8CH1GFPGvqCa8IBiMIi+2xzEgbDYyyemtM6TULaroC4NJjgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762414794; c=relaxed/simple;
	bh=TVxeczmHPLFUqxUF0bztaAxLbLIc64gVuACT5tUaT6U=;
	h=To:Subject:From:Message-Id:Date; b=mM0XaDh3oXMeFB8UCmqyWpfr8sRlSxKoxqjT0DHMpTC61fStpppHMyVHB1z7BItTjrgzj2EeiP7RP0HXI+UKAo5oOgrPxS3B6ahmes5j3UxL5oPfvJ/6XectW/F0mXyQXkiKc6L88jSvA5Du3x7+tZAZ4ud70Y/roxsmsr1BRdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMBG6Dw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMBG6Dw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0780C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762414793;
	bh=TVxeczmHPLFUqxUF0bztaAxLbLIc64gVuACT5tUaT6U=;
	h=To:Subject:From:Date:From;
	b=UMBG6Dw1d5Vill1zKa3aTRjk+VZByXtbUUvkxLXK998Yi30W9XR3rvG+6+Qp81yr0
	 e1V25yUcfzo0EUht6IyUN2qFu3a3lLJL1B+mZ5YVRi/EYCWbmc4S/dCNsN6xeowW9E
	 VePLpHaRe8w9GQ3Vv8a0ZeEmKXRULkAHUweyTrAH1GskxOzPRAVMmDctl4ecjABlpi
	 G3pwWtV26RfsISiWNa+Z9usVncjGCYKPzsyezzOyrShhf9D+zFje15yYcVMtYxb2xU
	 U2SWLS1Y2nghrlGisYKqYnuFJG8p8db86gv6b3kQYwYIiPqTezGfqTBfaY58aHoFBT
	 iUj2KvTkLl5bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC8CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241479358.5269.15610196121885408308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27cd6cfbed50f455b0161da226bde615968f1768e9449119699750d968de4483
Date: Thu, 06 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762414793
