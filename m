Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EFB1CD0C
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725130554; cv=none; b=Q1sXCJDsnFMZ3RvkiiPGcMxwPdf5a9Lvz6IhKl14OoP8cg7mcywhOd15URJso8TxllqP2cJ47iBVTIfbM5tiuMK3M4YWESPbf9VvyN3lSLs3lKSuOtoU/Ic/zJU4ta9sf+7yv7iwde5XmINeZr1LYzLIzZR60SzdIXeK/9fYDQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725130554; c=relaxed/simple;
	bh=ibZ+I0jPeO19v7whX3XpVGWF0U+nGYgrKNMzAqLTPzQ=;
	h=To:Subject:From:Message-Id:Date; b=pO/dK5u+yMzLZ6OZ98WN3bsu3Z83AEy9E1eBKklC0ZQkgbtclLxLZqVjetsAq3j/w8FcJZ65XBWDfdCdvZESf10zRzAe7pxhu+g7JPqu3C0C+krCYHP9ZCqd4JJwmsLVjG7bL4pE3oszRA1L0NwJ9pR8Tn12lmyIzy7D15ARIlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIaoSMZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIaoSMZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63BCC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725130553;
	bh=ibZ+I0jPeO19v7whX3XpVGWF0U+nGYgrKNMzAqLTPzQ=;
	h=To:Subject:From:Date:From;
	b=YIaoSMZuylmR87UAw0YDS4iYbxi22VKWZBk129ibZe2+HfNMGfCUwBweNmtqNyPzP
	 h7gmoMfBm229LlPz+UiVQ5IzzaUVrUxury/38UYt5Nm9qF9E+rg9xSJGdSB2gvnGbx
	 VZPL2SlRHxrauiFdEp+adxKReP4NH1sCXH+Eaf5ZPnDPwBONiV9D/EDBQe92CQjRrX
	 VK6U9s/ejfmNT4sJogSJJ87q9BqBBn8TiXEjYLh5LR3TOXwBW22Pi4lWSorwfw0pii
	 IpPqi1adn6QdZAz6iSBLFwbU6kWBhQWz3PFzwclMNk6+KIhkwY5gdnemYrqe7/3/d4
	 5bRYsvBz2dj7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93520CD13DD
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172513055359.25123.16890745384046150037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbb485e2b51f2c455eaf324fba9a6a3c42f65517c6fc8cbc0f78750f849a1e8
Date: Sat, 31 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725130553
