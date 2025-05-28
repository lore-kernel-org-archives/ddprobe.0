Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD571862
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748461796; cv=none; b=hhtDDyRuLSOTKjSyNHN70w0fFR7VNZPbGgvAyPsYlZu747UptKOhhkGpoAVz1/PmMDF3yjzoKabMy2NuiU85Attp3pNQmYUmq3UzC8Ohw8Y4tG2KRfbYgYg3LTZH4Rzg+uR1ZkeKCWotW1I5L3nOkHb0L0NYiKyDsl2tfA+KuDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748461796; c=relaxed/simple;
	bh=9osTjvU0AvZo7QzGQqdP/ukIxeLeIaaM5Jf9BzC7D9c=;
	h=To:Subject:From:Message-Id:Date; b=ka9VLKxcXkG5YUvdu1Ocn5qHEmjL0B541qGteZz85OXcr8cQWM1O+tbe+OluzlebYy/JyAz3h0d73GlKEfPVPXkPQgRW6CYnqtPYIUumbdIs509SHvOXtiUuvkSpp/GiP/5qwHgm8tplmmavWwOG4ECcbjM5CfhMl8Grb5XGo6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVmIud+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVmIud+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1752C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748461793;
	bh=9osTjvU0AvZo7QzGQqdP/ukIxeLeIaaM5Jf9BzC7D9c=;
	h=To:Subject:From:Date:From;
	b=OVmIud+yUuB1ZgLut9689w2sxlSaFE5FvGlIRHYHlSuhzYRq8BJQQUTAflIFm2dpW
	 RdD2Knt8L1TbvvWXsKQxpPEMKWxgORNmGplk+a7Txt+JUE4G0AmFmAmukzcsSifV/6
	 E2IsMcFUQL5BlYuXLnFFYfQk3FxL1cG+LbFzzRIG+En/i4c4M4zU3v7VO49dRZHWb3
	 T8PZhYqJ12Y+zk1H7YE9d94eSb8XxeEUdZxiFst9F8av+kT0HBSoL8IUH1YCjEHHXy
	 9EoeMORZePFv53QcLkdkKw2ikrwCfzNfmY6TaEW6LT2iccuPpmN0primLvna+d1vxP
	 S65ZXktAwWVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA0C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846179357.25035.13762992761463274736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940463c9fa3f6fc0e5b3347750f784636f417a540d94e4b08294a4a44a776e1c
Date: Wed, 28 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748461793
