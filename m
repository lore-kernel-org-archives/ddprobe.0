Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5EA34B148A
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790275234; cv=none; b=GQCv/KhngfOC4V9luGYU9KdBbyet8M72MuBEI07AfVy/q8BhLWlMjVeYb74Ksj82BIokyMuHzCEW0PuKpiXwslpI2MJU3Rc8RXWj+gxZCN5FIIPQssPHg1Pv183fTTWZOLe6EMslbTCZKFDMteKHYGKsX2bcJ0Qp7kTPbr3uGYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790275234; c=relaxed/simple;
	bh=6OZGlpWcRw/s19Cv2XG28aoUAfsNMLCclRKg10cWoyg=;
	h=To:Subject:From:Message-Id:Date; b=NaCRzEq7txjM313BrHz4g39b7oeigmbuJRn/AARg7aZNIQwNeM8k2TGrvLhCCvT4DJ797egpSUe0oOrH04HGYLWsE+nVflaRhzwqy1F36AI95FrPmP2McqZA6DUy4bn+0aTCJuv7uPrIwDuiJOt/JbN4jNFeAD1FA/9bmVCymUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+wABjuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+wABjuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4776C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790275233;
	bh=6OZGlpWcRw/s19Cv2XG28aoUAfsNMLCclRKg10cWoyg=;
	h=To:Subject:From:Date:From;
	b=B+wABjuWEvAhFzbmq2hR7IGwypgkrTmwq9MXjA0APr9aK/PvXB6LwPL/RKsNj5EdT
	 ft7N2+rOIVJM2sAhBGQMo02AaYo0qTWRUuGXfwZC7ytbSer1AbUlHFXg+K7fFGuInp
	 TOZAVNrPwv8OtUIafeZpW+z96aCVWpXcmqhueRpPOVFG2jOyU9xULk1vc35hN9Tu9b
	 BJPh8fJc/gmE3sJqNJ4G9Mu2M4jWQMMPDDyq8VIWRRxOpNCc/djVa6gElYUx7GrWTh
	 0XPQnHSVFGzhdCVkgNmIPg9voJBa4CXz7ChKMfEMnb3yUjDLmCBc9Ww5WaSrm418ku
	 XlNNwFKPWzOFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB05C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027523374.19668.3183136901964673667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574b9c1d2f2216df81df7f536eee2fb8636f2007b4511f1db6a772f1ae206afb
Date: Thu, 24 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790275233
