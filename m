Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371074A3C
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727396154; cv=none; b=eC52GUKmJ04xVYhFWA3JHwBtsnYpLpPLF1uOCQw8i2MdgyoTDkR25GAX1eI5b2FmRkbwMAhxa3lRp3c+dXLhlr/YSvfp1lZ3yA/92sZf4n3NSgXRJTTeGrPuLsvGn7H3tNvzUebHCGkDlPw3WHfj1QzYB2irVZuL7xoYcyp/aEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727396154; c=relaxed/simple;
	bh=OnuK5z40Ch+X+h0gP5o5eU8Igl3GoETdXlKzyGrxb8M=;
	h=To:Subject:From:Message-Id:Date; b=g1CeqVgpVycJxtJznmpr9ee6og0mUpclMTKVsmyxDY4UaAgArLDs15jOKxzg9Ju8038+X8nxUptq+3EzMMuee4MSiPY4eHMaUpqHZAwuHLOXUiMaSbAmrWAi3lu7tpMzt+w2HA6ZosggLd7sZQ1Ka9wkSkz3Ig0XwbwIqupsuZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIFr++Om; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIFr++Om"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2775C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727396153;
	bh=OnuK5z40Ch+X+h0gP5o5eU8Igl3GoETdXlKzyGrxb8M=;
	h=To:Subject:From:Date:From;
	b=VIFr++OmD8mC8PH86xt0pwIoozWXyRsg3YHoLmWQuja+/P0vPAwVSfqoneM7wNHHj
	 Ti11hEVykKhbUrXDXqBhatsEORcy6Vqz1f61eQSFOC52EJFjjkvsF4u33OfQkMiKZ2
	 XWzChmnHpwso6ITpUK/2PuC6Oz/jmtb1zodZO95lfo7MlYgh9RQnJVYXrcxqP3EBuS
	 TWQ2fVj+800mM8pNWyhVYR1ft/+lseywIH4S9Gkhq+9nCFbChM3MSobZSy9MGOYJ2o
	 +xBfF//uXTVQC01/JWPIT2iP9PGg8MzdSDty0YSJxAzu85+Ev4O3toAGpmTcFmnAFK
	 WJkckU5sJfU2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2CCEBF63
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172739615358.29416.9978923194296302402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5043155585e02877462bcd82875263dd4d3b00cd4acb3279a84032b20537fc40
Date: Fri, 27 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727396153
