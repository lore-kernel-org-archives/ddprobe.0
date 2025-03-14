Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D98C204F74
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741982334; cv=none; b=RqSXH7q7y37kaztMYeLc7UdzLWuwo2Wjq7OJ3bpR1qCcanruqMEWX+OQVcM9OhvMVcCpxHceRsLk/xI7LmvYyNXRKqPQjCYViZOIMEEf+bmW5fpWY0/YWDL9UHEIoYF+eP/g/egjuPldYRIPLCsnl/iKNy4P+LIp4gHvPDy/xwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741982334; c=relaxed/simple;
	bh=KXRCXB7zNRG0nGpOmhuQ31yGNoNeLHkddkn4uQX1NHI=;
	h=To:Subject:From:Message-Id:Date; b=aqYTqjlAJ/eJp3F7fvfyGjDrmbxhVhpTdHGTnUuYoQ84IdtxNJguJGR/nNWL5cTVzFvKKm2/FO6J4ULjGgX3kosAk4QAQH4COBDXMQebHnCPfWc+BypPDd8VzgtPVS+QNLuqfhFQGZEbNPykborQYWlGrPj7DfBVzCOw+rb5BoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhJjjTGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhJjjTGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD52FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741982333;
	bh=KXRCXB7zNRG0nGpOmhuQ31yGNoNeLHkddkn4uQX1NHI=;
	h=To:Subject:From:Date:From;
	b=hhJjjTGclXacWFBWN8AkDT4kjyBHFpgTLAsMuvRK0lgt18wxfoXNmfS5reM8fnsBL
	 VbO8mJm277ephyF7iTYpzWrlv+ButTgaERh07TlywZuTl3OUDMW+5lWctr1YS6Yz2F
	 6DahUaotzrPWh7cPiMexyfsd/SWvCaQX/WoN7y3zJJsMoTBSh4BN1Ybv/yUz8OOK7A
	 8VwAu1W3RQ95QxvA0BHw1PksV1KR0rXUZ5t+1MQ25QHwA0pBzm9Q2m910ADLZ/ZQhB
	 lIioYVaadvkaBisidPJN53WjRLy4EhhwlqSn4JbYhqJWjaBuX5Sd3WOavxQKtJ8Y1X
	 9qUpNO09PsgdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3345C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198233360.2579.5992050215471429730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e19d0e4c9a0124be8fcc99a5eea06464c150ddb12aeafbb5871af0a7ee9ccb9
Date: Fri, 14 Mar 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741982333
