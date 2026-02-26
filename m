Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D5135A38A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772131494; cv=none; b=tsQCmeA/ewr6ks2dLeh1bY99ZwSMRJiD847pPwtsdt2HRyplk0lOm04hCOUzBCahzzkwkjhXcx4tyDdSq5STYELrolcBKdOtrrE5+T3hOBuO/n711hI9YDQHO8u6JV4NgEcwpXiElsTLzo9WS+rr2+2KkQh9q+nnAIpNDU6kMrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772131494; c=relaxed/simple;
	bh=WsPi59/fjyE5wdEpkq5xQARplLflaTYZFoLD5hr8sVk=;
	h=To:Subject:From:Message-Id:Date; b=pRAjsolebqHAMxit/xUk57uvhg6cdb5aVlRrTayOPhVczPp0HOHeLnDkBvguMoSu418nBnukofGIZeFJaqa07BXdMUMBxxhhW/dbWbq9w6UWnZRIskQAy++B5XRwNj2SKYQ0UQgDhvqvW/buZlPRC33x+4h2WRr2KKGnmHDOdk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvBnCShi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvBnCShi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9454C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772131493;
	bh=WsPi59/fjyE5wdEpkq5xQARplLflaTYZFoLD5hr8sVk=;
	h=To:Subject:From:Date:From;
	b=UvBnCShi3zXbMxDZgdeslU9znqrL+1IAaToYgx5JuqVxNba0IyPRd42TR8GXB3hg8
	 ZL6TUCpDqgfBLbyiuoe6eloC4My8jcuPUvSolhU4ppv3ZVUNIL5ib5AZ4tOUJyRZZX
	 wx0I4xpgRG/ggnLezKYIr2XQfgsOoci23Ros7Y3qxBfVoKw9fser1wnM0SwvRwIRc+
	 2CJbCu3dMthafdxhydyKCli5owBtCldd8SIs16nSOi/dVZuaw3b6WNo0IlBYpZbGla
	 kyOdcjJcfK3qERslo82TdaRx6BU6VvvgETAvwGMy4k+yHaDgeuk5X/gkHwdDGY/jDa
	 lhCkXjPUK6uiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E3FD8FFA
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213149359.2029.605407700411061441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c4b6f86703c5e05cafc9c508c636942a99cb2bd8e1a311dff87beadb8ba365
Date: Thu, 26 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772131493
