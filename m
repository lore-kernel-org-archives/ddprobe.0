Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184702E7F04
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754987994; cv=none; b=YRYzy/86FiYdm++R8ijpXcTdObC0nswDoHWYi73x8W6wlA3tywDhN9FG6lgZMNXtK/W3VY04yUScjhGifXWBya2jnCKAwtBdCCW5ERdFAll9iL9aSQoCOimbuiqlZ3FOZHUQ5q4NHU+MiJVau03Juu7PzGaK1l25Radbjo5mnDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754987994; c=relaxed/simple;
	bh=cV4IW9nDaUqA37sD9bFt8owzqE5WuXAzCxrkL5f1nBE=;
	h=To:Subject:From:Message-Id:Date; b=Y2+thJ477563Xu3XYsQs2RDVWSyCYW34hucpBaCAFYKjHwMTujZ9EYd1DVp5rrQe1m/uIxRGtk1izM3Wy8B4+cYtvmVc40YdDnP8fdgWaj6MiH8/405TaQtY/35yG1TVM4zzrasWY9ESZjFfyJy+zBSFjAWiC6B3KeJ6X9FPhwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwn9SzbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwn9SzbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1752C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754987993;
	bh=cV4IW9nDaUqA37sD9bFt8owzqE5WuXAzCxrkL5f1nBE=;
	h=To:Subject:From:Date:From;
	b=nwn9SzbS0aUm6hyIskDq52WraLlsCeNCnY3LuzetEIh0dbxAOzWGxF5yx/HcJdMw3
	 AMhJgA3mRpeMnU3/WcLj+GevrknLwr46dRZ0O66oP77LHEKE5FbK3X4GyQuBJ9M/In
	 VBwfbfvF6QInf/IEzkci/sX7X8PVnNhrhhixxKCEwCrii+3jY6lcqLafY+4V3Mo12J
	 hpFoTmtFpBjGCvN5c4qy4vMPR38+DXJCKRI40Yew3njztUE1x14iHB8/Q5RF8y5P9v
	 TvnrKccUn+8ZP7hr07xuRGzloc/i33J363kuAIT5vVHsNp1n8pWyPHEvuqYwt8LYfz
	 DaO8XOX0IBuZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92310C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498799357.25285.2225182730867684019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f777a24034c7031965bd8921e5db945ec90d4be8bea5ad8e5dc5ea38205a93
Date: Tue, 12 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754987993
