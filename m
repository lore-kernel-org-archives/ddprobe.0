Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C056421F17
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779894154; cv=none; b=e0g0NvS/Y5SHHDQdZ0dKU0NPAVCC2FU0TYTdaUO4j9y6ATsOxa/Hf3xZVCZgz/QbbEKmDXWyT7K26XBS+RV6VZzpDvn9agld9DKQ9ha1ErVOYUiq70ZDZfpoiqIeWWzU5BQ/XIWAvsq4xe0mCnMf4z/4n9CvyJ5z/KTtVERYRpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779894154; c=relaxed/simple;
	bh=lgijrFftQ0b7v9bg890aRuH137/Z+3XvY8QS0hZ4b5s=;
	h=To:Subject:From:Message-Id:Date; b=u1pDGLE9PERDRSilG/wdePCpQD3294hR+i9jL00Mc+a8ToItq/q0yrGKdRczpBqqyOYJAFgAUW3G620ZvnlNkNlubwN+p0kGS1jKmUQi9QWUmg79542PrHi5NpByA2FRrffjk3v7EN7XEe5RdnN1b7DGpdnr1a5W0vL8caFsawc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaKABily; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaKABily"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0905C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779894153;
	bh=lgijrFftQ0b7v9bg890aRuH137/Z+3XvY8QS0hZ4b5s=;
	h=To:Subject:From:Date:From;
	b=YaKABilyF43Rb4UUi+GL5uR+o2P9JkJ6Ox9oq2ZNg9weuKqMCV/v9MYIQknIUJh0Z
	 H0Ax2eXBSGD5Q6GFG/7MXPoVvR11oUa63FEGcDeeGjU328LiS0gps1VbvK7LAvqiE3
	 l3Bs2BweOT0O3OXJGsTgNcJsIFPXSFCcYVLm0LD+tCiyPbeD/5zPVC9k8U7fW4EGU8
	 1/Bo39fMezCyf4Yx3SJfdW3DeALJlhbi6FpVbLfAqDhFrfIl3vcJ5ie7w7PDCexZp7
	 0B+4Aa739sbafPedSNhoODM9u68oiTUsMLQ/323okJBm0wcxSKDMPPNLQynOvX6RhK
	 VPQVS8YIzO8Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B35CD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989415377.31817.12633491401126708746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3757d74f7643b0315a725cf7b1948c8dcfa37389386fc48bffa449a4bf6868de
Date: Wed, 27 May 2026 15:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779894153
