Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26AF8489
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733877954; cv=none; b=WzdV5hX3nOWGNCKD5bSp+WaiLyOdBDtt0AhJRmKWWat1j3mLmUVyOh5deJ/UjwYpIOkiNpAcdeU7HD1bMqwOvf81zkGdjYFE5Zla+9i+bimCrtjNV9o0Y3p2Fr59fgh5aGuImHcx+elCJXLDsSsNDhlZ4iEvC/LC5+dJJj239Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733877954; c=relaxed/simple;
	bh=4ZCPr7+Fmd063VdLyr3lK3WeYuWFfUWmMlM7koxI0cw=;
	h=To:Subject:From:Message-Id:Date; b=Hh4XpLmDHtsqUf5Egk6W+uqxcMvwXq8AcHMA/QCv20tr1CVS+X1FD/uMeYUfZDvDYp5x8RZq7A0liQNcuwLvMyVLDEWS8fkOAfN7c+9fbY/gG7qKv2pB5XcK7DH0XC7jglFRn6Px4eEVeNR95W9MLqL8JtywYWugi+FxiT03PAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeQZtJ0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeQZtJ0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FB9C4CEDE
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733877953;
	bh=4ZCPr7+Fmd063VdLyr3lK3WeYuWFfUWmMlM7koxI0cw=;
	h=To:Subject:From:Date:From;
	b=TeQZtJ0tbKj0OwnZffrMcFrY5KgHPLuOMU6bD3mn+6izv5M0oFRq4rYqhK3XiYxVc
	 nvWLEf5udNXPiPcznpVVVZmD+Hb3dh4y3LnLybWcuj+D0JYQ9dgueG6E/7JX8XhWIk
	 xdy787yZ8mn5amlWF5C5tdcpMmVn9W+d/fBfss8samQOvtFqrOeM1ujV7uQtTTJs95
	 Uy+N+Ew9GZMnL3T2tV9h2O7MeI+sq1Y5eUR/orR5G2VkXKuuiTXko/Zl1znrCo4exV
	 PdGRiL4BSYgamZAuJWtom8/3K8IFERihQIOBddriwlPacYm/HuX8S0iLkuWJlZLNUw
	 3s1mxNiTCpnJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B9E7717F
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173387795360.13636.4399977069702359779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7638f7032f82caaa1d0c4cb7d51ab2bfb033e890829c210051e738a4779a0cd
Date: Wed, 11 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733877953
