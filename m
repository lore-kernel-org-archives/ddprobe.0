Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2931F4619
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743676794; cv=none; b=P+4meDBZ8OEiUqzNJjc1468+Py1KqOpQxI/fpNpMBnj5OQHXd+U0mW6x5skvrStGgU409No+3NS7PQLyu+78QlZMRC1DTyTtUW3bBUxKkb/QPgCCr4f+IsdxMs0aubx373VzuUA30uqFtHQPNjPr3C1AHxFnrDM5OGD458I+CEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743676794; c=relaxed/simple;
	bh=IKZIZhClevY31LTxAWyj3UwjKHaDV27ek360Vx0vSnI=;
	h=To:Subject:From:Message-Id:Date; b=KZa2BL+rBP8JicBjtPpRY3ReaIWhsxktVOewGaXLRVfpA9fdF4x7d+6MIcwNnbUpdaI7tHevoLuLVeQQAp81AE9UMdC+gkYNWiP/vmAFkhHl20qmd3gppXfMckrBqSSu5NYfLX690inPP6mCxfxDtvIOxrh9kIK0ON7pJSMPhUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAav/txO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAav/txO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BBCC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743676793;
	bh=IKZIZhClevY31LTxAWyj3UwjKHaDV27ek360Vx0vSnI=;
	h=To:Subject:From:Date:From;
	b=NAav/txOHZgoGoRiWQK0mRZL7EzaRWcPatmYswBdljaA40vLgf4wL/ei9PUc+qzpz
	 hk29MOCCCo72P7KKbQv/7ahLIEDf5xez+sBmPeZb9fLLuT68ev3KeiqstUYZ2kOvnZ
	 mgfSlDaKwHFtRZHFihtcvTCea8nc9LtVdERUQR9AOCk5HjnbYpFp3IU2/slhYwrXHH
	 Q9bVOFw6wsuyUGrZ2rhYjo1qo986+6DSiaUdaqgTIaqW41UMVOJCT4/x6VN47jJpfH
	 7fy2iN7EcU4ztZSvL2bT8p6/vH9QJsUUP5Goa5ut/sv0hCKRJXLFUA58iycjzhvXdO
	 YCyoegChT0NWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91356C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367679358.14250.7652551153905153988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bbe4072de442b6a84dc8ee6b1f30d7f50eace45e59afc5e6b35ca06492d549
Date: Thu, 03 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743676793
