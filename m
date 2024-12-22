Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2261F6F31E
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734854154; cv=none; b=jmb7pPyYUGDmtxId6UyJ6rPwnxfjDR9MqYoq5I96rGfYJPHv7AnI9ZlG3yLBGRfTVv9gg8les7I59t27YcNh48/1LO2K3Qhq3iC5eOzx+0p5S5fmCOvDBPKdr5ActsAgQ8y1WWF2O42A4iblFv28EQ923/s/Ty8BlQtgvAE6qcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734854154; c=relaxed/simple;
	bh=dIZeqyf8VtNcCxQv4jLNJf+uNG8173OJyvN0jETZELo=;
	h=To:Subject:From:Message-Id:Date; b=I25b0lSqqUnZtENoUCUFZDJpl35b0wroJ4xYsDJpqTYB1tdXjwrp9kakydlAAL5P0WxhL3XolbrWYJqUhTFe57zF2hSuFxQwInRBg9BsB+COq+e3K1RWkdfIxG/VChUeIAh43jssHUoaQWh0NwRlMYpCvVOd3lrp0mn2jDbXmZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flh7M7Px; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flh7M7Px"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A989AC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734854153;
	bh=dIZeqyf8VtNcCxQv4jLNJf+uNG8173OJyvN0jETZELo=;
	h=To:Subject:From:Date:From;
	b=flh7M7PxT9jxOJByKdmzTC8vM837Jm76XAyfx+UdpKRsYkpB4OtIMOY0/lJuayYKM
	 MfUEavbYRjOYVnDMqP1Yh3dDHZVjHUWAWWbSqvgmUpgLwu+tFmanoCvXANSLiNP4Vb
	 MVnECBlZOfP/H+ZAo7qDBG+lZ5BR0BFQ8TEH5bnc3hz9zxbzUjqb65DjDfI5FKjuQt
	 jTTLe0VfxVSSQC2ECH+qP6+lUvIC6+DMFKUQyd2WzeDRRFzin5eNzyTXd4eFDYIkCL
	 +pht/A13YIe1xlCN1pf6ZpnOwjHmCuCiJI1HyRAiWy4iWr+7+g9rx8mV07nrkU6yy+
	 W0jb66/5jZhWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97576E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173485415361.8973.2370170217841734372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0267dde9a786aa932fb23b0b5f853ae850c317d1af7d8ff2cbce228f252129f
Date: Sun, 22 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734854153
