Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F2E2236E1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755548394; cv=none; b=DOOtFxWj8BaS8emMjyobZRy3pTRg+MMwQEFZV/kILsDC5GsD+wdtf+Ii/0/uU8Fb5ojhfHsvx3YGK+O3LKAj6DGJxB/TiBWg4C8K3MQa2lTntMYZ0YoEKL2Y8z2b+5LjOY1mYn06U7OGE7unJKG/6oR8HOOJgqpipXuHgHQcBEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755548394; c=relaxed/simple;
	bh=sUgFBlHgeaEGS1pYmJPw97O+NFUS8t1Rt3yGH06gWK0=;
	h=To:Subject:From:Message-Id:Date; b=G0z0wSleQnKsxVghw5R5nUKkom/V2wwINylai2srQjK6niewDYGTzdYMzqas8XUZ+G0blpkyGlcDsOSeJhBCffexZIgKfzst64z+LA7W2lO7C1dK3t1YNd2tx/Y4ag0QCOgFDtvRiqWVxepumdsWbp0elNze+oDY9jSCw384uGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P17WSiyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P17WSiyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEB5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755548393;
	bh=sUgFBlHgeaEGS1pYmJPw97O+NFUS8t1Rt3yGH06gWK0=;
	h=To:Subject:From:Date:From;
	b=P17WSiyAMOVNd6Wuk6oMUg54mPSMA6RpMPT8CNbqBrNtrTMsuvNDUiCpSwY0FqsEZ
	 gIaPrYKUKA6u02fy/qKjUtqIgdVOrWZScxbv5XbDzV1rJbdWFJ+0of/Jzgc5lWoawt
	 wW8dUniK+1OwgW5rSrO280yBmPKiGbWhVIjWD+MKuUnzVsvfEn3g4AWEt49tOSwvkf
	 Qk0ey9Fy+4HvdRuWm9bS6tZKMyF5ZM1qtei7vYnnr6VQgpSpaC2U7md3vmWYq+yLPs
	 MmHobM4Rh6KIk639oZJy//BBcCULOO2qnt0un8Y+SltDzNueudlzAhOImPjqJhl6qO
	 fueiyaDcwQXag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC3ECA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554839358.7888.4905567183794200560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abda35944c0afae5317d7654c376014d629fc16e6b169f511dfc895d7fa86b61
Date: Mon, 18 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755548393
