Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1312C31DD97
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762366194; cv=none; b=fei2yVGws0DNkwd74xusVwrcyzVtifMjkR7Sf3e66KMWPFrVxmtPax9XNEWtLRCUnzPhtVvAu77l55MfJWcXa7ofMna/8SN0S2/4WlPcqpyLDK4Yd/8rc50zWXUl3EMxphve7cVmiLBO6xP6YdWCUFyKfDy7///xQdulq8mn/bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762366194; c=relaxed/simple;
	bh=GP1j0m6v4phZ+MlitusDnVGrolfqnLpe2oOQCsq4xkc=;
	h=To:Subject:From:Message-Id:Date; b=giNj0kxfJQQX20k6fTPZaVeo2gQpt4tpX8qoD52K7YkAJntFdZc7VYIkapdqeWNqBgN03Le2GKOy6BvltRgB3s/2GwO3FeTLhtR3MTryDI6gafTPNxfBqpJDLAm2e9ZtYMhuixOHh7kusYRx6/ggkcMXouhSsBSRdzw7JBpyCsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtpT2RPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtpT2RPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4EBC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762366193;
	bh=GP1j0m6v4phZ+MlitusDnVGrolfqnLpe2oOQCsq4xkc=;
	h=To:Subject:From:Date:From;
	b=UtpT2RPnS/WyhE+ldOfoZleQ/M8bvhESSTfH+pryca+Fpeg358xTjl8fNU7JAq5Ol
	 qjIXzOXtU3JebC1ADNkRXsyY4WCZkSY7Fs5NKTmtS7QBOU3tg5sinzzpjf6sY/k5wo
	 fT5K/icw5psDSzdb5gYOx4VlfCmjeRPk4ttHXq51N0aeh9qzJhX3yt/56N5jlj6Cyg
	 6PvyOuHHehfW1le/PE5ry8whKXCqqlmlj/vxumkZw5SnFATfDwfTxX2hZ1mXU86Ysk
	 xsnbLo7rUoE7D4n1C/11LtGCABfoHeV+mo/MH+yCkW/U4joSvPaDIpppMrVIti1ngr
	 QZu1m6gaw59gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64FCCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236619358.7385.15712392414661882210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4569747e810141193046176ca125bc58896077df5a94e674e8e0e4b5dfbaf54b
Date: Wed, 05 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762366193
