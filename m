Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCE1139D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752382194; cv=none; b=REObHmzQcmwHzUkMmBb4mUytPjbx1IDhtexWf09OCojxWaTap05D4xhHFw3DQXlthC1K2L6U13SySXpH1vXlK8tlzyw31A9nKr57UzP/sPmPaJQNw6r2hvKXR7LoHq458NoflQilSzwl6ioV8QROt32GARLhDqIJ48b6m+ODPog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752382194; c=relaxed/simple;
	bh=uCbC3fPTyE1nmedG2M9hGPRZbwrm2ZnA6pE0W8/zy7M=;
	h=To:Subject:From:Message-Id:Date; b=N6zGb2UHzJPdOUQxsBO+IJTwypHBwUI+fRed3vgwbyX4e4qYcR030uEWNUObHB1bnHMH/9nRa/avbfg5kDzU0U1WoU05Aryh3R8TEUjYtaORpOJj0qhwFjKFOAlE9rpwb3BZ07RiCRZOudp4pn8P7eGMX6Se5jtAQf+XlRIvbMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApygTUMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApygTUMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A245CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752382193;
	bh=uCbC3fPTyE1nmedG2M9hGPRZbwrm2ZnA6pE0W8/zy7M=;
	h=To:Subject:From:Date:From;
	b=ApygTUMl6vh/7bEeDyPf2X+dVjkLCVyrrYtFsvu2vO0XdUFy4eg5+ZJgI6HCAZAYI
	 aa4vd57vK2eKer5KHkG+F2khc8X+invxGY9cAkLEofCKu/Lru+d32hzeey4ndHRlHH
	 QjK20UsEzJCEnxMNEY+Df0UMj6Nt4Y9cWNPCp2Da/1NJ9n4ZY2tpU2o2+ec8ktxHpy
	 LmKiKBpeklaZ7YwUySOjLWXSJUli52yufsbtVz91s3Eo62YJcxuj3IsQxWITUl95Re
	 NNkvtRqLJ5Wet02n2Nx0WpEeAlXjpE25ASPGx3cLAQocUTI1C1JBzMRYld4Gj5IlV6
	 LiAnM5z6p4miA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91448C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238219357.20860.12327123604518898113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b1bc738d8e0b1c61ea5138279b7f5cb1f003f23be483aa12c5e5aae6184e00
Date: Sun, 13 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752382193
