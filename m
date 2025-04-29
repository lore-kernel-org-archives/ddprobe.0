Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2865C367
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745888994; cv=none; b=lLBLzgpo3dE/UzFNUNNGq6PUJbC/XAviCNeDQV3SM6ENTv2jY6qxc4dbvSXCzSuM/IyK+SHzn32foiHRONw+3M0pn4ZmHVlhgZLT+5VW1jiw87G0AOHmxUMLTzbRjt9hxBgejrb2zTA3ZTS5IfGndLb6GF5juxPYcC0bLoJI+aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745888994; c=relaxed/simple;
	bh=lrMRLT792hI9dmHP6BFU1wK60zlKqMw3w5P6sBjCoWo=;
	h=To:Subject:From:Message-Id:Date; b=Py4NdGGsYsvr8okm3RGA9zEZWa90VTdoFgdxszu49qlHSc4q/F3CowTBbkkVHtdog56ZKZ2Hvq57qY8iCcZK5n9EqwSXIvlWUahsBAJfC+ILz0r8gH2RG+GDzbt1wQezfDHDEXvR2YqDVsorr8hIFMhKjP7U4GLDJL75frq3z/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQ7fGW9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQ7fGW9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E53C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745888993;
	bh=lrMRLT792hI9dmHP6BFU1wK60zlKqMw3w5P6sBjCoWo=;
	h=To:Subject:From:Date:From;
	b=TQ7fGW9YLwJU1P5e/BhVX6rqBXqOK1Fe5S0ikk5ySnKsLEKcYJ+no+r2tknQ6e1RV
	 K/REAc/g3IyM+O6nijLfz7ppdZwuinsDlBhtmZHIfb7IK0bIe6ec7MxKqiXQEeFR8Z
	 +wQDqjLbBfmN11TL0aItU5+elfsAaj9lqZqoN2qJXYLuneuJPcvgpmeuTQEtRlvCgQ
	 t0HxLyPUttFAIyTVw7djqeI8rmjFNtT9EtoQOX9JPcNARTtAevBwxYxoThRozAxzmw
	 8GRn7ly6LFolluJm4/Tq+nRxOIvpox5VUQvDKA8Stcz+yk8ZyM9a2e7W0s09cAXsuq
	 ZdWpN34677jHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADEC369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588899358.15966.10032698482881027221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8bf498bb9f16ee9cbdaa8a326a48904af2307f9ea81b897f55743a4fd07190
Date: Tue, 29 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745888993
