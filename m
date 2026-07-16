Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2658E3D1A81
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784194114; cv=none; b=KgWElaMuyvpPG6gjdYRbnolAUIpzruJoeEnsGefXrrgaujhCNSvOP5Vy99eSj1Yh4+5ab617hmIyfeiR95DAefrYc/J3oJwU1HzC885YD5Vpo3MUmaOnv4xrJKpbLi5CfT/nJoA8baqvzQxeM6hlmGjBygWIbO+wyW44EyfxP34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784194114; c=relaxed/simple;
	bh=wHXoYsbcqTd+PuzBsQvdeG6AEdFdIgsbYk0pnghjWyU=;
	h=To:Subject:From:Message-Id:Date; b=HtRxa2yUceWpliWG/zegnUSB2Hzn3D1San1uBeswXmi8OqppOTIHeaQHQGw4rs1j8xgtQcTqyyEDA4pIbT/hSBhLR6fChoxS0eoFDd2ZrBftOivtgs088W93TQyW6rywFxJlI2aB5mtSTrdYAGlNIgYwsClgfa4mTlIrGOle2UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZieKLEx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZieKLEx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A59C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784194113;
	bh=wHXoYsbcqTd+PuzBsQvdeG6AEdFdIgsbYk0pnghjWyU=;
	h=To:Subject:From:Date:From;
	b=ZieKLEx1XThf2ONCevSJ57Rx9BopLGCzPJth+y7/dHCfMRhrMeh1YyhoKR2tJLNaI
	 wq/izmvkWETg9oasbxozrTElAdKgO8i9aDvVIODT6E6xQeBzpXYy61Hb+wLPt/6Brw
	 4wsT4xtElIXRYvkWvMyMMDs+EI/nBcMwYpTdRkxYTjLmeezGaI3sojfVUjXIvUD/9I
	 itKuP9qAQczUmtBoui0MWlVulbEr53tePAv6dC1mhy7hP7RUQ7Rh4tpw5UndYc67tg
	 0Y0KojOrdHpP8pC4mJ+7+O5BO7RSCm9dYsQfJ+lNUr7ndGQMarpGrPAtUFtDOjUvYx
	 XklFUSQhB5ANQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7736C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419411374.2255.2841858463460836944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303837e04e16380d8607b3e62da2d33edcb8033ed2cc562af46344dd36322b18
Date: Thu, 16 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784194113
