Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED4117B505
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754083794; cv=none; b=Xly3a98ABoXtkMRddvIe/bHH7FFp76H3178922FZ+MVjPiE2kukhCL6QLX826vefAyqoHV0+d1xAuQlDecxPeDBsqM06RpaepvfwPgfVbz2jCQBG33JmHCPPoEyByVNCCObpSAyYLwlljCPDegKsl7tzoDVBalJ/MqHrlYC6iKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754083794; c=relaxed/simple;
	bh=DH7yqz7qLZTDxpGZSnpF5GmujXQhnPMRdB+ehF4o3so=;
	h=To:Subject:From:Message-Id:Date; b=VmXa0jYaXbmZYXKFoLYDW2kmQfMv/iXoorcFLo8LT6LAYRjn6x9trTp7jEYucv/6HZhye8NBPQTJ155/8RgF55MhZp6C5riw4zfVZ0c4CrdSZ9ABODZgZH+GgRjFu59gPu4wzBSrfispR2gPdZXlzQMuw+YpZbEHWJgSVEZkM5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch2naKoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch2naKoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97F2C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754083793;
	bh=DH7yqz7qLZTDxpGZSnpF5GmujXQhnPMRdB+ehF4o3so=;
	h=To:Subject:From:Date:From;
	b=ch2naKoIxB7nSFhYuonf3K1mX+04XLSVU/zZiAx5OSB2tpcfCFeomW7VVY/aEL8tg
	 QlI4PkkBGff1xtKx1g7rfaaatnW6i4Wd0JbnLSifD9RrglwiYN+JhqWGzr2an4wSYc
	 tVhH5r/9IyYddBI4bxBLl+jtbB1jVvCd6kABlyA/PrbxMj3vk46usgPvt09UjmxdPe
	 a5EkyFaYJxRspNA+vD2qL8yOcJ6yWFmbYRoBWgT6NIESDimz//mu72wiaKHMYdxLbN
	 Ovn68v4USfbCEpKn8WPauX/3/oDzZW8l+I6Dfvuaqr25ELdmTMxO0l8l5IZHl5JDdM
	 bHW+Db1cWffFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92315C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408379358.21927.13736896918740052954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c2319e748633eea3aab3e8ee4e8b87c747388bf98845768e1a9e74b94ba2c2
Date: Fri, 01 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754083793
