Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AACBA2D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723873554; cv=none; b=qEXDJHVuglIlC+WakG1AMMs/hJ5PhDF3CPW3nz0nIduwCezFT1uAEUjI+7/hGMy1bwTEznKpu6QPwV1GH6C04g2KYYMAXwXQPFhZYlgrNpNVJk9X8NwkYArWFEuBpA666DuHWUv1xukZSnzk7SHXVh6fl48k02Y7yQhh5Zd6dfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723873554; c=relaxed/simple;
	bh=k93/osAg/7Y8AJgKpp7uLS4kIlbQEhU7H3eKW84OQTw=;
	h=To:Subject:From:Message-Id:Date; b=Q323r10nCXlCB58fdM86KQZ/3JSknrVpsTfVYXzZ/KG4K/Ie/jVuhllxVV/IyBKgJU5NSdDnlVxR5d+VGyqmgwQnDNmzTdUSsVJk4u7gXYtzC71SWieKadoJGHf9JWRVZo+oY9nrXQo7VC+x1hYl8hVUgAeifxKzYb9GEtSAkbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZzipUIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZzipUIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C04C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723873553;
	bh=k93/osAg/7Y8AJgKpp7uLS4kIlbQEhU7H3eKW84OQTw=;
	h=To:Subject:From:Date:From;
	b=SZzipUIPZf2A2HUJK78psFzP4iez3qW1GhUwCF0QBVdGWsO0idWFFqevoWrj6U7bP
	 z8ywMobNyFgW2CNfnzEWrahWP0pQoGnmo8aqb77gEsnl4pHrN3EwkDxYvqvMjBlSHd
	 7sxydo7BkdLRfd/cXtQ73OkpZDLbw9r2naZ/i7bZNUkXCHkCZQRRoR51QDEVpbnM3K
	 c+ohRDtTqfbwrUQiStmbY7vARvZ67xessYhb6aBSfDuKZhwcqxuxUtns8c1Lewlt9n
	 tqO6HE/beTyMFnerXHhc79XKx++dl5hyB2SfE4MI+5GllL8DdoMLrbE4mjXiswpI+T
	 WQ5zQsUYn5KiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A875AC52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172387355365.32668.18225845512468286888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c31cfe14f2e6bcadf3735421b93a21b440ce4625652d6628c03196d92af66ac1
Date: Sat, 17 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723873553
