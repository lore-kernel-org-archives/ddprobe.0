Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8C833F8C4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789084834; cv=none; b=BaK1OijYr7/LYzwoCbgsYsLN8NUEwT6TNgWRMsGaP4Bo0Kf5GMOFW10581T5CF7oYqLnwFvP8rzEVzcH/S3BE14pApFCle5QBSyzj6k/ZjNC0nQuYT46FG5otRDyxIIfeBipOQPIBk6qkQMt9DH/q+m+QvrAFzVwjm59i3nQ5pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789084834; c=relaxed/simple;
	bh=WI4tYVlEdYj9eB1vBxlnoWfwzXitNH2NDVG7KGZE+hA=;
	h=To:Subject:From:Message-Id:Date; b=KWZoNa6cL3Kx9Q0sP2cBiVjseIx5xzSltUzuPN2BUPEGtfibRpUpe3gBVjnmLxvt6TcNQlkq9MrOrS7ZrxgAXcLrFHxI8uoQnZOVxxjwhIpx1k0aP5FqLyaoSA4KvjmuoXPkhHx4UhwpCwZnKfj7Ba7OgtATIYdOZkLu6dOCvOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2LU5hyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2LU5hyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAD0C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789084833;
	bh=WI4tYVlEdYj9eB1vBxlnoWfwzXitNH2NDVG7KGZE+hA=;
	h=To:Subject:From:Date:From;
	b=R2LU5hyGTgv7bWFy3yyDE8hxlVwRS47VLY8V48zFCPlxAsJRy8BFYHTJ94p+NqLjq
	 CCpaSI2++hEfuClwicAq6/zGoDnBUy4q+QkkizxTYUtGhm/zCeH93KGm3C7ry8cdWD
	 bQxTxUOk5/H9SwIgoW6U0es8VBpXoO31OJhewxdskTuK6wHIAOOxWywfDTcLnzpgCw
	 tHJcv8AYDeVTyZAzin97sldR7yqESUPB0V1iJRuQjppORnFwi4HpLYxlBPX5POUpgX
	 cMgFQpg7uVC+92Dl2AARrLKPTtOG+mqN5PDALjcFTMVMnj8MqrJQHyLMOZ2rsQmG92
	 h6GQUU9CGkO0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB6EC88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908483369.28522.2180907711803471987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 857b33147f7dde5d0362713c7b94ed94a0c714c29c423b9a9040908ede287191
Date: Fri, 11 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789084833
