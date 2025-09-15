Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCED2288D2
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757899193; cv=none; b=aeyrLd/icnbQ6pKIS5VweAs1lDR3cfktScH4Z0H3+iHPmI83Iwgi5Rj9wozKAgK+7jX4k5TH6rvtIn6xBqwB860oPf+VXcy21vmyVt3Dt4wUrGwOaPDNvXPEaswcQhbCcXbTOqvPnHOspSGrrbOb968W43R6pOysbHQucbJVdyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757899193; c=relaxed/simple;
	bh=kjEGD0xs1Yf0OAHU3b/867LAkYVG8gpUNaSUeQfMFTo=;
	h=To:Subject:From:Message-Id:Date; b=EV9xMStTo83kkZI+vlrHCLVDZNd4oYdLhm3ZH2wbLBXxvK+rlgNwxE34aUPOIWi+xnCB7WMq+ZwRaP8CDTENREayW4oHO/rg1H2iHVQWCLf7QmwCndR8a3bXLzYoR4AH40wdphPst6wKkYbXUoF0OoN8m4enTmBirHyGvKofPrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9HeaYjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9HeaYjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F0DC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757899193;
	bh=kjEGD0xs1Yf0OAHU3b/867LAkYVG8gpUNaSUeQfMFTo=;
	h=To:Subject:From:Date:From;
	b=a9HeaYjLoxHvZEKZ0ihuQ/zhMKi2+sO8Wq1ejHd14suRK18V6UTVC1TS7ASOVFWs/
	 UR0d34cLXNNPr9e+op+K2jSZJi2z/pb0z8fDODfsaBRYIb7FUO1Kzw7WtnNooMvC+U
	 48CZ1Kp0cOqB67Zt2P884HWFR7S8VObIFivybGLbz1FNoiWwSnevmUUCZJZ9eEiaZt
	 /wXYh9enogTvauYj5QZR+E+tkjUKqhd1n4Q2zk2uz3XTIqDwlcCRf/bE3KcnzkmASk
	 eCbQQiBoGqOlzmiTjuy4dCioq/VmiSsuchII/ScejPbd1914eMHL0UA/nF2mSAUQeJ
	 qDcH0+KRlNogQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9008DCAC587
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789919358.30311.13775930862940864349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b564c89ce561b0b978442851b171457c7c254a67aabbb7407ead25d093fdde3f
Date: Mon, 15 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757899193
