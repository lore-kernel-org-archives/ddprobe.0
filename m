Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22441E3791
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735767353; cv=none; b=vE630KpOAyOLqrxiuqinlwz9LX3FEyI5hTiJk5LehsTowl4QJfDxn0p67KuRRKuRpPatcFFrHM164xrKJJjgUQ0CMmjpybINan69yjEBk7THZO0O9JzfhjzDID1u7i/JIlNcGVxGeP3KwAtQ5UmojRJhvIE21wcDj1OynVjAvo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735767353; c=relaxed/simple;
	bh=T4z4u7OFlcUi5wJLcs+qZ+tvhfX6qgXV5pTB5U9AFuw=;
	h=To:Subject:From:Message-Id:Date; b=ZV8KvhnaBzPIKdC+bAuPpdBOO0THtSXxEoPjPJAUe5Z966wEyy38kA3L8QzADOkEXHBK4woWmS0zHryG7CsvafVZ4NoWD3ziDwodlDZ02E5EKr3N+22h3eAkucX6cNYrN8MIfIXAB+pW32p1YbS3AVNQdK0lKf1mdYa/Gt/og9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOqfVRog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOqfVRog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B28C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735767353;
	bh=T4z4u7OFlcUi5wJLcs+qZ+tvhfX6qgXV5pTB5U9AFuw=;
	h=To:Subject:From:Date:From;
	b=rOqfVRogIFgYEpkGD61qGudc3jo1PqrF5EgbxpkzUqhADLnHIrJDRcBdx8W1CK5OI
	 1llYOgdMGJRb1HA/NWTYIVV1i5LYhvbWklxQmjlfkzivwBjHozjiAzMDt3T+H39pPJ
	 4fqwKaif1m6X/CzqM5V4Y0INqzpP+gYIHq/mNPCAfnLERLtZ86gkaqv0sKiUM/luio
	 1ln5VMb3U71ifMkByERFGSxOtvIqHzEf8JeLE8AqbSqjxkasCkHiZTmyohucr9Umbl
	 m7Qhqup4s1u0C6w54RVeyuzxm8k6KL6QxNFpcDqi6cT9ELRIL3oEQUm4DeTzNQqC26
	 EKPl6VjSb4siw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F3E7718F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576735359.3046.3434104797930807175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37deea1b7490a036ca2b5fc68c43a3b54742b88e1a033185cd382755413fb22e
Date: Wed, 01 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735767353
