Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDAF17BB24
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725957954; cv=none; b=SHN72axmgKKOkd7Fy0oVpiDKTd5rguDPB5x3vLol82OdH3MOqJloyF9VedUydXukkua+dC9lNt6dnXbnBhRhWj67dh/jsUBZtH5poW4t2RlM4sqSF25dUNd5VXhwW44vhJOrFPovAeK7of5hZob6n/wDTxSdnILti6R+PYbiokM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725957954; c=relaxed/simple;
	bh=SyOACfEW8Rdaa2ChAAfudBXpTjTHpG9OiKT/v5JCPpM=;
	h=To:Subject:From:Message-Id:Date; b=es4FYdJDooZBAepMaDlsdI/xeMyPxU2YU6fJy4gSs2gat/EIpVigvURp0Cc9F6o1oesproN9OIJhNvh6Chrl7tYZKgYIrnbuaaPqV7Loz8NmRIJ/CCV5NH79WklUtlht0MKURU3GAdE7uH3MAmujEahN2B2ZukIDuAtIfqHlqsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdBFreUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdBFreUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8AFC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725957953;
	bh=SyOACfEW8Rdaa2ChAAfudBXpTjTHpG9OiKT/v5JCPpM=;
	h=To:Subject:From:Date:From;
	b=ZdBFreUUkyevMW8Cs5yrReUOMjvy6Fk5kFk4CAFOpM176GQZ7DSZlxQu3lucy/d8U
	 x1q7cX+9v4coLWL+lq7Dyg5WAK7vNspzRRKw/iqh1JU3Gz4XZWuSRqgHZ5TaFJKhmJ
	 7e/djDrfbS5IRMCh7B/5O8gk7QQQPGQ6nv4rfh4PY6QMDvBAOt4x+SXGhcn50mdlEM
	 Fovau+Ry8DA1N0bOJ+Mk5rasFDwlH673bQglY4S+GNakDiYFPO8X1yMW1no5dE6scF
	 9KoMVhjRWa4yCoASpuvTiVqJsCiXk3JihffGR5h9OiDv5n+darewA3hJEB1xtCJ67m
	 ng8a4ejxgPCOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB3FECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172595795362.9434.13669366927113256919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5d5c92933bc022cca2043684e1786f41cff86f2e5efddd900b9ae2a97265cb
Date: Tue, 10 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725957953
