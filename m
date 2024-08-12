Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E501C3E
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723455954; cv=none; b=svGBGjushO9kdb4pwj0MtuR47D2YuK1En2LJfXfGfEmmkCbNqPOnzALL8Tt5b6fNLbmQslkBy51i2gRSU2v8KMpWCFFP4NGHZqy5MLOQw9JFF3tnrQKXiewFqGQVJ/g13I0iroDdeacs7IMji0cDmytQ+9AsWFvsoJ1sgmjV9PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723455954; c=relaxed/simple;
	bh=NGZPFTFAkbsSSpd8EGSQjo0+UtN0brbprWZzmzYY1RI=;
	h=To:Subject:From:Message-Id:Date; b=r+Q1I6wU4uQDAb5X6hGvGlOCz/6GAY737OuVxDA+ioqRYvY4oeINUKVdbObSWhJO9sEOacw3X3mOsec/6sCkNLgomeAAYkOS0hlj3L8iCwfqtcxUgoZCtG6kwqR/VtNP2FjxvdON3/97q3y58iyZejpKjOkurZFXOcWt8HYECKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQwrmSfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQwrmSfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2CCC4AF0E
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723455953;
	bh=NGZPFTFAkbsSSpd8EGSQjo0+UtN0brbprWZzmzYY1RI=;
	h=To:Subject:From:Date:From;
	b=LQwrmSfTvVpFbNMSw5duxDbYSVIrJNWYhQpOxa4Y1rdFHT6FuKWOv92Jfwnv3nJLs
	 7wFVfR+zGR1JlUiL18pjf9dfwTWK4vGNgjxBwJ7UNWHu1IL8smwyrPydse7clFQRF/
	 u+FW105QVJGPu6QSRtQM5NRsuuJnlN8I85Wq2hX5249CO/IzZrU51dQhr8gvA68f1g
	 cJ5A5oapE6hkY5pvUEHJq7/YwHf6mdjHbHkeIo7coDVjr7P6R/lc6vwgRu3xGZ/wXd
	 MZ+6Nj5F+Hb5ZgwTSE6K5m/KVtKuMcmSMSTE6s0n+VE0oRcUK+7kjd/A9Xbe3vxfhy
	 eHhVHodGBmwZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A59EC3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172345595361.29538.3857482295239403474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc88d275c5a1918d7958266ee4a8929a7e5714f64f091565a81f8149aa973d80
Date: Mon, 12 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723455953
