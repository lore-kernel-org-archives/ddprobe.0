Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303F82E0902
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767064434; cv=none; b=LqsCvj5kRuS0LbbGsVz9yMjGA/XaGQPx+3nwIXltPhEMVQ8dwbXwxm4LoHuZVhtH6XCRBd5qWbZhuPC1DiE1GUdg8vfBtNSvsj2UMxFFeQRErpNhAM8ToYFgOOV64r5cin+dTGw4oerX2rOwoAfrRel8W8Aqme60drqQ0O/HCxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767064434; c=relaxed/simple;
	bh=uxx7GHOKwl6yiXStKekLAyowSOJ47/B5hefyzAU4OE4=;
	h=To:Subject:From:Message-Id:Date; b=gzK0mVHncRsq7Ag11WM5dBoca0x6MktjExamTNbay/aEynt8wAwA/tBXOWpVHAqC8DBv8cSucLksaedyuvBWlRZTGCq4PEOcwMgS5R99L+4Y0HLUhLvtM4HaEyS37riWdEKOnrPIe+XzvM8gkCQvNiZCNvLZKavaPYUTbnQRMQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yhilx1XQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yhilx1XQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7E5C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767064433;
	bh=uxx7GHOKwl6yiXStKekLAyowSOJ47/B5hefyzAU4OE4=;
	h=To:Subject:From:Date:From;
	b=Yhilx1XQ0yIlD+CnS58t2rPiUu6LXbgOuuD1W+EUj6nxsEWzg3x7aRsYeX5KTKz0s
	 QLB1aTNn2WBwaQWZv2r/4lJTltAaELMmvfAXdcMWAm04Wv2sL27EVRdHsMQzm8+J8s
	 A3t9v9YZGebeh/jz0Gv64zsUMxS37YF1IarP/BRv49gxcfpzeOO2/+LsE6dH9HuiR2
	 QBk+IU3eib9VrBuSefOzoKFeZ9jZ5UTucExylYj8TghHHOys99maQdUxegAvpycMiE
	 vHydq/j5AcS4AEwo++7qpcA4NphIg1eMneNEYsSZtdGCayE2x9xgxoYZwu+zJjN0f/
	 QAGfDrtr4e4ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBBEE9410A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706443357.3768.1040526611376908969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced2b1375386c0027a7584c8a40540f6cd93215711d583241fcb83f6e17850f4
Date: Tue, 30 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767064433
