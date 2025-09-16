Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA1C199920
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757986194; cv=none; b=gIgEbePfCgitoiaOLPqpMO3ZR6OVvaVGTvDSmX+1HXR3ZMV0qpYzchhYMEkHfLkuu3cUEiYtw5Ea44m6M6STnt35kNY4D3fpGpY8XqWDuPfAUlI4e4iiidG1KSflSsUCv+48xpTlxXM7ZU0CL/QVQdj2VIhrnZ4kfBMhTwZ8a8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757986194; c=relaxed/simple;
	bh=WS4Z0lMnUOprQbXJme7/czNGe8LkN4iAcTtR9GtWjB4=;
	h=To:Subject:From:Message-Id:Date; b=J8W7ankd+MH3+Guuefyg8hbj+IweYoneQx41UmhTMXuQ2PAlGcem5aG1i53qlFPvlXaJkpi/Ajc6LKe/Dl/zaM354ToaU2nIBGxrF9xQY5yihh4CokEjUWUieyU7DvprSIn/36ePQ7QshO+7or6XtKzGDYtu2xEDVr9LQ669gGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cclWwHH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cclWwHH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A409EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757986193;
	bh=WS4Z0lMnUOprQbXJme7/czNGe8LkN4iAcTtR9GtWjB4=;
	h=To:Subject:From:Date:From;
	b=cclWwHH/RMfRcd0xNrknKQDinUKhhU+LIkqyETElHUkSsKvhxxJRHFB2rQ/QZ49v9
	 AcHONtBE3LXQyVID0DmdnD6FwJFiLlgb9FM+AkpYmLqnUPFCdxRhgVXWKl8jK+n7W+
	 475BaB/U+HgObCIbFGwzBitFKIWYfb1H9Ja9S7sfx4LWsDw5/zfTXQqIPA7RHrSm+z
	 4WJjPhZesuCouEt7O5a9isXacoYqj71TgSFij6LjmCPjc/OFVv85S0p9PvC69QMogd
	 5/2XTc6GAWJBmL70TUjs6j3Lhw+w+51JnlDbSlfftLsEo6BBabNp4cb+apNVzn9lNb
	 +N/hRQXSTpK2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F385CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798619357.30074.11475080406114693779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391f2c457d232ce27ea31ea58ed18884569f4e17df47ae17ec507ea08af82f06
Date: Tue, 16 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757986193
