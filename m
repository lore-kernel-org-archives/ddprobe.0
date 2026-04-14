Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3151C26F293
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776208054; cv=none; b=XoVTIiianTKA/DUg01M1FCPueI0PZtVuP/cn/umS4XyO6ubgKZm2j7V8cr/LnkSUqbRCiG/u9LEP1zpjCSipAE4gOrOprOaSLyytqvBIHxWryYP+XM6s0tgr2sXFzp5xBUozaE/89mmYA4sA+JC1HsA+f8QhsrU+09a9Gvt3Y6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776208054; c=relaxed/simple;
	bh=wp1DG4JTY2oCT2MKUSldm8AxKC8fja8T7l7FyuO1IIg=;
	h=To:Subject:From:Message-Id:Date; b=XS4Fg3u75qguofX1QWs2QT2WYHKjREa+CJQm8Y+zKSLS+ihnoPIVO7LaViwRMuId2rNb6oU5owYsPEnERz5yA6MrNDEfRGJxEZ7DvJaxjlKmpjDNIGYAD1XApuyITFrCS6roU97ZMUJB+MHfe4ZqAjHIdrjLrC0cTLtJB0Rg6Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIZ2iCQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIZ2iCQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDC4C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776208053;
	bh=wp1DG4JTY2oCT2MKUSldm8AxKC8fja8T7l7FyuO1IIg=;
	h=To:Subject:From:Date:From;
	b=eIZ2iCQwkPmzHrUwrTf03w6TR5GAMIqC8EL3zTbWGI8HD1H/zGg37zvqIWhPIgmRp
	 bk/f3piNryAmhrloQ+ZB0PHJMXNhXGuycoqlyx6BRuE0M6M+PVbeYjuRFItcH7wS6b
	 9WigfJ4iAyIIJViOSPuxNNFJumZgaY5/EYdk2elbRjkoYkefN76NS0ugocMfzxkvYq
	 JVifeb3pca1jkAEYyLQJGm9ujat7DrpMjeKxKXVgASyc2dqR3X1Mj8lg73UiMUr+h9
	 /Qmg/BjJu7+VbiNmM1ahJVay/OiyjfP3UMqQZqrN/2FxqjrA0IdDe0vEbEhHg179bJ
	 1F4BuCOICfLgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA93F9D0DE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620805368.312.4498675062115425098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1270afc6fbf783a2fda782f40f904dedef0d8988cfed328ab3cef0c3cf17f63c
Date: Tue, 14 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776208053
