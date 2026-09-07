Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9EE30CD9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788751234; cv=none; b=HFW54ahVb3EkfCstlDIx9Pge9jWRdjFb6ZBhjNIQn505Sm5nBpnJEIQQbQ7RTiAxbsK6Tl7+PcJe9GGGjVncvbnmcRqEXZEi14opPbVFvvj/q4EjhmvDH2dSsyBm8d7suhIeTL3lfr4wyHrupwP2g01JnseqywIb9A0t/bEdEuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788751234; c=relaxed/simple;
	bh=27Rr9uemVAWPAjxNOsNC2ZU5w36ElmdscPbfLpSDvuo=;
	h=To:Subject:From:Message-Id:Date; b=dQ2CaHUQqDXTCqCs96iwKwucoTTPY57MQfnSgDSZhcl3HzQeSeBqr3IykESB+hJ4OyWWnx1cBoUMSl1MiHdL2Myu2QOC5J8RqYfMa8o+pWKNnqgy0pz7eOH9N/bbwMkRD1OZEsRGHaUKs9QJcmR7u6XiyXlzCYC/wCmQ7XobH4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S88O8h1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S88O8h1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4530C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788751233;
	bh=27Rr9uemVAWPAjxNOsNC2ZU5w36ElmdscPbfLpSDvuo=;
	h=To:Subject:From:Date:From;
	b=S88O8h1TCgriSLiq8xiAqnLmrYeMBqTznTQnZnzD5NfOmJpzn7Jiry5thnKak7HaH
	 rJu4z3FeE2kdLCUq3yrED+I7ciZwuUxCI7YDPFJtFEXI6uN1+JxP3bKPVKUk6jHv/Y
	 XcERLQOqVkyLg9gV3ORPAZNLlpe+KML0HjS9UbaKWoMaGLNI3DSnXPwV0zwXxacMpL
	 eAU7O7qCEZW0URxFRnG5cx4vyWQS+PWom7r2l6r31Fyz9wokdLWAUMEvYcw3YIwhqx
	 69CNlysXO/yq132jlGyF2kemxW2A/TFf7G/5KNOgdH+t526IbaoY6aVoSDCeIathfm
	 LxdCeg1Soej3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F68C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875123369.7554.10312691074958147911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca6de080a2c9ed2bd3a4b6ac17d64f18cb1b0b5b888e0a3767d438bfbf6f5ca
Date: Mon, 07 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788751233
