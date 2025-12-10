Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FC3322A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765332774; cv=none; b=WY/FwPQNOGbMITGvCazjEbCYGcIcqcpy2Gy/FSCyr1x3v2I6esSO2FYjoEpKk3kYtKJVnTQqwIgI0bhwi6sYoXav68YFHBD6YvV8U4MhmJsc+7Vve2Y1HO6Ui9nkDlWs1RgeEXTOHCagm/HXSP5fiieXCOeqW/XFm1K5+Wc9AM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765332774; c=relaxed/simple;
	bh=BWW+rbyP38f+rkx+H9xNM6haFWbH7Os36PRwi1LAaQs=;
	h=To:Subject:From:Message-Id:Date; b=sQ93Pr2mQI/1L1KlArtb3BB52+yp0izStTsKSCX8GY9CY4Ukga7+jxd4hIDJVZXKREwgtb/6+i015xg30jnFLDwHDWM3d6EDjlJdTqPupgif8/KgqD/6NOyoUuKv9kMvJcEc8/ePmASruObi6TRqLrzUNLtzc0ctImqu1GfxVIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XheDVabP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XheDVabP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11A3C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765332773;
	bh=BWW+rbyP38f+rkx+H9xNM6haFWbH7Os36PRwi1LAaQs=;
	h=To:Subject:From:Date:From;
	b=XheDVabPPRCaQ6kFs0evWZMzzbrgt6eauA9zfq0dFJw/xiBfjpsPAAYqvXviR9w0O
	 6iOYt26IOC932BuC0pjx6A9J+s3t5XfiGOnITo3ix9qDp3zo17b4DzdZnYMmTgqIV3
	 z/QRZtXjMwe/1L8bQ8JAkTfKoS0qaTJhedqaUir+jfxCREohiZeSU+YeBlvdIfB+tz
	 GYj/n6kZ69hGzKREclKZoDDwUC9HLYceTxDLC4pdeqrZDn+o9WpNLpp0ljk62jLkJi
	 y58uXCeGjIei/IuVgF4B3uxuc3oxzzxpxbyXnSOMn7pWthGmXYJjCj+JCktMGUGngp
	 KEKe6QYZC6Emg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9787ED3C520
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533277359.22748.5186614004735913117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a64d58fcd01c14487eefa613ac25d02876cf240f8fb7e2c696068440510fad
Date: Wed, 10 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765332773
