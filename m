Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE1A37B41F
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789342234; cv=none; b=dYIkZr0mOzCZOZ5S1X2xMqHs+Ywf6k9krsGDi04yZ/om+o9gExCsQ4p/8VaiCZKARfcGOu0+KuD8EoNbXwDTKb5YWHstUEKi1SlF7IRDlJh30ToCiVzgfmH0pEs7/JJXcPhxgdQFB8+ICyxZ6/Dc4MztpmK4s6tyLQ+/1X4muKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789342234; c=relaxed/simple;
	bh=SUP8mp1RIwyeKLkWGf2JDsJ+YYNjsv5Sx5xJh2nJrRM=;
	h=To:Subject:From:Message-Id:Date; b=NYlZkaPQZEf9DdQReXQSULyraJdLJuGIqfcgQCImZDuDPHGp9XojwokHSVG0vhcbjABTjJlxBTnYOStfMp3hBG7dTEZDdnewliuh7JK7IyGKsHaGwPEmD53kxhpKcZV0U+Aic98zHDI3zAs9QJnOq6btkY0TcC7BjjmWtoBgDx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCwMQXu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCwMQXu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB81C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789342233;
	bh=SUP8mp1RIwyeKLkWGf2JDsJ+YYNjsv5Sx5xJh2nJrRM=;
	h=To:Subject:From:Date:From;
	b=CCwMQXu3u3ixLGohhJmmXRrA3zB1D3c9IllPnFKMuas1dlDYo2MGrReeF1ZXkiH3m
	 1Jp/dsLJPex03e+cGFfvESQiDxOtssJCyZ06/0cHZa2DkV+6BBbQLZXLtuDTIweDIF
	 l0NDcAKviWfl6p1M7leoWrUyGLpSW11oeIxTLg/fn5uRyND1L6fSORvTSaEgesQqH8
	 U2KqFixZ4KMPb5y2WD7jrQ+PM/9uiA9727THvBou08aPDP09rnHHkveBc+DwChEPbw
	 jYkh1YacmTBpjpL1SN15XXFiPGX/70FMf7VGrNUdWKvCXNUvBaM2vZDyBpJsIpu39T
	 7PML4y4vklErA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DBBC88E64
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934223368.7270.16023619237314987918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcdbef04a9ca457a53eecd1dba673459fc58e2adac74eff9ed0ff696c25f2f07
Date: Sun, 13 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789342233
