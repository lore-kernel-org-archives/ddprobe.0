Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B2133B96E
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768748034; cv=none; b=B1yBAp/hhL6HXj39IXx1JAT7eB6QbcIXHzazd66p7yDljqWrsf/VAWZ1SmR+SKgOg3Vwnw/3eN0PUaoX3RuFAjNpKgNsHVq4TWnovNVv4fj02c8igxgdy2B2PblgnggfEwSxAXe6MeT3pUm6ZgwLFFTtaCnjPCrMr1+sgIf3FUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768748034; c=relaxed/simple;
	bh=lueOozretBI3CukVZdJURHsHY/TdSNa2d1aISYm7fu8=;
	h=To:Subject:From:Message-Id:Date; b=adxdlg9PpKAoE+a+ZXVnCkzCsD6lseD/YEc4CHpBhOE16TvrslX5WJm8+6Robdqlx/jilzm0ar6A/0FXpDkTbts+wJswYjHBJwfNz8A+k/96OG4M+kQqYdaoPMsLqdZKBXNYSdshto6N5JPim2gSa/nVfU7vM6PnEuWbr672+pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcNy2V3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcNy2V3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A07C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768748033;
	bh=lueOozretBI3CukVZdJURHsHY/TdSNa2d1aISYm7fu8=;
	h=To:Subject:From:Date:From;
	b=HcNy2V3eZ8KqcaoXROcJyrZ7a8vOgMj/cfLSiXVeKa9qUrqBXtipQjbIyb1DFpLot
	 SIKGwp4Ae3rrIxGy55aAlyEnJHiAE+S/ZtOofF+uq0TI3hIB08ix3UFfNyLcgZ71qE
	 eqHiC5GagEBCujT7ERpwBKjDKy7cSQeb1Dojtfj5RhepuI3+dOg0fgRn2Ty8tmE7Mm
	 E04SzBTM6PgXtDl9K+UKeHf79tkqaSCtD44nxYq7daEaLLabiXZlqsbw6+MvtDdg3A
	 QGMK0EFfBr/w9nIzrln1cwg5/Mfi2xda6BEL57aJB1/CoGYLX54kb5gz87c4BVJD0K
	 Af10Yq284dhkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F6D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874803357.32201.10193159690619003683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2057b3dd846a48de60bf2e3bdbed3a27747cda8080d0c43dc8b20f4683eb8f50
Date: Sun, 18 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768748033
