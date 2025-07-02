Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1817B1E485
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751459994; cv=none; b=fc6igqqmRuanWwCtzSC+pxFc4LeWUoCAKaXlC+pxxLArjiVt1fQWpQHvs0R6l0BfsL3PvcU6OJ8ooq2LB//fboDTwlEtToOeZXgUYYjEga8ETz6wby+qMEdQBp1aW3uaJjfmR0v+PI5wPDLOt1E3P2XhzKWsXMzUH4R+Nb276ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751459994; c=relaxed/simple;
	bh=v8VC86zXkjJ3m5fz3IBxaAMwVInz4MW3/8JCg1PW+GI=;
	h=To:Subject:From:Message-Id:Date; b=Metd/U1IBWDJ4RUa6aRdAI/A9qIRmqwplc608zB9tkV1IoWHp1akrtPHciKY+lOrEn5YAJ8WpMoMm/ESXRb8DMV78aGxjoxfmapYjhjmFjSvjogHhOr6+PtL6Eidg1zAP3/gQF9ASppdGdcwtlURnqfi+O73JX0D2cv3lAV/aH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYRAgJ7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYRAgJ7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF7EC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751459993;
	bh=v8VC86zXkjJ3m5fz3IBxaAMwVInz4MW3/8JCg1PW+GI=;
	h=To:Subject:From:Date:From;
	b=KYRAgJ7HhdtZoujUGJDYmDDsrIjBbBt+bsGzisAA0Vg+zMG0yZvQds3s3zC1QUxey
	 t0S8XSuDAOGftFXElFb0TW9e2rNh/mNAC8tJjx1hv0eC6GtNWQOP5AMMYjQbR8ljT3
	 NShb6B3AnBqDQIK7p0rnu+vjvLKzgUqgNwnJYGLJZKZAaHJCa27YrtS1eckmdKVo7j
	 YiJf65WMuaqaP0sdDAELeQv2LdjoDNSKxXQk/+DWA1kOzJ5C1CwWOKXKT/4gEZUsIL
	 F5l0cFRUsRrOVxNQs39FtJQ9a1iODIyzKlWB1ZH/AhiddWI2+4u/qPGWLrHh565gtT
	 GKJHzSCyIbGPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E533C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145999357.29183.10011886689318670282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d752c4bfc46d87b5f46b84d78df15725ea2abf2147d81a98c8382db892a8a81
Date: Wed, 02 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751459993
