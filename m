Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D38828D8F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768839234; cv=none; b=DV/E+7YH/XA57S9b7YUdeW0yCv1dbJ4ZQocptoKJx40t5SrEi6rTbge0qMWye85BxxL+Tf3vlEiv1j/5Rcs9XGiqU2YbiP2B1AiP/Ypb0SdlOdyMA5/EL2VoBrU81yrWmmrJEGzl10QrBzUM+motfnMo1bFTA9wlC3iE1gNS7kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768839234; c=relaxed/simple;
	bh=YDNEaotHDrfKsaPeMYsBVYRmaLL3I+DrxyOsXau3Z14=;
	h=To:Subject:From:Message-Id:Date; b=kqhvC2yyAZ+CfgD9Wezelgg0iY/8ElD18BMG9UnmrStvFk2/eHKv0RC9wD4NrjOFR9GYeVMCJz8tYCul1QqHaesLVeyjw7pQjWcDyLNNN6cj09wz/xj2qfEyvK7qI2IkAoMxkpg1pxYyuCEu1D5yE//vA5HwRMewqrGQBuboRzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtN29plC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtN29plC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEEFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768839233;
	bh=YDNEaotHDrfKsaPeMYsBVYRmaLL3I+DrxyOsXau3Z14=;
	h=To:Subject:From:Date:From;
	b=VtN29plCz+JDoFUWFIHjGzhgBwFP8rlzK3kWGSC3hP/QO91qz38xTFy99IqYOq3Pk
	 al26cD7YeyEGOndVSXvKP8RXnoNbEdKGHrWTogyg1rV8dAvBRgHct2bBbW426ICv5X
	 kygKltC3U33+aQGMh5K28hTQLHju8ocOoce9IH7rDy575b42Bb2NqGqsi2/j3f/P+I
	 ss0LV0vLnWKaepWSA2jf5cBuf5ax5oL22CkujJ9MfvQ6EBLTfFS6N157SbaEbCTvsD
	 dQ0mmzhLKXPDEs7Q3O26Jf33lDUZB6AhDgc6hAq5hrMuNWMeiJbw0jgjYwI5iKJTen
	 Fn7syi8a5WukA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91712D29C2E
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883923358.9250.3585761188822149430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a003a9ff7ee687c545119f100133eba016cda6d2f0e41f3b9ebddf0bb1028b27
Date: Mon, 19 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768839233
