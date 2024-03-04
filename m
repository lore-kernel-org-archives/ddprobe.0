Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BADDF67
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709585297; cv=none; b=NgvwPED0A4moyWGn5m0jF+qg4TLeN9b3kM74/sNd/ZXoEiZEIYqapZ6ntdFs+SF6P6GlEntw6O1NrkJsKTRL/iI+2EgY3FbqvuLZ0NX1gQzT/mztSQhvT2jB/9sdtc1urTPjBa98XFMrcyTYb7sr7Mf/C+yfBRbvjho4Ir7SEU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709585297; c=relaxed/simple;
	bh=PpjSQh+eep+KyLJi5HV80k7RCSFSjIQ9VGx5+q/wWrY=;
	h=To:Subject:From:Message-Id:Date; b=k5UYI0XW3yhGNLMjx1xV239+DnnQAH1f+6OIjJEbx2DqZ5+algd1Y5qIB1Z6VUJd+ZYUFNMziqU2erwYz32Yj7s9kirWWC6ta540IT+Qab0WrQrx2sFkmR8pwqWXdtS6gZejLUSXOpMiMMn6n84NLOs8+SGKVF5PpMWEwz1ageQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qV43EtqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qV43EtqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76782C433F1
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709585296;
	bh=PpjSQh+eep+KyLJi5HV80k7RCSFSjIQ9VGx5+q/wWrY=;
	h=To:Subject:From:Date:From;
	b=qV43EtqFTp1gmKba3KcZLvCswbGEdQpKDefgOkVpSu6+ssBe7MagqAzzNUYquDrbU
	 lqIofFs7SO40yrjnPT1faiZPreRKxUlnp7VepoG6jta8L15nVqazo6yjLPl+DcqP3h
	 83Q1+AkwnGf2p8ujjNjO2UO+osNfjfCpqExkPMrjzGUVlfDVLcuaqDWPVkDNvmx+yj
	 gioFLQBG/zSYnKDS10juCF9NzmiHZkI8t8kiwhVPq60iksa8Q9IAr4FI+9NmHG3snl
	 KF5ng7jvVKav+8rdtsEyicc/pGIXFupv0OoucdNr8QXEv1yJV/TgRD20s9yNXAPFpw
	 tZ76E3W5zJVAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4FAC54E49
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170958529637.30454.1479698026703051860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2126779b906690745fb810853e85b0aaad7e1693dc1008525684d40f8408944
Date: Mon, 04 Mar 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709585296
