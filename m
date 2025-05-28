Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5720021FF44
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748471394; cv=none; b=WtaNWw8fayTwy6oTPT0KSpE4jGX8DWBefxguchChZRSLRvpXWu/xp/TZ3f8+p59N05zCbg7CN7VfiALWmRmr/ssE/I1cIv3qwOT6UK7zaofKMCUp0jlrV1J9MNl/+kxt8Hbjga4py91hM5BmvBj9Y51wL5eP2tQAkHMtGqW8HYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748471394; c=relaxed/simple;
	bh=aPfYSO3mFN/vPms4TC/lSJur83lyBG1OKBLI/sB+3aY=;
	h=To:Subject:From:Message-Id:Date; b=kydOzqmf6j5uqyDI7RTMrO5wBJevqEprCVfWTb4meXpGk0ZQBPAZEm3RBYvekkMe9aiYO8v1ej8Piuw9pixFldiHX04Cc3JHTtkieGwxIdqKOZPhlynfdcl14KpWdp0+B3CbkLyTawzlg6GzGhTk+nBkr3uT4ip1C/oSJTophW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXSlEMaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXSlEMaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1FFC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748471393;
	bh=aPfYSO3mFN/vPms4TC/lSJur83lyBG1OKBLI/sB+3aY=;
	h=To:Subject:From:Date:From;
	b=eXSlEMaG5ulSGapXAFhfJQMiLs4ed2FUZHXga/mRU2VIP+CVklO8WUQPMmNZoBUMv
	 gGwWuYEzwTXjemx2y9rJxcF2roXUwUxoYuyD42GJGZdlQr1W//ACOYQuS32d2Qxq06
	 ZOcLe+QGn3b8/dGv3qJyGUHsoa+MQcD9Jw4UrIzAhi8XRa1IUrm80wQ4WIxaxo8GgL
	 5e7Fmn7CnjhYjhnKIQx1/oU3Fdm5eRgTZA0uwjnOqgs1k0GIdLsLGnN1s1XSapS+cE
	 AGfk50oA0pIortnpRW7m+ZUZJnj6eZSYDzYPHwMOsyTC+APpauzH2A8xk22Z+hukZi
	 4XDs4rH+juflg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF7AC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847139357.12973.11687593821995087394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a41f296abe6ab68822fe191c9842bb3ed6a2344b9ef4d657f6cb9929238135
Date: Wed, 28 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748471393
