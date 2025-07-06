Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE60214A8B
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751821194; cv=none; b=lz/HwVU7MU5G4b9po9ZF9If6ugldFjhoAfUj91+0GnQ6VPoevANzQ/jslzcrt0OebDqVLr7qNw412LVRdM0CysP4zaOkupeJiRbiPuYvShRqOJLesvVoD322mzoXJMT5lYxukia93LgkW3E4gg7uaRvWFyyo2tlFyy4tcYFubQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751821194; c=relaxed/simple;
	bh=nrRhG5AuHBGN0Mb8z8WRvZVQJC/oS3hWGu6h32eKNUY=;
	h=To:Subject:From:Message-Id:Date; b=p9eAPGEuUPTOoY3+kO0OCep3TaIQgIU9nvmdoHdM6BSmxODzvTvbjku68bHBf3kpptKtVWpuHNjiLhX+YMrvo2xuCud8N/ohgo831jbKeFYJ6DMQXpDMudx2+9KioZo1rt69OLBaLWtLnFqOhNPMcOc9c5Ble+SH2CWEIPAIv8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTlT97WE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTlT97WE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E78C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751821193;
	bh=nrRhG5AuHBGN0Mb8z8WRvZVQJC/oS3hWGu6h32eKNUY=;
	h=To:Subject:From:Date:From;
	b=bTlT97WEGC8p4Q6T7aoMeTEqXsopVrhhocf3dlzXs2ypn738y5QcULzRvl8KoS/ZD
	 dL8E3XNSzpH1rhir2m/bokb+io3nAs+FCjcQanjqyY8IXcDp6OhJVkjaXKeRkRKn4B
	 l3bAqTx/uOezWbMUAPRgtMyLdUiQTlezAjgTLJGeXhxxdFoWIS+GYya5ByRLedyASq
	 5hY8eJwUvtl2QOY6wpi/ZOou9LsQ+LEHyVUtlJJA6agKFnRmYSY9WJJwQsN5I2l60i
	 AMqXW9Me38JGVC1Vbj+s3reXpZjWgYTfjIEKIwlDKGvIDdslkCtoLCND5+4SZ5FZOC
	 M/pn9VsCefxDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0D3C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182119361.11502.11040806119107647401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fdc303ab58cf887c9f7282c2c275618787c7a6bf8db0ed3b036c9fc1232177e
Date: Sun, 06 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751821193
