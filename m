Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186901F758F
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750502394; cv=none; b=Zare2AgEXdXpiniukWxv3jHjFsnxpb1rJTBYCVv/AewjcVfu1WvCz8M4N1YT8MuiT97KKE3lIBdEmVeuGwU0d/Ty5+DsdCsO7UgyMWQeoZzbPyWBZZTrJYw0zlmUmKr/KXxN+zJRuQgunqyh5ALys+Z4QOTWnoMpA7Q/fd+i18Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750502394; c=relaxed/simple;
	bh=gnJeT1pcpne9X6ww20YkntXefkM30noE1nMEgzD1t6Q=;
	h=To:Subject:From:Message-Id:Date; b=AJM79VP9+P7bSMo6tKRU7T8tSkKdrbgcmEJzXCAR7LWualji+XuJuyTv77jeewJm1GNMdMMAT/mpTRUWi3GVxofZIe2CthAhYaSYNbKtJ3pNNN4zjmY9J+tIZexKDbaobz3D0deTCkRC9h0HjSyIqViKXvtvDwf3wL7+hTJnoPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DS2X7TyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DS2X7TyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 977B7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750502393;
	bh=gnJeT1pcpne9X6ww20YkntXefkM30noE1nMEgzD1t6Q=;
	h=To:Subject:From:Date:From;
	b=DS2X7TyMTBfDOKTwP20XeIrCB0XOYGo5CiXKvdaLbQghcNmejU03rpqKBul3pnfcC
	 WotxhTVrcUsOvUWJV48edU73Wd8UGQda5XQCI7y2rRVQeGXZyxS6couzhLf5a3chzu
	 7H4Dflhhk5d6n0/VjbnWvw9yEfY1ZlxAfmGkGb+7SnK6eNX1lFkhKy2wAiOQSI5nok
	 FSzaDuRHdpQFK6v20qRmBJXaTqwHtEO554miYdqo8kz2FfFtsUOCfuQJEM7H/wQFUe
	 6e0sPjBHCo54Gg3QW+QanzHUuvybYSlUGG2e6WJH+vToM676603txT0OoCvI6sXawd
	 FL2DWTlrGp/9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E186C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050239357.7990.6307140949938068971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ae7f386656f8365de15aa2a937bb27aceddff32fcd2a0194b21a922304b74e
Date: Sat, 21 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750502393
