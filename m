Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446995680
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724488554; cv=none; b=WWRZyuYgtH6K670qxTH+D5nS4imdI65fBCg3l6dVC61v6lCEu52i298aUCSjwYV+CZdSYrnya0vrg0lp1XN5K1Oo8zI58myC0NrA9FFZt4ngrXWUTDGwrE1T7sTPezWz9qpbsxAfZyd7dWbnFd8F0BzeLncVaVqxxhr+G4oKBJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724488554; c=relaxed/simple;
	bh=DRReMHFQ0DfW4mQSTcoGuX12Tc+FI8WZnzdI2cmW1BA=;
	h=To:Subject:From:Message-Id:Date; b=RwLuFXJk/ii4rcD3Invp1Ouvdj55Jg16rCaUkFztRtE3Qj7/s31dShk9Y5qoS2woSVXzXh5ATVal8y/pzmx5uY1ECx3Rwpq1udErHyql/x0uU6c8I9rBKWb4ok/2OGwcUM+FDodm5A6hFgQyMR9DpQiWYyTHw3xSkVZuKIVbfJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCfBmwba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCfBmwba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5222C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724488553;
	bh=DRReMHFQ0DfW4mQSTcoGuX12Tc+FI8WZnzdI2cmW1BA=;
	h=To:Subject:From:Date:From;
	b=oCfBmwbaGnXRFTmpH4PDiKSBePkkmQILNp89a/4Ei24Pf4QQhanYzY9SLmsvgu9Ch
	 YW9vFCK8i2uxlQGPjgz5jTIPnPRPgmQnIARLuLfuu8WzXyoB3QPo3rBy8Yl1t4zHIp
	 VheOZIwbIbix9V1nsCVByVq087mVziWR8GrwFqDd1/3UZCKD9il9IoBT3mCBztHCdJ
	 QDYmWROnvErFqV5SHBo4gMPE/iHkbAI23FUgUw1IixlHxqnw+wX8j3xUnB8XBe7s3x
	 mqzfk9WXhhtOqA4DE7YygrvjsENvW2PfYcp8Fd+a2hKLy71nEG1AAQALCZjgwECa1Q
	 /h0F3LB49v2uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96964C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172448855359.9966.8931466480208285852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa7062fc804f9d739fbd719deb7f40cd53b97b9ab5341bc5a1b7556b7bffa63
Date: Sat, 24 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724488553
