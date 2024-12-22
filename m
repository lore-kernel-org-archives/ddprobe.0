Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A718136352
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734870354; cv=none; b=hsI/WLuWopyksFoTSKbpxWZAXdwQFq5CtuUhLejXRRyOknew5UTD8FoK61P7/Bi9VQs5n+FqIjpDrVb36wNa6L0GunXLHOd1ASuZJVWM13qJbxHffj84JneICFjQxQLsYqc8gkH3EKvcAUVeyWw5xj9eb+EaG8BJebkW+q6L13Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734870354; c=relaxed/simple;
	bh=tme4GNC7VF9S1psjtl+Ush5WPoj55evQRKuBGKn1hWM=;
	h=To:Subject:From:Message-Id:Date; b=i036CVj/uTBDwDa3OsbRVmMkH83fcGKeU4a4kBAkWlRkWFVSxcmzsS+RvlP9HSQIHyvjAK7/lvuTjCX8tNwkzs9t30oFBCOK85f4nOFfr0ZtTcys4slJfVVDTBapW+xqNWTXElkTarTs7c+wXdKFM5Ya1GmNoDSPkLxCdW+clCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLlfmdKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLlfmdKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEBCC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734870353;
	bh=tme4GNC7VF9S1psjtl+Ush5WPoj55evQRKuBGKn1hWM=;
	h=To:Subject:From:Date:From;
	b=BLlfmdKRMa+T40w+UWDLnLVBd2FBGHpH/y36z0xkf249cnIbMPrJGOYMbuHo2xkRC
	 W2iO+Do1OuL+XU3O3zxnRRCJL7hzFvJw4W4fsxzcw5ZfBHh1J6dzyPoOpCfzcF2rgk
	 1dqRXel8p+YymIG3lFkTD31hwfTkTSGdQi1oSYPRcf2Z218ajKKxB3pjeScXAz2zQW
	 wUV74X3ICUXx3+l1mjK4YYP38V0CyGmjUM3odIfi3N9j/R1DjAuh/nY7EG/BZGVRxf
	 C2x5iAtpwj6BwRvqSFZsTR7pDbd1Xv6oJWN+L6S3qxKpulJ6iaRRjHCM3xbN3i71y0
	 lxIbW0AWhDqSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FDDE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173487035359.7578.15069465770225300872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4fcc941cbf87c58333dd86faccf5d425fe8b45409bb605998685d9ac0e2ebf
Date: Sun, 22 Dec 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734870353
