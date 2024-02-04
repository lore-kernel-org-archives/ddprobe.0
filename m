Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B377EDE
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707011897; cv=none; b=snoFY9g0FoQdYChGbmnBbsV4Od3PKoxEs1rDz9PjGwCsjPzHS0CEauhYlJQ6Q8tQxhu0HRqdA4ZfnBRTgAagoO1kUWrqCiGQJPm1cvp1smzZImtXCTp7Zu86MWLD4nI24lPNKtQVK71gurJUli0bAN136cW3Q5Xg+g5uA1VJEVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707011897; c=relaxed/simple;
	bh=fSSgkuaPcKZTX2v7x1ki9m3w7asDLoRcHx+QzW/mQnc=;
	h=To:Subject:From:Message-Id:Date; b=rDk+uDslz0EfpKtIIA2BP5UKbUGmkvgy9VNuY8oUMEQE4atlhUTSTvigWVcHOx6BGyA5V+JY9092u9NxHzLdDtGzgyOWvGh4cxmOVNn6MF+F4fu3BzeT4gbvuN4IDEG7Yv3wTZKMpZW4yX44t85OBm8Z+URjuKu3ShdcZdQKJiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIKA7c0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIKA7c0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83972C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707011896;
	bh=fSSgkuaPcKZTX2v7x1ki9m3w7asDLoRcHx+QzW/mQnc=;
	h=To:Subject:From:Date:From;
	b=XIKA7c0Yi+YlZUhov8kmjToPGbd4nbRnZxu+WgIHqu6DWAOfa5JzqwOgZnGlDX29a
	 cFgdwQQRO3x2t5zVwQhZa74L6CIU6Kiip646YbKknUQXljG8xRibHvTKNtYhtTm5Xh
	 jpmTpOlxlld3Mx1IDveZuiamQBl5f7EbIellNcdkcvXj06ClSA3V+Z1C3ESNegyr/s
	 fDAG///Jew/vyFh5zHfmHARq+IxOlUkzUuirDR4ZQi8xGxosq3nqaHZtfCpDCiH3E6
	 oQMVrszz6rFq55ZddkAehf9lglYhEo0jO9nipjkLULW6FCelPvi31lKdxFbxx+mHhZ
	 uPVrfH+KS1yEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68187C4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170701189639.27033.11208195612285868536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d34dcdd1bb785fd7390a6a030f05470dea534ec330e8322da1f57a49516037
Date: Sun, 04 Feb 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707011896
